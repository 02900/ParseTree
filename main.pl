s(s) --> [].
s(s(SIMPLE_S)) --> simple_s(SIMPLE_S).
s(s(SIMPLE_S, CONJ, S)) --> simple_s(SIMPLE_S), conj(CONJ), s(S).
simple_s(simple_s(VP)) --> vp(VP).
simple_s(simple_s(NP, VP)) --> np(NP), vp(VP).
simple_s(simple_s(NP, CONJ2, SIMPLE_S)) --> np(NP), conj2(CONJ2), simple_s(SIMPLE_S).
np(np(DET, N)) --> det(DET), n(N).
np(np(DET, ADJECTIVE, N)) --> det(DET), adjective(ADJECTIVE), n(N).
np(np(PRO)) --> pro(PRO).
np(np(PRO_SUBJECT)) --> pro_subject(PRO_SUBJECT).
vnp(vnp(DET, N)) --> det(DET), n(N).
vnp(vnp(DET, ADJECTIVE, N)) --> det(DET), adjective(ADJECTIVE), n(N).
vnp(vnp(PRO)) --> pro(PRO).
vnp(vnp(PRO_OBJECT)) --> pro_object(PRO_OBJECT).
vnpp(vnpp(PRO, CN)) --> pro(PRO), cn(CN).
vnpp(vnpp(PRO_POSSESIVE, CN)) --> pro_possesive(PRO_POSSESIVE), cn(CN).
vp(vp(V, VNP, DO)) --> v(V), vnp(VNP), do(DO).
vp(vp(V, VNP, VERB_PREPO, DO)) --> v(V), vnp(VNP), verb_prepo(VERB_PREPO), do(DO).
vp(vp(V, DO2, VNP)) --> v(V), do2(DO2), vnp(VNP).
vp(vp(V, DO2, VNP, VERB_PREPO, V2)) --> v(V), do2(DO2), vnp(VNP), verb_prepo(VERB_PREPO), v(V2).
vp(vp(V, DO2, VNP, VERB_PREPO, VNPP)) --> v(V), do2(DO2), vnp(VNP), verb_prepo(VERB_PREPO), vnpp(VNPP).
vp(vp(V, VNP)) --> v(V), vnp(VNP).
vp(vp(V, VNP, VERB_PREPO, V2)) --> v(V), vnp(VNP), verb_prepo(VERB_PREPO), v(V2).
vp(vp(V, VNP, VERB_PREPO, VNPP)) --> v(V), vnp(VNP), verb_prepo(VERB_PREPO), vnpp(VNPP).
vp(vp(V)) --> v(V).
do(do(DET, CN)) --> det(DET), cn(CN).
do(do(DET, ADJECTIVE, CN)) --> det(DET), adjective(ADJECTIVE), cn(CN).
do2(do2(DET, CN, PREPOSITION)) --> det(DET), cn(CN), preposition(PREPOSITION).
verb_prepo(verb_prepo(to)) --> [to].
det(det(the)) --> [the].
det(det(a)) --> [a].
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
preposition(preposition(from)) --> [from]. 
preposition(preposition(across)) --> [across]. 
preposition(preposition(with)) --> [with]. 
preposition(preposition(before)) --> [before]. 
preposition(preposition(for)) --> [for]. 
preposition(preposition(like)) --> [like].
n(n(man)) --> [man].
n(n(woman)) --> [woman].
n(n(kid)) --> [kid].
n(n(dog)) --> [dog].
n(n(house)) --> [house].
n(n(car)) --> [car].
n(n(computer)) --> [computer].
n(n(ball)) --> [ball].
cn(cn(house)) --> [house].
cn(cn(car)) --> [car].
cn(cn(computer)) --> [computer].
cn(cn(ball)) --> [ball].
v(v(bought)) --> [bought].
v(v(sold)) --> [sold].
v(v(threw)) --> [threw].
v(v(read)) --> [read].
v(v(loves)) --> [loves].
v(v(invite)) --> [invite].
v(v(miss)) --> [miss].
v(v(work)) --> [work].
conj(conj(and)) --> [and].
conj(conj(or)) --> [or].
conj(conj(,)) --> [,].
conj2(conj2(and)) --> [and].
conj2(conj2(or)) --> [or].
conj2(conj2(but)) --> [or].
conj2(conj2(,)) --> [,].
pro(pro(jhan)) --> [jhan].
pro(pro(joseph)) --> [joseph].
pro(pro(mary)) --> [mary].
pro(pro(anneleen)) --> [anneleen].
pro(pro(johan)) --> [johan].
pro(pro(peter)) --> [peter].
pro(pro(susan)) --> [susan].
pro(pro(paul)) --> [paul].
pro_subject(pro_subject(i)) --> [i].
pro_subject(pro_subject(you)) --> [you].
pro_subject(pro_subject(he)) --> [he].
pro_subject(pro_subject(she)) --> [she].
pro_subject(pro_subject(we)) --> [we].
pro_subject(pro_subject(they)) --> [they].
pro_object(pro_object(me)) --> [me].
pro_object(pro_object(you)) --> [you].
pro_object(pro_object(him)) --> [him].
pro_object(pro_object(her)) --> [her].
pro_object(pro_object(it)) --> [it].
pro_object(pro_object(us)) --> [us].
pro_object(pro_object(them)) --> [them].
pro_possesive(pro_possesive(mine)) --> [mine].
pro_possesive(pro_possesive(yours)) --> [yours].
pro_possesive(pro_possesive(his)) --> [his].
pro_possesive(pro_possesive(hers)) --> [hers].
pro_possesive(pro_possesive(ours)) --> [ours].
pro_possesive(pro_possesive(theirs)) --> [theirs].