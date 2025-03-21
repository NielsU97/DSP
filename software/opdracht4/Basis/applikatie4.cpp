// -*- C++ -*- generated by wxGlade 0.6.3 on Tue Feb 28 14:23:33 2012 
/* $Id: applikatie4.cpp 313 2023-01-30 13:54:35Z ewout $                    */

/************ Opdracht 4  UITWERKING voor DSB practicum              ***************/
/************ Werk deze code verder uit volgens de opdracht                 ********/
/************ Copyright 2006-2015 Hogeschool van Arnhem en Nijmegen         ********/
/************ ir drs E.J Boks                                               ********/

#include <applikatie4.h>
#include <filterDesigner.h>

/************* Applicatie ( de "main()" van deze GUI applikatie ******/
IMPLEMENT_APP(FirFilterKlasse);

FirFilterKlasse:: FirFilterKlasse() : DesktopApp(wxT("FirFilter"))
{
	
}


bool FirFilterKlasse::OnInit()
{
	const auto schermGrootte(wxGetDisplaySize());

	if ((schermGrootte.GetWidth() < 1024) || (schermGrootte.GetHeight() < 768))
	{
		wxLogError(_("This programme requires a minimal screen resolution of 1024x768 pixels.\nThe start is cancelled."));
		return(false);
	}
	else
	{
		wxImage::AddHandler(new wxPNGHandler);

		filterVenster = new FilterVenster(*this);

		zetHoofdVenster(filterVenster);

		const bool gelukt = filterVenster->Show();

		if (true == gelukt)
			zetHoofdVensterGrootte();
	
		return(gelukt);
	}

}

int FirFilterKlasse::OnExit()
{
    return(0);
}


