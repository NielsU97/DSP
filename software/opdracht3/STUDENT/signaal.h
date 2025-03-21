// -*- C++ -*- generated by wxGlade 0.6.3 on Sun Feb  1 15:31:48 2009

/* $Id: signaal.h 322 2023-03-17 09:32:30Z ewout $                               */

/************ Opdracht 3 voor ESE DSB practicum                      ***************/
/************ Werk deze code verder uit volgens de opdracht                 ********/
/************ Copyright 2006-2022 Hogeschool van Arnhem en Nijmegen         ********/
/************ ir drs E.J Boks                                               ********/

#include <wx/wx.h>
#include <wx/image.h>
// begin wxGlade: ::dependencies
#include <wx/spinctrl.h>
#include <wx/statline.h>
// end wxGlade


#ifndef SIGNAAL_H
#define SIGNAAL_H


#include <fftw3.h>
#include <desktopApp.h>
#include <grafiekVenster.h>

#if defined (InterfaceTaalEnglish)
#define GrafiekVenster GraphicsWindow
#endif

// begin wxGlade: ::extracode
// end wxGlade

class SignaalVenster: public wxFrame {
public:
    // begin wxGlade: SignaalVenster::ids
    // end wxGlade

	SignaalVenster(DesktopApp&, int id, const wxString& title,
                const wxPoint& pos=wxDefaultPosition, const wxSize& size=wxDefaultSize,
                long style=wxDEFAULT_FRAME_STYLE);
	~SignaalVenster();

protected:
    // begin wxGlade: SignaalVenster::attributes
    wxMenuBar* venster_menubar;
    wxStatusBar* venster_statusbar;
    DynamischGrafiekVenster* fftwGrafiek;
    wxScrolledWindow* freqPaneel;
    wxStaticLine* static_line_1;
    DynamischGrafiekVenster* signaalGrafiek;
    wxScrolledWindow* tijdPaneel;
    wxStaticText* signaalFrequentieLabel;
    wxSpinCtrl* sigFreqCtrl;
    wxStaticLine* static_line_2;
    wxStaticText* sampleFreqLabel;
    wxSpinCtrl* sampFreqCtrl;
    wxChoice* signaalKeuze;
    wxStaticText* aantalPeriodenLabel;
    wxSpinCtrl* aantalPeriodenCtrl;
    wxCheckBox* ampCheckBox;
    wxCheckBox* faseCheckBox;
    wxCheckBox* dumpFreqDomeinCheckBox;
    wxButton* tekenButton;
    wxButton* eindeKnop;
    wxPanel* hoofdPaneel;
    // end wxGlade


	void tekenReeksHandler(wxCommandEvent &event); // wxGlade: <event_handler>

	void eindeHandler(wxCommandEvent &event); // wxGlade: <event_handler>
	void periodeHandler(wxSpinEvent &event); // wxGlade: <event_handler>
	void sampFreqHandler(wxSpinEvent &event); // wxGlade: <event_handler>
	void freqHandler(wxSpinEvent &event); // wxGlade: <event_handler>
	virtual void aboutHandler(wxCommandEvent &event); // wxGlade: <event_handler>
	virtual void sigKeuzeHandler(wxCommandEvent &event); // wxGlade: <event_handler>
	virtual void slaOpTijdBeeldHandler(wxCommandEvent &event); // wxGlade: <event_handler>
	virtual void slaOpFreqBeeldHandler(wxCommandEvent &event); // wxGlade: <event_handler>

	void sampFreqTextHandler(wxCommandEvent &event);
	void freqTextHandler(wxCommandEvent &event);
	void magTekenenHandler(wxUpdateUIEvent &);
	void dataBestandGebruiktHandler(wxUpdateUIEvent &);

DECLARE_EVENT_TABLE();

private:


	enum class SignaalType
	{
		Cosinus=0,
		Driehoek,
		Blokgolf,
		DataBestand
#if defined(InterfaceTaalEnglish)
		,Cosine = Cosinus,
		Triangle=Driehoek,
		SquareWave=Blokgolf,
		DataFile=DataBestand
#endif
	} ;

	typedef enum
	{
		SignaalVensterID=0,
		FFTWVensterID,
		AantalPeriodenLabelID,
		AantalPeriodenID,
		SampleFreqID,
		SignaalFrequentieLabelID,
		SignaalFrequentieID,
		SignaalKeuzeID,
		DumpFreqDomeinID,
		TekenAmpID,
		TekenFaseID,
		TekenGrafiekID,
		ExportTijdID,
		ExportFreqID
	} SignaalAppIDs;

    // begin wxGlade: SignaalVenster::methods
    void set_properties();
    void do_layout();
    // end wxGlade

	static double berekendB(const double lineair);
	
	static double berekenLineair(const double decibel);

	const double faseToonGrens = berekenLineair(-100);

	DesktopApp& app;

	UInt32 aantalPerioden=StandaardPerioden,sampFreq= StandaardSampFreq,sigFreq = StandaardFreq;
	SignaalType signalChoice = SignaalType::Cosinus;

	wxString dataPad;

	/* dynamische array voor signaaldata */
	wxArrayDouble signaal;

	wxConfig *signaalConfig;
	
	const wxString DemoTekst;
	const wxPen signaalPen, ampPen, fasePen,assenPen;

	static constexpr auto GrafiekBreedte =   1200;
	static constexpr auto GrafiekHoogte =    400;

	static constexpr auto StandaardPerioden = 5;
	static constexpr auto StandaardFreq =    40;
	static constexpr auto StandaardSampFreq = 240;
	
	static constexpr auto StandaardSignaalAmplitude = 1024.0f;
	
	
}; // wxGlade: end class



class SignaalApp : public DesktopApp
{

public:

	SignaalApp();
	bool OnInit();
};

DECLARE_APP(SignaalApp);



#endif // SIGNAAL_H


