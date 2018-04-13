/*
	Module      : PP
	Description : *description*
	Copyright   : 	(c) Juan Ortiz, 13-11021
						Carlos Serrada, 13-11347
	License     : BSD 3-Clause
	Maintainer  : ortiz.juan14@gmail.com
	Stability   : Production release
	Portability : POSIX
*/


/**
	La gramatica consta de las siguientes reglas
		sentence -> []
		sentence -> verb_phrase
		sentence -> noun_phrase + verb_phrase

		noun_phrase -> name
		noun_phrase -> subject_pronoun
		noun_phrase -> article + noun
		noun_phrase -> adjective + noun --	--	-->	--	--	-->			*revisar*
		noun_phrase -> article + adjective + noun
		
		e.g. Jhon runs
		e.g. She runs
		e.g. The kid runs
		e.g. kind boy eat 	-->	--	--	--	--	-->	--	--	-->			*revisar*
		e.g. A kind kid runs

		verb_phrase -> verb
		verb_phrase -> verb + noun_phrase
		verb_phrase -> verb + noun_phrase + noun_phrase
		verb_phrase -> verb + prepositional_phrase
		verb_phrase -> verb + object
		verb_phrase -> verb + object + prepositional_phrase

		e.g. the kid visited her

		object -> noun; object_pronoun.

		prepositional_phrase -> preposition + noun_phrase
		prepositional_phrase -> preposition + possesive_pronoum + noun_phrase

		e.g. the angry bearchased the frightened little squirrel
		e.g. the car eat on the mat.
		e.g. the kind man invite her to his house

		e.g. johan sold peter a car 
		e.g. mary sold jhan a computer
		e.g. anneleen bought a car from joseph
		e.g. peter bought a computer from anneleen

		e.g. johan sold a woman the white car
*/

s(s) --> [].
s(s(S)) --> sentence(S).
s(s(S, C, S2)) --> sentence(S), conjunction(C), s_aux(S2).
s_aux(s_aux(S)) --> sentence(S).

sentence(sentence(VP)) --> verb_phrase(VP).
sentence(sentence(NP, VP)) --> noun_phrase(NP), verb_phrase(VP).
sentence(sentence(NP, C, S)) --> noun_phrase(NP), conjunction(C), sentence(S).

noun_phrase(noun_phrase(N)) --> name(N).
noun_phrase(noun_phrase(N)) --> noun(N).
noun_phrase(noun_phrase(N, NO)) --> name(N), noun(NO).
noun_phrase(noun_phrase(SP)) --> subject_pronoun(SP).
noun_phrase(noun_phrase(SP, NO)) --> subject_pronoun(SP), noun(NO).
noun_phrase(noun_phrase(A, N)) --> article(A), noun(N).
noun_phrase(noun_phrase(A, N)) --> adjective(A), noun(N).
noun_phrase(noun_phrase(AR, AD, N)) --> article(AR), adjective(AD), noun(N).

verb_phrase(verb_phrase(V)) --> verb(V).
verb_phrase(verb_phrase(V, NP)) --> verb(V), noun_phrase(NP).
verb_phrase(verb_phrase(V, NP, NP2)) --> verb(V), noun_phrase(NP), noun_phrase(NP2).
verb_phrase(verb_phrase(V, PP)) --> verb(V), prepositional_phrase(PP).
verb_phrase(verb_phrase(V, O)) --> verb(V), object(O).
verb_phrase(verb_phrase(V, O,PP)) --> verb(V), object(O), prepositional_phrase(PP).

object(object(N)) --> noun(N).
object(object(OP)) --> object_pronoun(OP).
prepositional_phrase(prepositional_phrase(P, N)) --> preposition(P), noun_phrase(N).
prepositional_phrase(prepositional_phrase(P, SP, N)) --> preposition(P), possesive_pronoum(SP), noun_phrase(N).
prepositional_phrase(prepositional_phrase(P, N, N2)) --> noun_phrase(N), preposition(P), noun_phrase(N2).

article(article(the)) --> [the].
article(article(a)) --> [a].
article(article(an)) --> [an].

adjective(adjective(good)) --> [good].
adjective(adjective(little)) --> [little].
adjective(adjective(old)) --> [old].
adjective(adjective(adorable)) --> [adorable].
adjective(adjective(dead)) --> [dead].
adjective(adjective(fancy)) --> [fancy].
adjective(adjective(important)) --> [important].
adjective(adjective(kind)) --> [kind].
adjective(adjective(white)) --> [white].
adjective(adjective(red)) --> [red].
adjective(adjective(blue)) --> [blue].
adjective(adjective(green)) --> [green].
adjective(adjective(elegant)) --> [elegant].
adjective(adjective(scary)) --> [scary].
adjective(adjective(black)) --> [black].
adjective(adjective(hot)) --> [hot].
adjective(adjective(cool)) --> [cool].
adjective(adjective(strong)) --> [strong].

noun(noun(man)) --> [man].
noun(noun(woman)) --> [woman].
noun(noun(kid)) --> [kid].
noun(noun(dog)) --> [dog].
noun(noun(house)) --> [house].
noun(noun(car)) --> [car].
noun(noun(computer)) --> [computer].
noun(noun(apple)) --> [computer].
noun(noun(ball)) --> [ball].

preposition(preposition(from)) --> [from]. 
preposition(preposition(across)) --> [across]. 
preposition(preposition(with)) --> [with]. 
preposition(preposition(before)) --> [before]. 
preposition(preposition(for)) --> [for]. 
preposition(preposition(like)) --> [like].
preposition(preposition(to)) --> [to].

verb(verb(bought)) --> [bought].
verb(verb(sold)) --> [sold].
verb(verb(threw)) --> [threw].
verb(verb(read)) --> [read].
verb(verb(loves)) --> [loves].
verb(verb(invite)) --> [invite].
verb(verb(miss)) --> [miss].
verb(verb(work)) --> [work].
verb(verb(eat)) --> [eat].

conjunction(conjunction(and)) --> [and].
conjunction(conjunction(or)) --> [or].
conjunction(conjunction(,)) --> [,].

name(name(jhan)) --> [jhan].
name(name(joseph)) --> [joseph].
name(name(mary)) --> [mary].
name(name(anneleen)) --> [anneleen].
name(name(johan)) --> [johan].
name(name(peter)) --> [peter].
name(name(susan)) --> [susan].
name(name(paul)) --> [paul].

subject_pronoun(subject_pronoun(i)) --> [i].
subject_pronoun(subject_pronoun(you)) --> [you].
subject_pronoun(subject_pronoun(he)) --> [he].
subject_pronoun(subject_pronoun(she)) --> [she].
subject_pronoun(subject_pronoun(we)) --> [we].
subject_pronoun(subject_pronoun(they)) --> [they].

object_pronoun(object_pronoun(me)) --> [me].
object_pronoun(object_pronoun(you)) --> [you].
object_pronoun(object_pronoun(him)) --> [him].
object_pronoun(object_pronoun(her)) --> [her].
object_pronoun(object_pronoun(it)) --> [it].
object_pronoun(object_pronoun(us)) --> [us].
object_pronoun(object_pronoun(them)) --> [them].

possesive_pronoum(possesive_pronoum(mine)) --> [mine].
possesive_pronoum(possesive_pronoum(yours)) --> [yours].
possesive_pronoum(possesive_pronoum(his)) --> [his].
possesive_pronoum(possesive_pronoum(hers)) --> [hers].
possesive_pronoum(possesive_pronoum(ours)) --> [ours].
possesive_pronoum(possesive_pronoum(theirs)) --> [theirs].