/*!
@file
Opdracht 5 DSB practicum. Werk deze opdracht verder uit aan de hand van het kommentaar.
@version $Rev: 313 $
@author $Author: ewout $

@copyright Copyright 2006-2020 ir drs E.J Boks, Hogeschool van Arnhem en Nijmegen. https://ese.han.nl/~ewout

$URL: https://ese.han.nl/svn/dsbpracticum/trunk/2022/software/opdracht5/STUDENT/student.cpp $
$Id: student.cpp 313 2023-01-30 13:54:35Z ewout $
************************************************************************/

#ifndef OnderwijsOntwikkeling
#if defined(InterfaceTaalNederlands)
/* Verwijder dit directief na het invullen van de naam en het studentnummer hieronder. */
//#error  "Student naam en nummer moeten beneden in de velden worden ingevuld."
#elif defined (InterfaceTaalEnglish)
/* Remove this directive after filling out name and student number below. */
#error  "Student name and number must be entered into the fields below."
#endif
#endif

/********  Naam/name     :   Niels Urgert            ******/
/********  Studentnummer :   1654746            ******/

#include <student.h>
#include <firfilterexport.h>   /* Dit MOET aanwezig zijn in de map / this MUST be present in the directory.  */
#include <RTT/SEGGER_RTT.h>
#include <stdTaak.h>

void STM32FilterApp::runFilter()
{
    //ADCData sampleData;

    /* Werk deze funktie verder uit om er voor te zorgen dat :
        - De bemonstering frequentie van de ADC zodanig ingesteld wordt dat aan de opdrachteisen is voldaan.
        - De ADC start en dat de DA converter ook opgestart is.
        - Gewacht wordt tot een sample ingelezen is.
        - Het sample uit de ADC wordt opgehaald en wordt ingeladen in het filter.
        - Het filter een waarde teruggeeft, welke vervolgens in de DA converter wordt ingeladen.*/

    // Set the sampling frequency of the ADC 16,38MHz / 2 / 4 / 521 = 4KHz
    //ads131a02.start(ADS131A02::ICLK::ICLK4, ADS131A02::FMOD::FMOD2, ADS131A02::ODR::ODR512);
    ads131a02.zetSampFreq(ADS131A02::ICLK::ICLK8, ADS131A02::FMOD::FMOD8, ADS131A02::ODR::ODR64); // zet sample frequentie
    ads131a02.start();

    // Start the ADC and DAC
    max5136.start(DSB_DAC_Channel);

    while (true) {
        // Wait until a sample is read
        ads131a02.wachtOpDataReady();

        // Read the sample from the ADC
        ads131a02.laadConversieData();

        // Load the sample into the filter
        auto filterInvoer = (ads131a02[DSB_ADC_Channel] >>8); //Invoer is 24 bits, alleen 16 bits gebruiken. 8 bits verwijderen.
        auto spanningshift = static_cast<Int16>(filterInvoer);
        auto filterWaarde = filter.filter(spanningshift); // laad spanning door firfilter
        //const auto filterWaarde = filter.filter(filterInvoer) + 0x7FFF;

        if(filterWaarde < minWaarde){
            minWaarde = filterWaarde;
        }
        filterWaarde -= minWaarde;

        auto DACspanning= max5136.dacSpanning(filterWaarde);

        // Load the filtered sample into the DAC
        max5136.zetKanaal(DSB_DAC_Channel, DACspanning);
    }

    /* Hier mag de uitvoering niet komen! / execution should not reach this point! */
    StopHier();
}

void STM32FilterApp::runGUITest()
{
	/*! @note Configureer deze waarden om de juiste simulatie te krijgen, if necessary. De standaardwaarden zijn geschikt voor
	 * simulatie van de opdracht 4 filterexport.
	 * Configure these values to obtain the right simulation, if necessary. The default values are suitable for simulation
	 * of  assignment 4 filter export. */
	static constexpr auto sampFreq = 4000.0f; /* Hz */
	static constexpr auto beginSweep= 100.0f; /* Hz */
	static constexpr auto endSweep = 1000.0f; /* Hz */
	static constexpr auto sweepIncr = 100.0f; /* Hz */
	static constexpr auto sweepNumber = 2*AantalTaps;  /* samples /sweep */

	auto n = 0;
	auto freq = beginSweep;
	do
	{
		const auto omega = (TweePI * freq) / sampFreq;
		const auto arg = omega*n;
		const auto sigValue = cosf(arg);

		const auto guiInvoerWaarde = static_cast<Int16>(signaalAmplitude*sigValue);

		GRAPH_DATA_YT_AddValue(invoerDataHandle, guiInvoerWaarde);

		/* filter data */
		const auto dacAmplitude = SchaalFaktor*2;
		const auto filterInvoer = static_cast<Int16>(dacAmplitude*sigValue);
		const auto filterwaarde = filter.filter(filterInvoer);
		const auto filterGUIWaarde = (grafiekGrootte*filterwaarde)/(4*dacAmplitude);
		const auto guiFilterWaarde = static_cast<Int16>(filterGUIWaarde);
		GRAPH_DATA_YT_AddValue(filterDataHandle, guiFilterWaarde);

		sprintf(tekstbuffer,"x[%d] = %d y[%d] = %d\n",n,filterInvoer,n,filterwaarde);
		SEGGER_RTT_WriteString(0,tekstbuffer);


		if (++n == sweepNumber)
		{
			n = 0;

			freq += sweepIncr;
			if (freq > endSweep)
				freq = beginSweep;
		}
		GUI_Exec();

	} while (true);

}

/***************************** Beste studenten, hieronder niets veranderen             **********************/
/***************************** Dear students, do noit change anytrhing below this line **********************/

STM32FilterApp::STM32FilterApp(): ESEBoardController(96),
                                   coeffsBuffer(AantalTaps,
                                                filterFixedCoeffs),
                                   filter(coeffsBuffer,filterInputBuffer,
                                          SchaalFaktor)
{
	/* Laat onderstaande statements zoals zij zijn /
	 * Leave following statements untouched. */
	schakelSysTick(Schakelaar::Uit);
	selekteerInput(STM32BoardController::DSBSignaalSelektor::BNCSignaal);
	selekteerADCAntiAlias(STM32BoardController::AntiAliasCtrl::AA5kHz);
	selekteerDACAntiAlias(STM32BoardController::AntiAliasCtrl::AA5kHz);

	__HAL_RCC_GPIOA_CLK_ENABLE();

	/* gebruik pin F11 om sampfrek te testen. */
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.Pin = GPIO_PIN_10;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
}

 void STM32FilterApp::hoofdlus(const Schakelaar metSkoop)
{
	if (Schakelaar::Uit == (useScope = metSkoop))
	{
		GUI_Clear();

#ifdef InterfaceTaalNederlands
		static const char *melding1 = "Start van filter applikatie";
		static const char *melding2 = "Bekijk de externe oscilloscoop";
		SEGGER_RTT_WriteString(0, "Start van filter applikatie.\n");
		SEGGER_RTT_WriteString(0, "Gebruik Segger RTT om het filtergedrag te debuggen, indien nodig.\n");
#else
		static const char *melding1 = "Start of filter application.";
		static const char *melding2 = "Watch the ext oscilloscope";
		SEGGER_RTT_WriteString(0,"Start of the filter application.\n");
		SEGGER_RTT_WriteString(0,"Use Segger RTT to debug the filter performance, if required.\n");
#endif
		GUI_DispStringHCenterAt(melding1,120,80);
		GUI_DispStringHCenterAt(melding2,120,110);
		runFilter();
	}
	else
	{
		initGrafiekGUI(GUIMaxDataLengte);
#ifdef InterfaceTaalNederlands
		SEGGER_RTT_WriteString(0, "Start van filter test applikatie.\n");
		SEGGER_RTT_WriteString(0, "Gebruik Segger RTT om het filtergedrag te debuggen, indien nodig.\n");
#else
		SEGGER_RTT_WriteString(0,"Start of the filter test application.\n");
		SEGGER_RTT_WriteString(0,"Use Segger RTT to debug the filter performance, if required.\n");
#endif
		runGUITest();
	}
}


Schakelaar STM32FilterApp::geefBKUPGebruikGUISkoopKeuze()
{
	const auto stand = static_cast<Schakelaar>(backupGeheugenLezen(GebruikLCDBKUPVeld));
	return(stand);
}

void STM32FilterApp::zetBKUPGebruikLCDKeuze(const Schakelaar stand)
{
	const auto s = static_cast<UInt32>(stand);
	backupGeheugenOpslaan(GebruikLCDBKUPVeld,s);
}
void STM32FilterApp::initGrafiekGUI(const UInt32 aantalMeetPunten)
{
	if (WM_HWIN_NULL != grafiek)
		WM_ShowWindow(grafiek);
	else
	{
		grafiek = GRAPH_CreateEx(0, 0, grafiekGrootte, grafiekGrootte,
		                         WM_HBKWIN, WM_CF_SHOW, 0, GUI_ID_GRAPH0);

		GRAPH_SetColor(grafiek,GUI_WHITE,GRAPH_CI_BK);
		GRAPH_SetColor(grafiek,GUI_GRAY,GRAPH_CI_BORDER);
		GRAPH_SetColor(grafiek,GUI_DARKGRAY,GRAPH_CI_GRID);

		GRAPH_SetGridVis(grafiek,1);

		invoerDataHandle = GRAPH_DATA_YT_Create(GUI_BLUE, GUIMaxDataLengte, guiInvoerData, aantalMeetPunten);
		filterDataHandle = GRAPH_DATA_YT_Create(GUI_DARKGREEN, GUIMaxDataLengte, guiProcesData, aantalMeetPunten);

		constexpr int offsets[] = { 60,180 };
		auto index = 0;
		for (auto &handle : { invoerDataHandle,filterDataHandle})
		{
			GRAPH_AttachData(grafiek, handle);
			const auto os = offsets[index++];
			GRAPH_DATA_YT_SetOffY(handle, os);
		}

		guiSchaal = GRAPH_SCALE_Create(20, GUI_TA_RIGHT, GRAPH_SCALE_CF_VERTICAL, 20);
		static constexpr auto ySchaalFaktor = 1.0f; //5.0f/grafiekGrootte;
		GRAPH_SCALE_SetFactor(guiSchaal,ySchaalFaktor);
		GRAPH_AttachScale(grafiek, guiSchaal);
		GRAPH_SetBorder(grafiek,20,0,0,0);
	}
}

