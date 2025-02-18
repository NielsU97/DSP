﻿ /*!
@file

Opdracht 3 DSB practicum. Werk deze opdracht verder uit aan de hand van het kommentaar.
Assignment 3 DSB practical. Elaborate this assignment on the basis of the comments.

@version $Rev: 322 $
@author $Author: ewout $

@copyright Copyright 2006-2022 ir drs E.J Boks, Hogeschool van Arnhem en Nijmegen. https://ese.han.nl

$URL: https://ese.han.nl/svn/dsbpracticum/branches/2022/software/opdracht3/STUDENT/signaal.cpp $
$Id: signaal.cpp 322 2023-03-17 09:32:30Z ewout $
************************************************************************/

// -*- C++ -*- generated by wxGlade 0.4 on Fri Feb 16 10:31:09 2007
// -*- C++ -*- generated by wxGlade 0.6.3 on Sun Feb  1 15:31:48 2009

#include <desktopApp.h>
#include <grafiekVenster.h>

#include "signaal.h"

#include <wx/filename.h>
#include <wx/wfstream.h>
#include <wx/txtstrm.h>

#include <dsbComplex.h>
#include <dsbComplexBasis.h>

#ifndef OnderwijsOntwikkeling
#if defined(InterfaceTaalNederlands)
/* Verwijder dit directief na het invullen van de naam en het studentnummer hieronder. */
#elif defined (InterfaceTaalEnglish)
/* Remove this directive after filling out name and student number below. */
#error  "Student name and number must be entered into the fields below."
#endif
#endif

/********  Naam/name     : Niels Urgert              ******/
/********  Studentnummer : 1654746              ******/

/* Dit is de functie die wordt aangeroepen wanneer de knop Tekenen wordt ingedrukt. Vul alle ontbrekende stukken in.
* This is the function that is called when the draw button is depressed. Fill in all void parts.  */
void SignaalVenster::tekenReeksHandler(wxCommandEvent &event)
{
	const UInt32 aantalSampPerPeriod = sampFreq / sigFreq;

	venster_statusbar->SetStatusText(_("FFTW start of calcation"));

	if (false == (aantalSampPerPeriod >1))
            wxLogError(_("The signal could not be sampled, because")+wxT(" \n")+
		           wxString::Format(_("the number of samples per period=%d"), aantalSampPerPeriod));
	else
	{
		PuntLijst punten; /* wxArray van wxPoints */

		if (SignaalType::DataBestand != signalChoice)
		{
			/* amplitude of the signal that must be generated, please use this value. */
			static constexpr auto amplitude = StandaardSignaalAmplitude;
			auto normHoek = 0.0;
			UInt32 stap = 0;
			signaal.Clear();


#if defined(InterfaceTaalNederlands)
			const auto hoekFreq = 2.0 * Pi*sigFreq / sampFreq;
			for (auto hoek = 0.0; hoek< 2 *Pi* aantalPerioden; hoek += hoekFreq)
#else
			const auto angularFreq = 2.0 * Pi*sigFreq / sampFreq;
			for (auto angle = 0.0; angle< 2 *Pi* aantalPerioden; angle += angularFreq)
#endif
			{
				/* English speakers : use this translation */
		
				auto signalValue = 0.0f;

				/* Evalueer het signaaltype en vul het juiste signaalformulier in.  Gebruik amplitude */
				/* Evaluate the signal type and fill in the appropriate signal form */

				switch (signalChoice)
				{
					/* STUDENT CODE*/
					/////////////////
					case SignaalType::Cosinus: 
						signalValue = amplitude * cos(hoek);
						break;
					case SignaalType::Driehoek:
						normHoek = fmod(hoek, 2 * Pi); //  fase = hoek / (2.0 * M_PI) 
						//signalValue = amplitude * (2.0 / Pi) * asin(sin(hoek));			
						signalValue = amplitude * (1.0 - fabs(1.0 - normHoek / Pi)) * 2.0 - amplitude;
						
						/*
						if (normHoek < M_PI / 2) {
						signalValue = ((fmod(hoek, 2 * Pi)) / (M_PI / 2)) * amplitude;  // Stijgend van 0 → 1
						}
						else if (normHoek < 3 * M_PI / 2) {
							signalValue = (2.0 - (normHoek / (M_PI / 2))) * amplitude;  // Dalend van 1 → -1
						}
						else {
							signalValue = ((normHoek - 2 * M_PI) / (M_PI / 2)) * amplitude;  // Stijgend van -1 → 0
						}*/
						break;
					case SignaalType::Blokgolf: 
						signalValue = amplitude * ((sin(hoek) >= 0.0) ? 1.0 : -1.0);	// Formule klopt voor het genereren van een square wave
						break;
					/* END STUDENT CODE*/
					/////////////////////
					case SignaalType::DataBestand:
						signalValue = -1.234f;
						wxFAIL_MSG(_("Not allowed."));
						break;

					default:
						wxFAIL_MSG(wxString::Format(_("(SignaalVenster::tekenReeksHandler) Wrong signal choice (%ld)."),
						                            static_cast<UInt32>(signalChoice)));
						return;
						break;
				}
				signaal.Add(signalValue);
				punten.Add(wxPoint(stap++, static_cast<int>(signalValue)));
			}
			signaal.Shrink();
		}
		else
		{
			if (0 == signaal.GetCount())
			{
				wxLogError(_("No valid data present in the file!"));
				return;
			}
			else
			{
				for (auto i = 0; i<signaal.GetCount(); i++)
					punten.Add(wxPoint(i, static_cast<int>(100 * signaal[i])));

			}
		}

		wxLogDebug(_("Number of values=%d"), static_cast<UInt32>(signaal.GetCount()));

		/*  veeg tijddomein schoon.
		 *  wipe clean the time domain.  */
		signaalGrafiek->maakSchoon();
		/* teken het tijddomeinbeeld met gebruik van autoschaling.
		 * draw the time domain image using auto scaling. */
		signaalGrafiek->tekenStaven(punten, true);

		/* Nederlands :  Voeg hier de code toe om de FFT uit te rekenen en het frequentiebeeld in fftwGrafiek te tekenen.
		 * tips :
		 * 1) gebruik het r2c plan en de FFTW_PRESERVE_INPUT+FFTW_ESTIMATE vlaggen bij de berekening.
		 * 2) gebruik de Complex en Polair klassen uit opdracht 1.
		 * 3) Bij de faseberekening, forceer de fase naar nul als de grootte van het complexe getal < faseToonGrens (zie de constructor van deze klasse) .
		 * 4) voor info over de uitlezing van de checkboxes voor amplitude en fase , zie http://docs.wxwidgets.org/3.0/classwx_check_box.html */

		/* STUDENT CODE*/
		/////////////////
		// Memory allocation
		double* input = (double*)fftw_malloc(signaal.GetCount() * sizeof(double));
		fftw_complex* output = (fftw_complex*)fftw_malloc((signaal.GetCount() * sizeof(fftw_complex)) / 2 + 1);

		// Input kopieren naar FFTW array
		for (int i = 0; i < signaal.GetCount(); i++) {
			input[i] = signaal.Item(i);
		}

		// FFTW plan uitvoeren
		fftw_plan p = fftw_plan_dft_r2c_1d(signaal.GetCount(), input, output, FFTW_ESTIMATE);
		fftw_execute(p);
				
		// Amplitude en fase punten
		PuntLijst AmplitudePunten, FasePunten;

		// Voeg de positieve frequentie punten toe
		for (int i = 0; i < signaal.GetCount() / 2 + 1; i++) {
			Complex SigComplex(output[i][0], output[i][1]);
			PolairGetal SigPolair(SigComplex);
			double magnitude = SigPolair.Mag();					// Amplitude
			double argument = SigPolair.Arg() * (180.0 / M_PI);	// Fase (graden naar radialen)

			AmplitudePunten.Add(wxPoint(i, magnitude));
			if (magnitude > faseToonGrens) {
				FasePunten.Add(wxPoint(i, argument));
			}
			else {
				FasePunten.Add(wxPoint(i, 0));
			}
		}

		// Voeg de negatieve frequentie punten toe
		for (int i = 1; i < signaal.GetCount() / 2 + 1; i++) {
			AmplitudePunten.Add(wxPoint(-i, AmplitudePunten[i].y));
			FasePunten.Add(wxPoint(-i, FasePunten[i].y));
		}

		// Opruimen
		fftw_destroy_plan(p);
		fftw_free(input);
		fftw_free(output);

		/* Grafieken tekenen*/
		// Instellingen
		fftwGrafiek->maakSchoon();
		fftwGrafiek->zetTekenPen(wxPen(wxColour(wxT("BLACK")), 2, wxSOLID));
		fftwGrafiek->tekenAssenstelsel();

		// Conditie voor tekenen van amplitude en fase
		if (ampCheckBox->GetValue()) {
			fftwGrafiek->zetTekenPen(wxPen(wxColour(wxT("GREEN")), 2, wxSOLID));
			fftwGrafiek->tekenStaven(AmplitudePunten, true);
		}

		if (faseCheckBox->GetValue()) {
			fftwGrafiek->zetTekenPen(wxPen(wxColour(wxT("RED")), 2, wxSOLID));
			fftwGrafiek->tekenStaven(FasePunten, true);
		}
		/* END STUDENT CODE*/
		/////////////////////

		venster_statusbar->SetStatusText(_("Frequency image was constructed."));
	}
}

/*********** Geachte studenten , hieronder NIETS veranderen.              ******/
/*********** Honoured students, do NOT alter ANYTHING below this line.    ******/

SignaalVenster::SignaalVenster(DesktopApp &appRef,
                               int id,
                               const wxString& title,
                               const wxPoint& pos,
                               const wxSize& size,
                               long style) : wxFrame(nullptr,
                                                     id,
                                                     title,
                                                     pos,
                                                     size,
                                                     (wxDEFAULT_DIALOG_STYLE|wxMINIMIZE_BOX|wxMAXIMIZE_BOX|
                                                      wxSYSTEM_MENU| wxRESIZE_BORDER | wxCAPTION|
                                                      wxFULL_REPAINT_ON_RESIZE)),
                                             app(appRef),
                                             signaalConfig(app.geefAppConfig()),    /* verkrijg de globale config pointer */
                                             DemoTekst(
#ifndef OnderwijsOntwikkeling
		                                             _("Developer")+wxT(": ")+wxT(GebruikerNaam)),
#else
		                                             _("Demo version")),
#endif
											  signaalPen(wxPen(wxColour(wxT("BLUE")), 2, wxPENSTYLE_SOLID)),
                                             ampPen(wxPen(wxColour(wxT("GREEN")), 2, wxPENSTYLE_SOLID)),
                                             fasePen(wxPen(wxColour(wxT("RED")), 2, wxPENSTYLE_SOLID)),
                                             assenPen(wxPen(wxColour(wxT("BLACK")), 1, wxPENSTYLE_DOT_DASH))
{
    // begin wxGlade: SignaalVenster::SignaalVenster
    hoofdPaneel = new wxPanel(this, wxID_ANY);
    tijdPaneel = new wxScrolledWindow(hoofdPaneel, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxBORDER_RAISED|wxTAB_TRAVERSAL);
    freqPaneel = new wxScrolledWindow(hoofdPaneel, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    venster_menubar = new wxMenuBar();
    wxMenu *wxglade_tmp_menu;
    wxglade_tmp_menu = new wxMenu();
    wxglade_tmp_menu->Append(wxID_ABOUT, _("&About"), wxEmptyString);
    Bind(wxEVT_MENU, &SignaalVenster::aboutHandler, this, wxID_ABOUT);
    wxglade_tmp_menu->Append(TekenGrafiekID, _("&Execute FFT\tCtrl+T"), wxEmptyString);
    Bind(wxEVT_MENU, &SignaalVenster::tekenReeksHandler, this, TekenGrafiekID);
    wxglade_tmp_menu->Append(ExportTijdID, _("Export the time domain image\tCtrl+R"), wxEmptyString);
    Bind(wxEVT_MENU, &SignaalVenster::slaOpTijdBeeldHandler, this, ExportTijdID);
    wxglade_tmp_menu->Append(ExportFreqID, _("Export the frequency domain image\tCtrl+E"), wxEmptyString);
    Bind(wxEVT_MENU, &SignaalVenster::slaOpFreqBeeldHandler, this, ExportFreqID);
    wxglade_tmp_menu->Append(wxID_EXIT, _("Quit\tCtrl+Q"), wxEmptyString);
    Bind(wxEVT_MENU, &SignaalVenster::eindeHandler, this, wxID_EXIT);
    venster_menubar->Append(wxglade_tmp_menu, _("Bestand"));
    SetMenuBar(venster_menubar);
    venster_statusbar = CreateStatusBar(1);
    fftwGrafiek = new DynamischGrafiekVenster(freqPaneel, wxID_ANY, wxSize(GrafiekBreedte,GrafiekHoogte));
    static_line_1 = new wxStaticLine(hoofdPaneel, wxID_ANY);
    signaalGrafiek = new DynamischGrafiekVenster(tijdPaneel, wxID_ANY, wxSize(GrafiekBreedte,GrafiekHoogte));
    signaalFrequentieLabel = new wxStaticText(hoofdPaneel, wxID_ANY, _("Signal frequency"));
    sigFreqCtrl = new wxSpinCtrl(hoofdPaneel, SignaalFrequentieID, wxT("40"), wxDefaultPosition, wxDefaultSize, 0, 1, 1000);
    static_line_2 = new wxStaticLine(hoofdPaneel, wxID_ANY);
    sampleFreqLabel = new wxStaticText(hoofdPaneel, wxID_ANY, _("Sampling frequency"));
    sampFreqCtrl = new wxSpinCtrl(hoofdPaneel, SampleFreqID, wxT("250"), wxDefaultPosition, wxDefaultSize, wxSP_WRAP, 1, 10000);
    const wxString signaalKeuze_choices[] = {
        _("Cosine"),
        _("Triangle"),
        _("Square"),
        _("Data from file"),
    };
    signaalKeuze = new wxChoice(hoofdPaneel, SignaalKeuzeID, wxDefaultPosition, wxDefaultSize, 4, signaalKeuze_choices);
    aantalPeriodenLabel = new wxStaticText(hoofdPaneel, wxID_ANY, _("Number of periods:"));
    aantalPeriodenCtrl = new wxSpinCtrl(hoofdPaneel, AantalPeriodenID, wxT("3"), wxDefaultPosition, wxDefaultSize, 0, 1, 10);
    ampCheckBox = new wxCheckBox(hoofdPaneel, TekenAmpID, _("Show amplitude"));
    faseCheckBox = new wxCheckBox(hoofdPaneel, TekenFaseID, _("Show phase"));
    dumpFreqDomeinCheckBox = new wxCheckBox(hoofdPaneel, DumpFreqDomeinID, _("Dump FFT values"));
    tekenButton = new wxButton(hoofdPaneel, TekenGrafiekID, _("Execute Fast Fourier Transform"));
    eindeKnop = new wxButton(hoofdPaneel, wxID_EXIT, wxEmptyString);

    set_properties();
    do_layout();
    // end wxGlade
	
    
	//    const wxSize fftwGrootte = fftwGrafiek->geefTekenVeldGrootte();
	const wxSize sigGrootte = signaalGrafiek->geefTekenVeldGrootte();

	fftwGrafiek->zetOorsprongMidden();
	fftwGrafiek->zetGroteTekst(DemoTekst,wxPoint(-375,sigGrootte.GetHeight()/2));

	signaalGrafiek->zetTekenPen(signaalPen);
	signaalGrafiek->zetOorsprong(wxPoint(0,sigGrootte.GetHeight()/2));

	signaalGrafiek->zetGroteTekst(DemoTekst,wxPoint(25,sigGrootte.GetHeight()/2));

	
	signaalConfig->SetPath(wxT("/Configuratie/Signaal"));

	int leeswaarde;
	signaalConfig->Read(wxT("Sampling_Frequentie"),&leeswaarde,240);
	sampFreq = leeswaarde;
	signaalConfig->Read(wxT("Signaal_Frequentie"),&leeswaarde,40);
	sigFreq = leeswaarde;
	signaalConfig->Read(wxT("AantalPerioden"),&leeswaarde,10);
	aantalPerioden = leeswaarde;
	signaalConfig->Read(wxT("SignaalKeuze"),&leeswaarde,0);
	signalChoice = static_cast<SignaalType>(leeswaarde);
	signaalKeuze->SetSelection(leeswaarde);

	signaalConfig->Read(wxT("DataPad"),&dataPad,wxGetHomeDir());

	signaalConfig->Read(wxT("DumpFFTKeuze"),&leeswaarde,0);
	dumpFreqDomeinCheckBox->SetValue((0==leeswaarde) ? false : true);

	sampFreqCtrl->SetValue(sampFreq);
	sigFreqCtrl->SetValue(sigFreq);
	aantalPeriodenCtrl->SetValue(aantalPerioden);


	bool vink;
	signaalConfig->Read(wxT("FaseTekenen"),&vink);
	faseCheckBox->SetValue(vink);

	signaalConfig->Read(wxT("AmplitudeTekenen"),&vink);
	ampCheckBox->SetValue(vink);
}


SignaalVenster::~SignaalVenster()
{
	wxGetApp().bewaarHoofdVensterGrootte();

	/* Initialiseer de configuratie */
	/* lees filter voorkeurswaarden in */
	signaalConfig->SetPath(wxT("/Configuratie/Signaal"));
	signaalConfig->Write(wxT("Sampling_Frequentie"),sampFreq);
	signaalConfig->Write(wxT("Signaal_Frequentie"),sigFreq);
	signaalConfig->Write(wxT("AantalPerioden"),aantalPerioden);
	signaalConfig->Write(wxT("SignaalKeuze"),static_cast<int>(signalChoice));
	signaalConfig->Write(wxT("DataPad"),dataPad);
	signaalConfig->Write(wxT("FaseTekenen"),faseCheckBox->IsChecked());
	signaalConfig->Write(wxT("AmplitudeTekenen"),ampCheckBox->IsChecked());

	signaalConfig->Write(wxT("DumpFFTKeuze"),dumpFreqDomeinCheckBox->IsChecked());
}

BEGIN_EVENT_TABLE(SignaalVenster, wxFrame)
    // begin wxGlade: SignaalVenster::event_table
    EVT_SPINCTRL(SignaalFrequentieID, SignaalVenster::freqHandler)
    EVT_SPINCTRL(SampleFreqID, SignaalVenster::sampFreqHandler)
    EVT_CHOICE(SignaalKeuzeID, SignaalVenster::sigKeuzeHandler)
    EVT_SPINCTRL(AantalPeriodenID, SignaalVenster::periodeHandler)
    EVT_BUTTON(TekenGrafiekID, SignaalVenster::tekenReeksHandler)
    EVT_BUTTON(wxID_EXIT, SignaalVenster::eindeHandler)
    // end wxGlade

				EVT_TEXT(SignaalFrequentieID, SignaalVenster::freqTextHandler)
				EVT_TEXT(SampleFreqID, SignaalVenster::sampFreqTextHandler)

				EVT_UPDATE_UI(TekenGrafiekID, SignaalVenster::magTekenenHandler )
				EVT_UPDATE_UI(SampleFreqID, SignaalVenster::dataBestandGebruiktHandler )
				EVT_UPDATE_UI(SignaalFrequentieID, SignaalVenster::dataBestandGebruiktHandler )
				EVT_UPDATE_UI(AantalPeriodenID, SignaalVenster::dataBestandGebruiktHandler )


END_EVENT_TABLE();

void SignaalVenster::eindeHandler(wxCommandEvent &event)
{
	Close();
}

void SignaalVenster::magTekenenHandler(wxUpdateUIEvent &event)
{
	auto ampCheck = (wxCheckBox *)FindWindowById(TekenAmpID,this);
	auto faseCheck = (wxCheckBox *)FindWindowById(TekenFaseID,this);

	const bool erWordtGetekend = ((true==ampCheck->IsChecked()) || (true==faseCheck->IsChecked()));
	event.Enable((true==erWordtGetekend) && ((SignaalType::DataBestand != signalChoice) || (0 != signaal.GetCount())));
}

void SignaalVenster::dataBestandGebruiktHandler(wxUpdateUIEvent &event)
{
	event.Enable((SignaalType::DataBestand != signalChoice));
}

void SignaalVenster::periodeHandler(wxSpinEvent &event) // wxGlade: <event_handler>
{
	wxSpinCtrl const * const aantalCtrl = (wxSpinCtrl *)FindWindowById(AantalPeriodenID,this);

	aantalPerioden = static_cast<UInt32 >(aantalCtrl->GetValue());
}

void SignaalVenster::sampFreqHandler(wxSpinEvent &event) // wxGlade: <event_handler>
{
	wxSpinCtrl const * const sampCtrl = (wxSpinCtrl *)FindWindowById(SampleFreqID,this);

	sampFreq = static_cast<UInt32 >(sampCtrl->GetValue());

}

void SignaalVenster::sampFreqTextHandler(wxCommandEvent &event)
{
	wxSpinCtrl const * const sampCtrl = (wxSpinCtrl *)FindWindowById(SampleFreqID,this);

	sampFreq = static_cast<UInt32 >(sampCtrl->GetValue());

}


void SignaalVenster::freqHandler(wxSpinEvent &event) // wxGlade: <event_handler>
{
	wxSpinCtrl const * const sigCtrl = (wxSpinCtrl *)FindWindowById(SignaalFrequentieID,this);

	sigFreq = static_cast<UInt32 >(sigCtrl->GetValue());

}

void SignaalVenster::freqTextHandler(wxCommandEvent &event)
{
	wxSpinCtrl const * const sigCtrl = (wxSpinCtrl *)FindWindowById(SignaalFrequentieID,this);

	sigFreq = static_cast<UInt32 >(sigCtrl->GetValue());

}

void SignaalVenster::aboutHandler(wxCommandEvent &event)
{
	wxGetApp().geefCopyright(_("Assignment 3 DSB Practicum"),
	                         _("Employ the FFTW library for generating a frequency plot."));

}

// wxGlade: add SignaalVenster event handlers
void SignaalVenster::sigKeuzeHandler(wxCommandEvent &event)
{
	wxChoice const * const keuze = (wxChoice *)FindWindowById(SignaalKeuzeID,this);
	
	signalChoice = static_cast<SignaalType>(keuze->GetSelection());

	if (SignaalType::DataBestand == signalChoice)
	{
		wxFileName bestand(dataPad);
		wxFileDialog dialoog(this,
		                     _("Open a data file with the signal values in float format)"),
		                     bestand.GetPath(),
		                     bestand.GetFullName(),
		                     _("All files (*.*)|*.*"));


		if (wxID_OK == dialoog.ShowModal())
		{
			bestand = wxFileName(dataPad = dialoog.GetPath());

			const wxString naam(dialoog.GetPath());
			wxFileInputStream dataStroom(bestand.GetFullPath());

			if (true != dataStroom.IsOk())
			{
				const wxString fout(_("Could not open:") + bestand.GetFullName());
				wxLogError(fout);
			}
			else
			{
				wxTextInputStream stroom(dataStroom);
				/* maak de array leeg */
				signaal.Empty();

				wxString getal(stroom.ReadLine());

				/* lees de stroom uit en converteer naar double */
				while (getal != wxEmptyString)
				{
					double waarde;
					//wxLogDebug(wxT("getal=")+getal);
					if (false == getal.ToDouble(&waarde))
					{
						/* vervang door , door .  */

						/* mogelijk locale waar komma wordt verwacht */
						/* vervang in de gehele string */
						getal.Replace(wxT(","),wxT("."),true);
						if (false == getal.ToDouble(&waarde))
						{
							wxLogError(_("Error reading the float data."));
							signaal.Clear();
							return;
						}
					}
					//   wxLogDebug(wxString::Format(wxT("waarde = %lf"),waarde));
					signaal.Add(waarde);

					getal = stroom.ReadLine();
				}

				signaal.Shrink(); /* geef all niet gebruikte geheugen terug */

			}
		}
	}

	//wxLogDebug(wxString::Format(wxT("signalChoice = %ld."),signalChoice));
}

void SignaalVenster::slaOpTijdBeeldHandler(wxCommandEvent &event)
{
	signaalGrafiek->slaOpVeld();
}

void SignaalVenster::slaOpFreqBeeldHandler(wxCommandEvent &event)
{
	fftwGrafiek->slaOpVeld();
}

void SignaalVenster::set_properties()
{

    // begin wxGlade: SignaalVenster::set_properties
    SetTitle(_("Signal sampling and frequency image"));
    SetFont(wxFont(14, wxFONTFAMILY_DECORATIVE, wxFONTSTYLE_NORMAL, wxFONTWEIGHT_NORMAL, 0, wxT("Helvetica")));
    int venster_statusbar_widths[] = { -1 };
    venster_statusbar->SetStatusWidths(1, venster_statusbar_widths);
    
    // statusbar fields
    const wxString venster_statusbar_fields[] = {
        _("FFTW Status : unknown"),
    };
    for(int i = 0; i < venster_statusbar->GetFieldsCount(); ++i) {
        venster_statusbar->SetStatusText(venster_statusbar_fields[i], i);
    }
    fftwGrafiek->SetMinSize(wxSize(800, 200));
    freqPaneel->SetScrollRate(10, 10);
    signaalGrafiek->SetMinSize(wxSize(800, 200));
    tijdPaneel->SetScrollRate(10, 10);
    sigFreqCtrl->SetValue(StandaardFreq);
    sampFreqCtrl->SetValue(StandaardSampFreq);
    signaalKeuze->SetSelection(0);
    aantalPeriodenCtrl->SetValue(StandaardPerioden);
    ampCheckBox->SetValue(1);
    hoofdPaneel->SetBackgroundColour(wxColour(255, 50, 37));
    // end wxGlade
}


void SignaalVenster::do_layout()
{
    // begin wxGlade: SignaalVenster::do_layout
    wxBoxSizer* sizer_1 = new wxBoxSizer(wxHORIZONTAL);
    wxBoxSizer* grafiekenSizer = new wxBoxSizer(wxVERTICAL);
    wxBoxSizer* sizer_4 = new wxBoxSizer(wxHORIZONTAL);
    wxBoxSizer* sizer_2 = new wxBoxSizer(wxHORIZONTAL);
    wxStaticBoxSizer* sizer_3 = new wxStaticBoxSizer(new wxStaticBox(hoofdPaneel, wxID_ANY, _("Frequency plot features")), wxVERTICAL);
    wxStaticBoxSizer* sizer_5 = new wxStaticBoxSizer(new wxStaticBox(hoofdPaneel, wxID_ANY, _("Time domain properties")), wxVERTICAL);
    wxBoxSizer* sizer_3_copy_1 = new wxBoxSizer(wxHORIZONTAL);
    wxStaticBoxSizer* deelSizer = new wxStaticBoxSizer(new wxStaticBox(hoofdPaneel, wxID_ANY, _("Signal properties")), wxHORIZONTAL);
    wxBoxSizer* sizer_9 = new wxBoxSizer(wxVERTICAL);
    wxBoxSizer* sizer_8 = new wxBoxSizer(wxVERTICAL);
    wxBoxSizer* sizer_11 = new wxBoxSizer(wxVERTICAL);
    wxBoxSizer* sizer_10 = new wxBoxSizer(wxVERTICAL);
    sizer_10->Add(fftwGrafiek, 1, wxEXPAND, 0);
    freqPaneel->SetSizer(sizer_10);
    grafiekenSizer->Add(freqPaneel, 1, wxEXPAND, 0);
    grafiekenSizer->Add(static_line_1, 0, wxBOTTOM|wxEXPAND|wxTOP, 5);
    sizer_11->Add(signaalGrafiek, 1, wxEXPAND, 0);
    tijdPaneel->SetSizer(sizer_11);
    grafiekenSizer->Add(tijdPaneel, 1, wxEXPAND, 0);
    sizer_8->Add(signaalFrequentieLabel, 0, wxLEFT|wxTOP, 5);
    sizer_8->Add(sigFreqCtrl, 0, wxALL, 5);
    deelSizer->Add(sizer_8, 0, wxEXPAND, 0);
    deelSizer->Add(static_line_2, 0, wxEXPAND, 0);
    sizer_9->Add(sampleFreqLabel, 0, wxLEFT|wxTOP, 5);
    sizer_9->Add(sampFreqCtrl, 0, wxALL, 5);
    deelSizer->Add(sizer_9, 0, wxEXPAND, 0);
    sizer_2->Add(deelSizer, 0, wxEXPAND, 0);
    sizer_5->Add(signaalKeuze, 0, wxALL|wxEXPAND, 5);
    sizer_3_copy_1->Add(aantalPeriodenLabel, 0, wxALIGN_CENTER_VERTICAL|wxALL, 5);
    sizer_3_copy_1->Add(aantalPeriodenCtrl, 0, wxALIGN_CENTER_VERTICAL|wxALL, 5);
    sizer_5->Add(sizer_3_copy_1, 0, wxALL|wxEXPAND, 5);
    sizer_2->Add(sizer_5, 0, wxEXPAND, 0);
    sizer_3->Add(ampCheckBox, 0, wxALL|wxEXPAND, 5);
    sizer_3->Add(faseCheckBox, 0, wxALL|wxEXPAND, 5);
    sizer_2->Add(sizer_3, 0, wxEXPAND, 0);
    grafiekenSizer->Add(sizer_2, 0, wxEXPAND, 0);
    sizer_4->Add(dumpFreqDomeinCheckBox, 0, wxALIGN_CENTER_VERTICAL|wxALL, 5);
    sizer_4->Add(tekenButton, 1, wxALL|wxEXPAND, 10);
    sizer_4->Add(eindeKnop, 0, wxALL|wxEXPAND, 10);
    grafiekenSizer->Add(sizer_4, 0, wxEXPAND, 0);
    hoofdPaneel->SetSizer(grafiekenSizer);
    sizer_1->Add(hoofdPaneel, 1, wxEXPAND, 0);
    SetSizer(sizer_1);
    sizer_1->Fit(this);
    sizer_1->SetSizeHints(this);
    Layout();
    Centre();
    // end wxGlade
}


double SignaalVenster::berekendB(const double lineair)
{
	//	wxASSERT(lineair > 0 );
	const auto uit = 20 * log10(fabs(lineair));
	return(uit);
};


double SignaalVenster::berekenLineair(const double decibel)
{
	const auto uit = pow(10, decibel / 20.0);
	return(uit);
}



/************* Applicatie ( de "main()" van deze GUI applikatie) ******/

IMPLEMENT_APP(SignaalApp)

SignaalApp::SignaalApp() : DesktopApp(_("DSPESEL3"))
{

}

bool SignaalApp::OnInit()
{
	wxImage::AddHandler(new wxPNGHandler);

	auto * const venster = new SignaalVenster(*this,
	                                                    wxID_ANY,
	                                                    wxT("Voorbeeld van een signaal"));

	zetHoofdVenster(venster);

	venster->Show();

	return(true);

}
