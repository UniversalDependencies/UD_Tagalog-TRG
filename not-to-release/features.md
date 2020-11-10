#### Features:

1. [Case](https://universaldependencies.org/u/feat/Case.html) (lexical of ADP, inflectional of PRON)
    - **Nom** - Nominative (for _ang, si, ako, ikaw, ka, siya, kita, kata, tayo, kami, kayo, sila, ito, iyan, iyon, sino_; subject of actor-focus phrases)
    - **Gen** - Genitive (for _ng, ni, ko, mo, niya, nita, natin, namin, ninyo, nila, nito, niyan, niyon, noon, nino_; non-subject core argument, also possessor modifier in noun-noun modification)
    - **Dat** - Dative (for _sa, kay, akin, iyo, kaniya, kanita, atin, amin, inyo, kanila, dito, rito, diyan, riyan, doon, roon, kanino_; oblique argument, typically describing roles like goal, direction, location)

2. Voice = Focus or Trigger (VERB)
    - **Act** - Actor - i.e. *naglinis*
    - **Pass** - Passive or Patient Focus i.e. *nilinis* (some authors call this object focus)
    - **Lfoc** - Locative
    - (?) **Bfoc** - Benefactive - i.e. *ipagluluto*
    - (?) Instrumental - i.e. *ipinangluto*
    - (?) Reason - i.e. *ikinasaya*
    - (?) Directional - i.e. *kinantahan*
    - (?) Reciprocal - i.e. *nagsigawan*

3. Aspect (VERB)
    - **Hab** - Habitual i.e. *kailangan*(?)
    - **Imp** - Imperfect (Progressive) i.e. *nagluluto*
    - **Perf** - Perfect (Complete) i.e. *nagluto*
    - **Prosp** - Prospective (Contemplative) i.e *magluluto*
    - (?) - Recently Completed i.e. *kaluluto* (but the recency would be Tense rather than Aspect)

4. Mood (VERB)
    - **Ind** - Indicative i.e. *bumili*
    - (?) Distributive - i.e. *namili*
    - (?) Social - i.e. *nakinood*
    - **Pot** (?) Potential - i.e. *nakapagpamili*; from Shopen: _nakakapagalmusal_ "can have breakfast" from _almusal_ "have breakfast"
    - **Imp** - Andrews p. 207: Imperative sentences have the verb in a 'base' form with focus-marking, but no aspectual marker. ... The verb form used for imperatives is not restricted to imperative usage. It is rather used in a range of constructions, expressing a desire that something happen, called 'hortatives' if the subject is first person plural, and 'optative' if the subject is first person singular.

5. Definite[-ness] (DET) ... probably not useful, although _ang_ nominals are always definite
    - a. **Def** - Definite
    - b. **Ind** - Indefinite

6. Degree (ADJ)
    - a. **Pos** - Positive, First Degree
    - b. **Sup** - Superlative i.e. *pinakamaganda*
    - c. (?) **Cmp** - Comparative i.e. *mas maganda* ... if at all useful, then only for _mas_ because _maganda_ itself is not comparative

7. Gender (NOUN, PROPN, ADJ) ... for loanwords from Spanish
    - a. **Fem**
    - b. **Masc**

8. Number (DET, PRON)
    - a. **Sing**
    - b. **Plur**
    - c. **Dual** - i.e. *kita*(?)
    - d. (?) **Coll** - Collective i.e. *kababaihan*, *pagkain* ... purely semantic value, and it would be the only case when Number would be used with nouns, so perhaps it can be removed (so far it was used with four nouns: _alon, gulayan, ingay, pagkain_)

9. Person (PRON)
    - a. **1**
    - b. **2**
    - c. **3**

10. Clusivity (PRON)
    - a. **In** - Inclusive
    - b. **Ex** - Exclusive

11. PronType (PRON)
    - a. **Dem** - Demonstrative
    - b. **Prs** - Personal

12. VerbForm? (VERB) ... Tagalog does not seem to distinguish finite and non-finite forms, so this feature is probably not useful
    - a. **Inf** - Infinitive

13. Polarity (VERB, PART, INTJ)
    - a. **Pos** - Positive
    - b. **Neg** - Negative

#### Features by part of speech

* Optional features that are allowed with any part of speech
  * Foreign=Yes ... so far attested with NOUN
  * Link=Yes ... used in Dan's annotation from Shopen, but maybe the linkers should be separated as syntactic words (according to documentation, this is done in Ugnayan)

* NOUN, PROPN
  * Gender ... optional, occurs with loanwords from Spanish (and with given personal names?)
  * removed: Number ... in previous release it was either Sing or Coll

* PRON
  * PronType ... mandatory, currently Prs, Dem or Int
  * Reflex=Yes ... used for _sarili_ "self"
  * Person ... mandatory if PronType=Prs and not Reflex=Yes, values 1, 2, 3
  * Number ... mandatory if PronType=Prs (should it be allowed for demonstratives?), values Sing, Plur, Dual?
  * Clusivity ... mandatory if PronType=Prs, Person=1, Number=Plur or Dual
  * Deixis ... mandatory if PronType=Dem?
  * Case ... mandatory if PronType=Prs or Dem, also for some Int, values Nom, Gen, Dat. Not used with _ano, napakaano_ "what"

* DET
  * PronType ... mandatory; value Ind for _mga_, Tot for _lahat_ "all", Emp for _mismo_
  * Number=Plur ... mandatory with _mga_

* ADJ
  * Degree ... mandatory, values Pos or Sup (the comparative is analytical, so it does not have a feature value)
  * Gender ... optional, occurs with loanwords from Spanish

* NUM
  * NumType=Card? ... there are no cardinal numerals in the current data

* AUX ... will we use AUX at all? So far used for _huwag_.
  * _huwag_ has Mood=Imp|Polarity=Neg

* VERB
  * Voice ... mandatory unless Aspect=Hab, values currently Act, Pass, Lfoc, Bfoc
  * Aspect ... mandatory unless Mood=Imp, values currently Hab, Imp, Perf, Prosp
  * Mood ... mandatory unless Aspect=Hab, values currently Ind, Imp, Pot
  * Polarity ... used only with existential _may_ (Pos), _mayroon_ (Pos) and _wala_ (Neg)

* ADV
  * PronType ... optional, values Dem (_na_ "now", _roon_ "there"), Int (_nasaan_ "where", _kailan_ "when", _bakit_ "why")

* ADP
  * Case ... lexical feature, mandatory at least for _ang, si, ng, ni, sa, kay_

* SCONJ ... the relativizer _nang_, no features

* CCONJ ... currently does not occur in the data

* PART
  * Polarity=Neg mandatory for _hindi_
  * PartType=Int mandatory for _ano_ (tag question), _ba_ (yes-no question), _kaya_ (speculative yes-no question). The particle _ano_ is actually a conversion from the pronoun _ano_ "what", but as a tag question marker it no longer is a pronoun and should be tagged PART rather than PRON.
  * PartType=Des mandatory for _sana_ ("hopefully")
  * PartType=Nfh mandatory for _daw_ (non-first hand statement, "they say")

* INTJ
  * Polarity ... optional, used for response words (_oo_ Pos, _hindi_ Neg)

* SYM ... currently does not occur in the data

* PUNCT ... no features

* X ... no features
