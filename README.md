# ParseTree en Prolog

Se construyo un parse tree para reconocer oraciones en ingles usando definite clause grammars (DCGs), un mecanismo incorporado en Prolog para trabajar con gramaticas libres de contexto. Nos basamos en las siguientes reglas para la gramatica:

	sentence -> []
	sentence -> verb_phrase
	sentence -> noun_phrase verb_phrase

	noun_phrase -> name
	noun_phrase -> subject_pronoun
	noun_phrase -> article noun
	noun_phrase -> article adjective noun

	verb_phrase -> verb
	verb_phrase -> verb noun_phrase
	verb_phrase -> verb noun_phrase noun_phrase
	verb_phrase -> verb prepositional_phrase
	verb_phrase -> verb object
	verb_phrase -> verb object prepositional_phrase

	object -> noun; object_pronoun.

	prepositional_phrase -> preposition noun_phrase
	prepositional_phrase -> preposition possesive_pronoum noun_phrase

## Ejemplos
Algunos ejemplos de oraciones validas son:

- johan sold peter a car
```bash
    ?- s(T,[johan, sold, peter, a, car],[]).
    T = s(s_aux(sentence(noun_phrase(name(johan)), verb_phrase(verb(sold), noun_phrase(name(peter)), noun_phrase(article(a), noun(car))))))
```

- mary sold jhan a computer
```bash
    ?- s(T,[mary, sold, jhan, a, computer],[]).
    T = s(s_aux(sentence(noun_phrase(name(mary)), verb_phrase(verb(sold), noun_phrase(name(jhan)), noun_phrase(article(a), noun(computer))))))
```

- anneleen bought a car from joseph
```bash
?- s(T,[anneleen, bought, a, car, from, joseph],[]).
T = s(s_aux(sentence(noun_phrase(name(anneleen)), verb_phrase(verb(bought), prepositional_phrase(preposition(from), noun_phrase(article(a), noun(car)), noun_phrase(name(joseph)))))))
```

- peter bought a computer from anneleen
```bash
?- s(T,[peter, bought, a, computer, from, anneleen],[]).
T = s(s_aux(sentence(noun_phrase(name(peter)), verb_phrase(verb(bought), prepositional_phrase(preposition(from), noun_phrase(article(a), noun(computer)), noun_phrase(name(anneleen)))))))
```

- johan sold a woman the white car
```bash
?- s(T,[johan, sold, a, woman, the, white, car],[]).
T = s(s_aux(sentence(noun_phrase(name(johan)), verb_phrase(verb(sold), noun_phrase(article(a), noun(woman)), noun_phrase(article(the), adjective(white), noun(car))))))
```

- a kind kid eat
```bash
?- s(T,[a, kind, kid, eat],[]).
T = s(s_aux(sentence(noun_phrase(article(a), adjective(kind), noun(kid)), verb_phrase(verb(eat)))))
```
- the kid miss her
```bash
?- s(T,[the, kid, miss, her],[]).
T = s(s_aux(sentence(noun_phrase(article(the), noun(kid)), verb_phrase(verb(miss), object(object_pronoun(her))))))
```

- peter and mary loves them
```bash
?- s(T,[peter, and, mary, loves, them],[]).
T = s(s_aux(sentence(noun_phrase(name(peter)), conjunction(and), sentence(noun_phrase(name(mary)), verb_phrase(verb(loves), object(object_pronoun(them))))))) .
```

- the kind man invited her to his house and she sold the house
```bash
?- s(T,[the, kind, man, invited, her, to, his, house, and, she, sold, the, house],[]).
T = s(s_aux(sentence(noun_phrase(article(the), adjective(kind), noun(man)), verb_phrase(verb(invited), object(object_pronoun(her)), prepositional_phrase(preposition(to), possesive_pronoum(his), noun_phrase(noun(house))))), conjunction(and), s_aux(sentence(noun_phrase(subject_pronoun(she)), verb_phrase(verb(sold), noun_phrase(article(the), noun(house)))))))
```

- mary sold jhan a computer and anneleen bought joseph a car or jhan sold the computer
```bash
?- s(T,[mary, sold, jhan, a, computer, and, anneleen, bought, joseph, a, car, or, jhan, sold, the, computer],[]).
T = s(s_aux(sentence(noun_phrase(name(mary)), verb_phrase(verb(sold), noun_phrase(name(jhan)), noun_phrase(article(a), noun(computer)))), conjunction(and), s_aux(sentence(noun_phrase(name(anneleen)), verb_phrase(verb(bought), noun_phrase(name(joseph)), noun_phrase(article(a), noun(car)))), conjunction(or), s_aux(sentence(noun_phrase(name(jhan)), verb_phrase(verb(sold), noun_phrase(article(the), noun(computer))))))))
```
