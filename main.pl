s --> [].
s --> simple_s(subject).
s --> simple_s(subject), conj, s.
simple_s(subject) --> np(subject), vp.
simple_s(subject) --> np(subject), conj2, simple_s(subject).
np(_) --> det, n.
np(_) --> det, adjective, n.
np(X) --> pro(X).
vp --> v, np(object), do.
vp --> v, do2, np(object).
vp --> v, np(object).
vp --> v.
do --> det, cn.
do --> det, adjective, cn.
do2 --> det, cn, preposition.
det --> [the]; [a].
adjective --> [good]; [little]; [old]; [adorable]; [dead]; [fancy]. 
adjective --> [important]; [kind]; [white]; [red]; [blue]; [green].
adjective --> [elegant]; [scary]; [black]; [hot]; [cool]; [strong].
preposition --> [from]; [across]; [with]; [before]; [for]; [like].
n --> [woman]; [man]; [kid]; [dog]; [house]; [car]; [computer]; [ball].
cn --> [house]; [car]; [computer]; [ball].
v --> [bought]; [sold]; [threw]; [read]; [loves]; [invite]; [miss]; [work].
conj --> [and]; [or]; [,].
conj2 --> [and]; [or]; [but]; [,].
pro(_) --> [jhan]; [joseph]; [mary]; [anneleen]; [johan]; [peter]; [susan]; [paul].
pro(subject) --> [i]; [you]; [he]; [she]; [we]; [they].
pro(object) --> [me]; [you]; [him]; [her]; [it]; [us]; [them].



