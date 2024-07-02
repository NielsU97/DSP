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

/********  Naam/name     : Niels Urgert              ******/
/********  Studentnummer : 1654746              ******/

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

float PolairGetal::Mag() const
{
	//auto real = grootte * cos(fase);
	//auto imag = grootte * sin(fase);
	//return sqrt(real * real + imag * imag);

	return grootte;
}

float PolairGetal::Arg() const
{
	//auto real = grootte * cos(fase);
	//auto imag = grootte * sin(fase);
	//return atan2(imag, real);

	return fase;
}


#elif defined (InterfaceTaalEnglish)


PolarNumber::PolarNumber(const Complex &z) : magnitude(z.Mag()),
                                             phase(z.Arg())
{

}


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

float Complex::Mag() const
{
	float xSeq = x * this->x;
	float ySeq = y * this->y;

	return sqrtf(xSeq + ySeq);
}

float Complex::Arg() const
{
	return atan2(y, x);
}

PolairGetal Complex::polair() const
{
	return PolairGetal();
}

Complex Complex::conj() const
{
	return Complex(Re(), -Im());
}

Complex::Complex(const PolairGetal& polar)
{
	//*this = PolairGetal(Complex(x, y));
	//PolairGetal(Mag(), Arg());

	// Initialize the Complex object using the magnitude and argument of the PolairGetal object
	x = polar.Mag() * cosf(polar.Arg());
	y = polar.Mag() * sinf(polar.Arg());
}

Complex& Complex::operator=(const PolairGetal& rhs)
{
	//x = rhs.Mag() * (cos(rhs.Arg()));
	//y = rhs.Mag() * (sin(rhs.Arg()));
	Complex retVal(rhs);
	x = retVal.x;
	y = retVal.y;
	return *this;
}

bool Complex::operator==(const Complex& rhs) const
{
  /*if (x == rhs.Re() && y == rhs.Im())
	{
		return true;
	}
	else
	{
		return false;
	}*/

	return (x == rhs.x && y == rhs.y) ? true : false;
}

Complex Complex::operator+(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = x + rhs.x;
	retVal.y = y + rhs.y;
	return retVal;
	
	//return Complex(x + rhs.Re(), y + rhs.Im());
}

Complex Complex::operator-(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = x - rhs.x;
	retVal.y = y - rhs.y;
	return retVal;

	//return Complex(x - rhs.Re(), y - rhs.Im());
}

Complex Complex::operator*(const Complex& rhs) const
{
	Complex retVal;
	retVal.x = ((x * rhs.x) - (y * rhs.y));
	retVal.y = ((x * rhs.y) + (rhs.x * y));
	return retVal;

	//return Complex(x * rhs.Re() - y * rhs.Im(), x * rhs.Im() + y * rhs.Re());
}

Complex Complex::operator*(const float rhs) const
{
	Complex retVal;
	retVal.x = x * rhs;
	retVal.y = y * rhs;
	return retVal;

	//return Complex(x * rhs, y * rhs);
}

Complex Complex::operator/(const Complex& rhs) const
{
	/*auto a = x;
	auto b = y;
	auto c = rhs.Re();
	auto d = rhs.Im();
	return Complex((a * c + b * d) / (c * c + d * d), (b * c - a * d) / (c * c + d * d));*/

	Complex retVal;
	retVal.x = ((x * rhs.x) + (y * rhs.y)) / ((rhs.x * rhs.x) + (rhs.y * rhs.y));
	retVal.y = ((y * rhs.x) - (x * rhs.y)) / ((rhs.x * rhs.x) + (rhs.y * rhs.y));
	return retVal;
}

Complex& Complex::operator+=(const Complex& rhs)
{
	x += rhs.x;
	y += rhs.y;
	return *this;
}

Complex& Complex::operator-=(const Complex& rhs)
{
	x -= rhs.x;
	y -= rhs.y;
	return *this;
}
