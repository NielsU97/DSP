/*!
  @file 

  Opdracht 1 DSB practicum. Werk deze opdracht verder uit aan de hand van het kommentaar.
  Assignment 1 DSB practical. Elaborate this assignment on the basis of the comments.

  @version $Rev: 313 $
  @author $Author: ewout $ 
  @note  Werk deze code verder uit volgens de opdracht   / Complete this code according to the assignment.
  @copyright Copyright 2006-2022 ir drs E.J Boks Hogeschool van Arnhem en Nijmegen
  $Id: dsbRingBuffer.h 313 2023-01-30 13:54:35Z ewout $
*/

#ifndef DSBKLASSEN_H
#define DSBKLASSEN_H

#include <algdef.h>
#include <string.h>
#include <DSBConfig.h>

#ifdef BouwDesktopApp
#include <desktopAppVersie.h>
#include <wx/string.h>
#endif

#if defined(InterfaceTaalNederlands)
/*! @brief De template beschrijving van de ringbuffer */
template <typename ttype>
class RingBuffer
{
public:
    /*! @brief Lege maar nutteloze constructor voor als de buffer geinstantieerd maar niet gebruikt wordt. */
    RingBuffer() = default;

    /*! @brief De standaard constructor voor de ringbuffer met dynamische interne bufferallocatie.
     * @param a : aantal elementen in buffer */
    explicit RingBuffer(const unsigned short a) : elementen(new ttype[a]),
        aantal(a),
        //waardeTeller(0),
        dynAlloc(true),
        leesPtr(elementen),
        schrijfPtr(elementen)
    {
        assert(0 != a);
        memset(elementen, 0, sizeof(ttype) * aantal);
    };

    /*! @brief De standaard constructor voor de ringbuffer met statische externe bufferallocatie.
    * @param a : aantal elementen in buffer
    * @param initWaarden : een pointer naar een externe array met a elementen. */
    RingBuffer(const unsigned short a,
        ttype const* const initWaarden) : elementen(const_cast<ttype*>(initWaarden)),
        aantal(a),
        //waardeTeller(0),
        dynAlloc(false),
        leesPtr(elementen),
        schrijfPtr(elementen)
    {
        assert(0 != a);
    };

    /*! @brief de kopie constructor. */
    RingBuffer(const RingBuffer& rb) : elementen((true == rb.dynAlloc) ?
        new ttype[rb.geefAantal()] :
        rb.elementen),
        aantal(rb.geefAantal()),
        //waardeTeller(0),
        dynAlloc(rb.dynAlloc),
        leesPtr(elementen),
        schrijfPtr(elementen)
    {
        /* bij dynamische allocatie alles over kopieeren.
         * indien niet, dan wijst onze elementen pointer al naar de rb elementen. */
        if (true == rb.dynAlloc)
            memcpy(elementen, rb.elementen, sizeof(ttype) * rb.aantal);
    };


    /*! @brief de Destructor */
    ~RingBuffer()
    {
        if (true == dynAlloc)
            delete[] elementen;
    }

    /*! @brief De reset funktie verzorgt het leegmaken van de buffer
     * en het resetten van alle interne pointers naar de beginstaat. */
    void reset()
    {
        memset(elementen, 0, sizeof(ttype) * aantal);
        schrijfPtr = leesPtr = elementen;
        //waardeTeller = 0;
    };

    /*! @brief Deze funkte geeft het aantal elementen in de buffer. */
    unsigned short geefAantal() const
    {
        return aantal;
    };

    /*! @brief Schrijf een getal naar de ringbuffer.
     * @note zowel lees als schrijfpointer moeten worden bijgewerkt. */

    void schrijf(const ttype getal)
    {
        leesPtr = schrijfPtr;

        *schrijfPtr = getal;

        ++schrijfPtr;
        if (schrijfPtr - elementen >= aantal)
            schrijfPtr = elementen;
        /*if(schrijfPtr >= &elementen[aantal]) {
            schrijfPtr = elementen;
            leesPtr++;
        }

        *schrijfPtr = getal;
        schrijfPtr++;

        if(schrijfPtr == leesPtr) {
            leesPtr++;
            if(leesPtr >= &elementen[aantal])
                leesPtr = elementen;
        }*/
    };

    /*! @brief Lees het jongste sample x[n].
     * @note verschuif de leesPtr. */
    ttype lees()
    {
        const ttype returnWaarde = *leesPtr;
        ++leesPtr;

        if (leesPtr - elementen >= aantal)
            leesPtr = elementen;

        return returnWaarde;
        /*ttype retVal;

        if(leesPtr >= &elementen[aantal]) {
            leesPtr = elementen;
            retVal= *leesPtr;
            leesPtr++;
        }
        else {
            retVal= *leesPtr;
            leesPtr++;
        }

        return retVal;*/
    };

    /*! @brief Lees het het sample x[n-index].
    * @note verschuif de leesPtr niet. */
    ttype lees(const unsigned int index) const
    {
        const int negativeIndex = -index;
        const size_t leesPtrDiff = (leesPtr - elementen);
        const size_t indexCorrectedForLeesPtr = (negativeIndex < 0) ? (aantal + (negativeIndex % aantal)) % aantal : negativeIndex % aantal; // Turns index into positive representation if it is negative and bounds it to (< aantal).
        const size_t indexCorrectedForElementen = (indexCorrectedForLeesPtr + leesPtrDiff) % aantal;
        return elementen[indexCorrectedForElementen];
        /*ttype *leesVal = &elementen[aantal - (index-1)];

        return *leesVal;*/
    };

    /*! @brief Lees de bufferwaarde op plaats index absoluut,  dwz niet ten opzichte van de schrijfpointer.
     * @note bewaak in de funktie de buffergrenzen. */
    ttype operator [](const unsigned int index) const
    {
        return elementen[index % aantal];
        /*ttype *leesVal = &elementen[0];

        if((index - 1) >= 0)
            leesVal = &elementen[index];

        return  *leesVal;*/
    }

    /*! @brief bereken de som van alle in de buffer aanwezige waarden.
     * @return de somwaarde. */
    ttype som() const
    {
        ttype retVal = 0;
        for (unsigned short i = 0; i < aantal; i++)
            retVal += elementen[i];

        return retVal;
    };

    /*! @brief bereken het gemiddelde van alle in de buffer aanwezige waarden.
    * @return het gemiddelde. */
    ttype gemiddelde() const
    {
        return (som() / aantal);
    };

    /*! @brief Schrijf een nieuwe inputwaarde naar de ringbuffer en bereken daarna
    * het gemiddelde van alle in de buffer aanwezige waarden.
     * @param De nieuwe input waarde
    * @return het gemiddelde. */
    ttype gemiddelde(const ttype getal)
    {
        schrijf(getal);
        return gemiddelde();
    };

protected:

private:
    ttype* const elementen = nullptr;  /* Deze ptr wijst naar de buffer. */
    const unsigned short aantal = 0; /* het aantal elementen in de buffer. */
    //unsigned short waardeTeller;
    const bool dynAlloc = false;
    ttype* leesPtr, * schrijfPtr;  /* ptr implementatie van de ringbuffer.*/
};


/*! @brief Dit is een optionele klasse om gemakkelijk in een embedded toepassing de ringbuffer te
 * kunnen gebruiken. De vereist elementenbuffer wordt altijd statisch gealloceerd.
 * This is an optional class to easily use the ring buffer in an embedded application
 * The required element buffer is always statically allocated.
 * @typename Het buffertype / the buffer type.
 * @param De buffergrootte / the buffer size.  */
template <typename ttype, const unsigned short Grootte>
class StaticRingBuffer : public RingBuffer<ttype>
{
public:

    /*! @brief De standaard constructor voor de statische ringbuffer met eigen bufferallocatie. */
    StaticRingBuffer() : RingBuffer<ttype>(Grootte, staticBuf)
    {

    };

private:
    ttype staticBuf[Grootte];
};


#elif defined(InterfaceTaalEnglish)

#endif /* #if (InterfaceTaalNederlands) */
#endif




