#### Features:

1. [Case](https://universaldependencies.org/u/feat/Case.html) (lexical of ADP, inflectional of PRON)
    - **Nom** - Nominative (for _ang, si, ako, ikaw, ka, siya, kita, kata, tayo, kami, kayo, sila, ito, iyan, iyon_; subject of actor-focus phrases)
    - **Gen** - Genitive (for _ng, ni, ko, mo, niya, nita, natin, namin, ninyo, nila, nito, niyan, niyon, noon_; non-subject core argument, also possessor modifier in noun-noun modification)
    - **Dat** - Dative (for _sa, kay, akin, iyo, kaniya, kanita, atin, amin, inyo, kanila, dito, rito, diyan, riyan, doon, roon_; oblique argument, typically describing roles like goal, direction, location)

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
    - (?) Potential - i.e. *nakapagpamili*

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
    - a. **In**
    - b. **Ex**

11. PronType (PRON)
    - a. **Dem** - Demonstrative
    - b. **Prs** - Personal

12. VerbForm? (VERB) ... Tagalog does not seem to distinguish finite and non-finite forms, so this feature is probably not useful
    - a. **Inf** - Infinitive

#### Features by part of speech

* Optional features that are allowed with any part of speech
  * Foreign=Yes ... so far attested with NOUN

* NOUN, PROPN
  * Gender ... optional, occurs with loanwords from Spanish
  * removed: Number ... in previous release it was either Sing or Coll
  * Link=Yes ... used in Dan's annotation from Shopen, but maybe the linkers should be separated as syntactic words (according to documentation, this is done in Ugnayan)

* PRON
  * PronType ... mandatory, currently Prs or Dem
  * Person ... mandatory if PronType=Prs, values 1, 2, 3
  * Number ... mandatory if PronType=Prs (should it be allowed for demonstratives?), values Sing, Plur, Dual?
  * Clusivity ... mandatory if PronType=Prs, Person=1, Number=Plur or Dual
  * Deixis ... mandatory if PronType=Dem?
  * Case ... mandatory, values Nom, Gen, Dat
  * Link=Yes ... used in Dan's annotation from Shopen, but maybe the linkers should be separated as syntactic words (according to documentation, this is done in Ugnayan)

* DET ... will we use DET at all?

* ADJ
  * Degree ... mandatory, values Pos or Sup (the comparative is analytical, so it does not have a feature value)
  * Gender ... optional, occurs with loanwords from Spanish

* NUM
  * NumType=Card? ... there are no cardinal numerals in the current data

* AUX ... will we use AUX at all? So far used for _huwag_ and _may_ but it is not clear whether they should be considered auxiliaries.

* VERB
  * Voice ... mandatory unless Aspect=Hab, values currently Act, Pass, Lfoc, Bfoc
  * Aspect ... mandatory, values currently Hab, Imp, Perf, Prosp
  * Mood ... mandatory unless Aspect=Hab, only Ind occurs in the current data

* ADV
  * PronType ... optional, values Dem, Int

* ADP
  * Case ... lexical feature, mandatory at least for _ang, si, ng, ni, sa, kay_

* SCONJ ... the relativizer _nang_, no features

* CCONJ ... currently does not occur in the data

* PART
  * Polarity=Neg mandatory for _hindi_
  * PartType=Int mandatory for _ano, ba, kaya_
  * PartType=Des mandatory for _sana_
  * what about _daw_?

* INTJ
  * Polarity ... optional, used for response words (_oo_ Pos, _hindi_ Neg)

* SYM ... currently does not occur in the data

* PUNCT ... no features

* X ... no features
