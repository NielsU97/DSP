/*!
@file
Exponentieel Gemiddelde (Exponential Average) implementatie voor Opdracht 2 / Assignment 2.

@version $Rev: 313 $
@author $Author: ewout $
@copyright Copyright 2006-2019 ir drs E.J Boks Hogeschool van Arnhem en Nijmegen
$Id: expAverage.cpp 313 2023-01-30 13:54:35Z ewout $
*/

#include "expAverage.h"
#include <assert.h>

ExponentialAverageFilter::ExponentialAverageFilter(const float wf) : alfa(wf),minalfa(1.0f-wf)
{
	assert((alfa > 0.0f) && (alfa <= 1.0f));
}

float ExponentialAverageFilter::filter(const float input)
{
	static float filteredValue = input; // initialize filteredValue to input on the first call
	filteredValue = alfa * input + minalfa * filteredValue; // compute the filtered value
	return filteredValue; // return the filtered value
}

