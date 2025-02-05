/*!
@file

Opdracht 1 DSB practicum. Werk deze opdracht verder uit aan de hand van het kommentaar.
Assignment 1 DSB practical. Elaborate this assignment on the basis of the comments.

@version $Rev: 313 $
@author $Author: ewout $
@note  Werk deze code verder uit volgens de opdracht  / Complete this code according to the assignment.
@copyright Copyright 2006-2022 ir drs E.J Boks Hogeschool van Arnhem en Nijmegen
$Id: dsbComplex.cpp 313 2023-01-30 13:54:35Z ewout $
*/

#ifndef OnderwijsOntwikkeling
#if defined(InterfaceTaalNederlands)

#elif defined (InterfaceTaalEnglish)
/* Remove this directive after filling out name and student number below. */
#error  "Student name and number must be entered into the fields below."
#endif
#endif

/********  Naam/name     :  Niels Urgert              ******/
/********  Studentnummer :  1654746             ******/

#include <cmath>
#include <cassert>

#include <dsbComplex.h>

#ifdef BouwDesktopApp
#include <iostream>
#include <wx/string.h>
#include <wx/log.h>

#include <wx/arrimpl.cpp> // This is a magic incantation which must be done!
WX_DEFINE_OBJARRAY(ComplexArray);

using namespace std;
#endif



#if defined(InterfaceTaalNederlands)
PolairGetal::PolairGetal(const Complex &z) : grootte(z.Mag()), fase(z.Arg())
{

}

/* STUDENT CODE*/
/////////////////

float PolairGetal::Mag() const
{
	return grootte;						// Retourneert de magnitude (grootte) van het polaire getal.
}

float PolairGetal::Arg() const
{
	return fase;						// Retourneert de argument (fasehoek) van het polaire getal.
}

/* Berekening van de grootte(magnitude) van een complex getal. */
float Complex::Mag() const
{
	float xSeq = x * this->x;			// Kwadrateren van het reële deel.
	float ySeq = y * this->y;			// Kwadrateren van het imaginaire deel.

	return sqrtf(xSeq + ySeq);			// Vierkantswortel van de som geeft de magnitude.
}

/* Berekening van de hoek (fase/argument) van een complex getal. */
float Complex::Arg() const
{
	return atan2(y, x);					// Geeft de inverse tangens van (y/x).
}

PolairGetal Complex::polair() const
{
	return PolairGetal();
}

Complex Complex::conj() const
{
	return Complex(Re(), -Im());		// De geconjugeerde ontstaat door het imaginaire deel negatief te maken.
}

/* Constructor: maakt een complex getal vanuit een PolairGetal. */
Complex::Complex(const PolairGetal& polar)
{
	x = polar.Mag() * cosf(polar.Arg());	// Reëel deel: r * cos(θ)
	y = polar.Mag() * sinf(polar.Arg());	// Imaginair deel: r * sin(θ)
}

/* Toewijzingsoperator voor een PolairGetal naar Complex. */
Complex& Complex::operator=(const PolairGetal& rhs)
{
	Complex retVal(rhs);	// Maak een tijdelijk Complex object van rhs.
	x = retVal.x;			// Kopieer het reële deel.
	y = retVal.y;			// Kopieer het imaginaire deel.
	return *this;
}

/* Vergelijkingsoperator: controleert of twee complexe getallen gelijk zijn. */
bool Complex::operator==(const Complex& rhs) const
{
 	return (x == rhs.x && y == rhs.y) ? true : false;
}

/* Optelling van twee complexe getallen. */
Complex Complex::operator+(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = x + rhs.x;
	retVal.y = y + rhs.y;
	return retVal;
}

/* Aftrekking van twee complexe getallen. */
Complex Complex::operator-(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = x - rhs.x;
	retVal.y = y - rhs.y;
	return retVal;
}

/* Vermenigvuldiging van twee complexe getallen. */
Complex Complex::operator*(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = ((x * rhs.x) - (y * rhs.y));
	retVal.y = ((x * rhs.y) + (rhs.x * y));
	return retVal;
}

/* Vermenigvuldiging van één complex getal met een schaalfactor (float). */
Complex Complex::operator*(const float rhs) const
{
	Complex retVal;
	retVal.x = x * rhs;
	retVal.y = y * rhs;
	return retVal;
}

/* Deling van twee complexe getallen. */
Complex Complex::operator/(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = ((x * rhs.x) + (y * rhs.y)) / ((rhs.x * rhs.x) + (rhs.y * rhs.y));
	retVal.y = ((y * rhs.x) - (x * rhs.y)) / ((rhs.x * rhs.x) + (rhs.y * rhs.y));
	return retVal;
}

/* Optellingstoewijzing: tel rhs op bij het huidige complex getal. */
Complex& Complex::operator+=(const Complex& rhs)
{
	x += rhs.x;
	y += rhs.y;
	return *this;
}

/* Aftrekkingstoewijzing: trek rhs af van het huidige complex getal. */
Complex& Complex::operator-=(const Complex& rhs)
{
	x -= rhs.x;
	y -= rhs.y;
	return *this;
}

/* END STUDENT CODE*/
/////////////////////

#elif defined (InterfaceTaalEnglish)


PolarNumber::PolarNumber(const Complex &z) : magnitude(z.Mag()),
                                             phase(z.Arg())
{

}

#error “Dit deel van de software ontbreekt — this part of the software is missing.”
/* Beste leerling, dit deel van de software ontbreekt. Vul dit deel aan volgens de opdracht.  
   Dear student, this part of the software is missing. Complete this part accoording to the assignment.
*/

#endif  /* Nederlands/Engels */

Complex Complex::sqrt() const
{
	/* In practice, square roots of complex numbers are more easily found by first converting
	 * to polar form and then using DeMoivre’s Theorem.
	 * Any complex numbera+bican bewritten asr(cosθ+isinθ)wherer=√a2+b2,cosθ=ar,
	 * and    sinθ=br(4)DeMoivre’s Theorem states that ifnis any positive real number,
	 * then(a+bi)n=rn(cosnθ+isinnθ).In particular, ifn=1/2, we have√a+bi=√r(cosθ2+isinθ2).
	 * */
#if defined(InterfaceTaalNederlands)
	const auto pg(polair());
#else
	const auto pg(polar());
#endif

	const auto ws = sqrtf(pg.Mag());
	const auto wa = pg.Arg() / 2.0f;
	const auto a = ws * cosf(wa);
	const auto b = ws * sinf(wa);
	const Complex wortelgetal(a, b);
	return(wortelgetal);
}

