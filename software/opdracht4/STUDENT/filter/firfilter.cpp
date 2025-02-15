/*!
@file

Opdracht 4 DSB practicum (filter gedeelte). Werk deze opdracht verder uit aan de hand van het kommentaar.
Assignment 4 DSB practical (filter part). Elaborate this assignment on the basis of the comments.

@version $Rev: 313 $
@author $Author: ewout $

@copyright Copyright 2006-2020 ir drs E.J Boks, Hogeschool van Arnhem en Nijmegen. https://ese.han.nl

$URL: https://ese.han.nl/svn/dsbpracticum/branches/2022/software/opdracht4/STUDENT/filter/firfilter.cpp $
$Id: firfilter.cpp 313 2023-01-30 13:54:35Z ewout $
************************************************************************/

/* $Id: firfilter.cpp 313 2023-01-30 13:54:35Z ewout $                               */

#include <assert.h>
#include <math.h>

#include "firfilter.h"

#if (InterfaceTaalNederlands)
#ifdef BouwDesktopApp
FilterFirInt16::FilterFirInt16(const FilterRingBuffer &coeffs,
                               const Int16 schaal) :  filterCoeffs(coeffs),
                                                      filterMemory(coeffs.geefAantal()),
                                                      loopUnroll4(coeffs.geefAantal()/4),
                                                      unrollRem(coeffs.geefAantal() % 4),
                                                      scaleFactor(schaal)
{

}
#endif

FilterFirInt16::FilterFirInt16(const FilterRingBuffer &coeffs,
                               const FilterRingBuffer &werkgeheugen,
                               const Int16 schaal) :  filterCoeffs(coeffs),
                                                      filterMemory(werkgeheugen),
                                                      loopUnroll4(coeffs.geefAantal()/4),
                                                      unrollRem(coeffs.geefAantal() % 4),
                                                      scaleFactor(schaal)
{

}

#elif defined (InterfaceTaalEnglish)

#ifdef BouwDesktopApp
FilterFirInt16::FilterFirInt16(const FilterRingBuffer &coeffs,
                               const Int16 scale) :  filterCoeffs(coeffs),
                                                      filterMemory(coeffs.giveSize()),
                                                      loopUnroll4(coeffs.giveSize()/4),
                                                      unrollRem(coeffs.giveSize() % 4),
                                                      scaleFactor(scale)
{

}
#endif

FilterFirInt16::FilterFirInt16(const FilterRingBuffer &coeffs,
                               const FilterRingBuffer &workMemory,
                               const Int16 scale) :  filterCoeffs(coeffs),
                                                      filterMemory(workMemory),
                                                      loopUnroll4(coeffs.giveSize()/4),
                                                      unrollRem(coeffs.giveSize() % 4),
                                                      scaleFactor(scale)
{

}


#endif

/* STUDENT CODE*/
/////////////////
void FilterFirInt16::reset()
{
    filterMemory.reset();
}

/* Implementatie van het filter */
Int16 FilterFirInt16::filter(const Int16 input)
{
    // Schrijf nieuw input-signaal in buffer
    filterMemory.schrijf(input);
    Int64 som = 0;

    // Convolutie van input met filtercoëfficiënten
    for (size_t i = 0; i < filterCoeffs.geefAantal(); i++)
    {
        const float coeff = filterCoeffs[i];
        const int16_t current_value = filterMemory.lees();
        som = som + coeff * current_value;
    }

    // Schaling naar de juiste amplitude
    som /= scaleFactor;
    return static_cast<Int16>(som);
}
/* END STUDENT CODE*/
/////////////////////


