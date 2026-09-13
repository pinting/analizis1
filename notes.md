# Analízis I.

### Összefüggő jegyzet a kézírásos előadásjegyzet alapján

---

> *„A területszámításban a közelítés végtelenül finomodik."*

---

## Előszó

Ez a jegyzet egy egyéves bevezető analízis-előadás kézírásos anyagának folyamatos, formalizált változata. A cél az volt, hogy a vázlatpontok, nyilak és rövidítések helyett összefüggő, kimondott állításokból és végigvezetett bizonyításokból álló szöveg keletkezzék, amely ugyanazt az utat járja be, ugyanabban a sorrendben: a valós számok axiómáitól a differenciálegyenletekig.

Az anyag felépítése szigorúan egymásra épül. A teljességi axióma nélkül nincs szuprémum; szuprémum nélkül nincs monoton korlátos sorozatokra vonatkozó tétel; e nélkül nincs Bolzano–Weierstrass; e nélkül nincs Cauchy-kritérium, és nincs Weierstrass-féle maximumtétel sem. A lánc végén a középértéktételek állnak, amelyekből a teljes függvényvizsgálat, a L'Hospital-szabály és a Taylor-formula következik. Érdemes ezt a láncot szem előtt tartani: az analízis nem különálló trükkök gyűjteménye, hanem egyetlen, hosszú gondolatmenet.

---

# I. RÉSZ: A VALÓS SZÁMOK

## 1. Bevezetés: mi az analízis?

Az analízis — hagyományos nevén *differenciál- és integrálszámítás* — a függvények viselkedésének vizsgálata a **határérték** fogalmán keresztül. Két klasszikus probléma vezet el hozzá, és mindkettő ugyanazt a nehézséget rejti: egy véges eljárás végtelen sokszori finomítását.

**A területszámítás problémája.** Ha egy körbe szabályos sokszögeket írunk, a sokszög területét ki tudjuk számolni, hiszen háromszögekre bontható. Ahogy a sokszög oldalszáma nő, a közelítés egyre jobb lesz: a közelítés *végtelenül finomodik*. De mit jelent pontosan az, hogy a sokszögterületek sorozata „megadja" a kör területét? Archimédész (i. e. 250 körül) ezt a **kimerítés módszerének** nevezte, és lényegében helyesen használta — de a fogalmi alapokat nem tudta lefektetni.

**A pillanatnyi sebesség problémája.** Ha $s(t)$ a megtett út a $t$ időpillanatban, akkor a $[t_0, t]$ időintervallumban mért átlagsebesség
$$\frac{\Delta s}{\Delta t} = \frac{s(t) - s(t_0)}{t - t_0}.$$
A *pillanatnyi* sebesség ennek a hányadosnak a határértéke, amikor $t \to t_0$; jelölésben $\frac{ds}{dt}$. Csakhogy $t = t_0$ esetén a hányados $\frac{0}{0}$ alakú, tehát értelmetlen. A kérdés tehát az: hogyan beszélhetünk egy hányados „végső" értékéről anélkül, hogy valaha is behelyettesítenénk?

Mindkét kérdés megválaszolásához két fogalomra van szükség: a **határértékre** és a **folytonosságra**. Ezek az analízis alappillérei.

**Történeti vázlat.** A csírák a görögöknél jelennek meg (Archimédész kimerítéses módszere), de a tényleges kalkulus a XVII–XVIII. században születik meg. Newton az 1665-ös pestisjárvány idején dolgozta ki alapgondolatait, amikor Cambridge-et bezárták és hazaköltözött; ugyanebben az időszakban, tőle függetlenül, Leibniz is eljutott a differenciál- és integrálszámításhoz. A két felfedezés prioritási vitája évtizedekre megmérgezte az angol és a kontinentális matematika viszonyát. A **szilárd alapokat** azonban csak a XIX–XX. században fektették le: Cauchy az $\varepsilon$–$\delta$ típusú definíciókkal, Weierstrass a teljes aritmetizálással, Dedekind pedig a valós számok szeletekkel történő megkonstruálásával.

## 2. Számhalmazok és a √2 irracionalitása

A valós számok szigorú, axiomatikus megalapozását (vagyis annak bizonyítását, hogy ilyen struktúra létezik, és lényegében egyértelmű) más tárgyra hagyjuk; itt az axiómákat adottnak vesszük, és megnézzük, mire elegendők.

**Definíció (alapvető számhalmazok).**
- $\mathbb{N} = \{1, 2, 3, \dots\}$ a **természetes számok** halmaza. (Egyes szerzők a nullával kezdik; ez pusztán konvenció kérdése.)
- $\mathbb{Z}$ az **egész számok** halmaza.
- $\mathbb{Q} = \left\{ \frac{p}{q} : p, q \in \mathbb{Z},\ q \neq 0 \right\}$ a **racionális számok** halmaza.

A racionális számok teste már gazdag: bármely két racionális szám között van további racionális szám, és a négy alapművelet (a nullával való osztást kivéve) nem vezet ki belőle. Ennek ellenére a $\mathbb{Q}$ „lyukacsos" — és ezt a legegyszerűbb geometriai kérdés is kideríti.

**Tétel.** $\sqrt{2} \notin \mathbb{Q}$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $\sqrt{2} = \frac{p}{q}$ valamely $p, q \in \mathbb{Z}$, $q \neq 0$ számokkal. Négyzetre emelve $2 = \frac{p^2}{q^2}$, azaz
$$2q^2 = p^2.$$
Tekintsük most a $2$-es prím kitevőjét a két oldal prímfelbontásában. A jobb oldalon $p^2$ áll, amelyben minden prím kitevője **páros** (hiszen egy négyzetszámról van szó). A bal oldalon $2q^2$ áll, amelyben a $2$ kitevője eggyel nagyobb, mint $q^2$-ben, tehát **páratlan**. A számelmélet alaptétele szerint a prímfelbontás egyértelmű, így a két kitevőnek meg kellene egyeznie — páros szám azonban nem lehet egyenlő páratlannal. Ellentmondás. $\blacksquare$

Ez az egyetlen állítás adja az egész félév motivációját: az egységnyi oldalú négyzet átlójának hossza *nem* racionális szám, tehát ha a számegyenest a racionális számokkal azonosítanánk, akkor a négyzet átlója „átlépne" egy lyukon. Ezt a lyukat kell betömni, és erre szolgál a teljességi axióma.

## 3. A rendezés axiómái

A valós számok rendszerét a $(\mathbb{R}, 0, 1, +, \cdot, <)$ struktúra írja le: két kitüntetett konstans ($0$ és $1$), két kétváltozós művelet ($+$ és $\cdot$), valamint egy kétváltozós reláció ($<$). A testaxiómákat (asszociativitás, kommutativitás, disztributivitás, inverzek létezése) ismertnek tételezzük; az analízis szempontjából a **rendezési** és a **teljességi** axiómák a lényegesek.

**Jelölések.** $a > b \iff b < a$, továbbá $a \le b \iff (a < b \ \text{vagy}\ a = b)$.

**A rendezési axiómák.**

- **$R_1$ (trichotómia).** Bármely $a, b \in \mathbb{R}$ esetén az
 $$a < b, \qquad a = b, \qquad b < a$$
 állítások közül **pontosan egy** teljesül.
- **$R_2$ (tranzitivitás).** Bármely $a, b, c \in \mathbb{R}$ esetén, ha $a < b$ és $b < c$, akkor $a < c$.
- **$R_3$ (összeadással való összeférhetőség).** Bármely $a, b, c \in \mathbb{R}$ esetén, ha $a < b$, akkor $a + c < b + c$.
- **$R_4$ (szorzással való összeférhetőség).** Bármely $a, b \in \mathbb{R}$ és bármely $c > 0$ esetén, ha $a < b$, akkor $ac < bc$.

Érdemes felfigyelni arra, hogy $R_4$-ben a $c > 0$ feltétel elhagyhatatlan: negatív számmal szorozva az egyenlőtlenség megfordul. Ez a megfigyelés — amely elemi iskolás szabálynak tűnik — valójában $R_3$ és $R_4$ következménye, nem pedig külön axióma.

## 4. Abszolút érték és háromszög-egyenlőtlenség

Az analízis alapvetően a **távolságról** szól: „$x$ közel van $a$-hoz" azt jelenti, hogy $|x - a|$ kicsi. Ezért az abszolút érték nem másodlagos technikai eszköz, hanem a tárgyalás központi jelölése.

**Definíció (abszolút érték).**
$$|x| = \begin{cases} x & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -x & \text{ha } x < 0. \end{cases}$$

Az első és a második eset természetesen összevonható: $|x| = x$, ha $x \ge 0$.

**Tétel (háromszög-egyenlőtlenség).** Minden $a, b \in \mathbb{R}$ esetén
$$|a + b| \le |a| + |b|.$$

*Bizonyítás.* Először két segédállítást igazolunk, amelyek közvetlenül a definícióból adódnak.

Ha $x \ge 0$, akkor $|x| = x$. Ha pedig $x < 0$, akkor $|x| = -x > 0 > x$. Mindkét esetben tehát
$$|x| \ge x.$$
Másrészt $|x| = |-x|$, és az előző állítást $-x$-re alkalmazva
$$|x| = |-x| \ge -x.$$

Most alkalmazzuk ezeket $a$-ra és $b$-re. Az első alakból
$$|a| \ge a \quad \text{és} \quad |b| \ge b \implies |a| + |b| \ge a + b.$$
A második alakból
$$|a| \ge -a \quad \text{és} \quad |b| \ge -b \implies |a| + |b| \ge -a - b = -(a+b).$$
Az $|a| + |b|$ tehát egyszerre felső korlátja $(a+b)$-nek és $-(a+b)$-nek. Mivel $|a+b|$ e két szám közül az egyik, adódik
$$|a + b| \le |a| + |b|. \qquad \blacksquare$$

## 5. Teljes indukció

A háromszög-egyenlőtlenség több tagra való általánosításához egy bizonyítási elvre van szükségünk, amely az egész félévet végigkíséri.

**A teljes indukció (TIND) elve.** Legyen $A_1, A_2, A_3, \dots$ állítások egy sorozata. Ha
1. $A_1$ igaz, és
2. minden $n \in \mathbb{N}$ esetén $A_n \implies A_{n+1}$ igaz,

akkor minden $n \in \mathbb{N}$-re $A_n$ igaz.

**Tétel (általánosított háromszög-egyenlőtlenség).** Minden $n \in \mathbb{N}$ és minden $a_1, \dots, a_n \in \mathbb{R}$ esetén
$$|a_1 + a_2 + \dots + a_n| \le |a_1| + |a_2| + \dots + |a_n|.$$

*Bizonyítás.* Legyen $A_n$ az az állítás, hogy
$$|a_1 + \dots + a_{n+1}| \le |a_1| + \dots + |a_{n+1}|.$$

**Kezdőlépés.** $A_1$ éppen a már bizonyított kéttagú háromszög-egyenlőtlenség: $|a_1 + a_2| \le |a_1| + |a_2|$. Ez igaz.

**Indukciós lépés.** Tegyük fel, hogy $A_n$ igaz. Csoportosítsuk az $(n+2)$ tagot úgy, hogy az első $(n+1)$ tagot egyetlen $A$ számnak, az utolsót $B$-nek tekintjük:
$$|\underbrace{a_1 + \dots + a_{n+1}}_{A} + \underbrace{a_{n+2}}_{B}| \le |a_1 + \dots + a_{n+1}| + |a_{n+2}|,$$
ahol a kéttagú háromszög-egyenlőtlenséget alkalmaztuk. Az indukciós feltevés szerint az első tag becsülhető:
$$\le |a_1| + \dots + |a_{n+1}| + |a_{n+2}|.$$
Ezzel $A_{n+1}$-et igazoltuk, tehát a TIND elve szerint az állítás minden $n$-re fennáll. $\blacksquare$

## 6. A bővített számegyenes és az intervallumok

**Definíció (bővített számegyenes).** Vezessünk be két új **szimbólumot**, $+\infty$-t és $-\infty$-t, amelyek *nem* valós számok: $+\infty, -\infty \notin \mathbb{R}$. A rendezést kiterjesztjük rájuk azzal a megállapodással, hogy
$$\forall x \in \mathbb{R}: \quad -\infty < x < +\infty.$$
A
$$\overline{\mathbb{R}} = \mathbb{R} \cup \{+\infty\} \cup \{-\infty\}$$
halmazt **bővített számegyenesnek** nevezzük.

Hangsúlyozni kell: a $\pm\infty$ szimbólumok, nem számok. Nem alkotnak testet, a szokásos műveletek nem terjeszthetők ki rájuk maradéktalanul (ezt a „kritikus határértékek" tárgyalásánál látjuk majd). Egyetlen szerepük, hogy a „minden határon túl nő" fordulatot tömören kimondhassuk.

**Definíció (intervallumok).** Ha $a, b \in \mathbb{R}$ és $a \le b$, akkor
a **zárt intervallum**:
$$[a, b] = \{x \in \mathbb{R} : a \le x \le b\},$$
a **nyílt intervallum**:
$$(a, b) = \{x \in \mathbb{R} : a < x < b\}.$$
Hasonlóan értelmezzük a félig zárt $[a, b)$ és $(a, b]$ intervallumokat. Végtelen hosszúságú intervallumok:
$$(-\infty, a] = \{x \in \mathbb{R} : x \le a\} \quad \text{zárt félegyenes},$$
továbbá $(-\infty, a)$, $[a, +\infty)$, $(a, +\infty)$.

## 7. Korlátosság, maximum és minimum

**Definíció (korlát).** Legyen $H \subset \mathbb{R}$. Az $a \in \mathbb{R}$ szám **felső korlátja** $H$-nak, ha minden $h \in H$ esetén $h \le a$; **alsó korlátja**, ha minden $h \in H$ esetén $h \ge a$. Ha $H$-nak van felső (alsó) korlátja, akkor $H$-t **felülről (alulról) korlátosnak** nevezzük. Ha $H$ alulról is és felülről is korlátos, akkor egyszerűen **korlátos**.

**Megjegyzés.** $H$ akkor és csak akkor korlátos, ha $\exists K \in \mathbb{R}$, amelyre minden $h \in H$ esetén $|h| \le K$.

*Bizonyítás.* Ha $|h| \le K$ minden $h$-ra, akkor $-K \le h \le K$, tehát $-K$ alsó, $K$ felső korlát. Megfordítva, ha $m$ alsó és $M$ felső korlát, azaz $m \le h \le M$ minden $h \in H$-ra, akkor a
$$K \stackrel{\text{def}}{=} \max\{|m|, |M|\}$$
választás megfelelő korlát. $\blacksquare$

**Definíció (maximum, minimum).** Ha $H \subset \mathbb{R}$ és létezik olyan $M \in H$ elem, amelyre minden $h \in H$ esetén $h \le M$, akkor $M$-et a $H$ **legnagyobb elemének**, azaz **maximumának** nevezzük; jelölése $\max H$. Hasonlóan, ha létezik $m \in H$, amelyre minden $h \in H$-ra $h \ge m$, akkor $m$ a $H$ **minimuma**, jelölése $\min H$.

Döntő mozzanat, hogy a maximumnak **eleme kell legyen** a halmaznak.

**Példa.** Legyen $H = (0, 1]$. Ekkor $\max H = 1$ (hiszen $1 \in H$, és minden elem legfeljebb $1$), de $\min H$ **nem létezik**: bármely $h \in (0,1]$ esetén $h/2$ is a halmazban van, és kisebb $h$-nál.

**Megfigyelés.** Ha $\max H$ létezik, akkor felső korlátja $H$-nak. Sőt, ha $b \in \mathbb{R}$ tetszőleges felső korlátja $H$-nak, akkor $\max H \le b$, hiszen $\max H \in H$. Vagyis
$$\max H \ \text{a } H \ \text{legkisebb felső korlátja (l.k.f.k.).}$$

Ez a megfigyelés mutatja meg, hogyan általánosítsunk. A maximum gyakran nem létezik, a *legkisebb felső korlát* azonban — mint mindjárt látni fogjuk — mindig igen. Egy feltétellel: ha $\mathbb{R}$-ben dolgozunk, nem $\mathbb{Q}$-ban.

**A $\mathbb{Q}$ hiányossága.** Legyen
$$H_{\sqrt{2}} = \{x \in \mathbb{Q} : x^2 < 2\}.$$
Ennek a halmaznak **van** racionális felső korlátja: például $2$ jó, hiszen ha $x > 2$, akkor $x^2 > 4 > 2$, tehát $x \notin H_{\sqrt{2}}$. Ugyanakkor $H_{\sqrt{2}}$-nek **nincs** $\mathbb{Q}$-beli *legkisebb* felső korlátja: bármely racionális felső korlát fölé mindig találunk egy nála kisebbet, mert az „ideális" legkisebb felső korlát $\sqrt{2}$ volna, ez pedig a 2. szakasz tétele szerint nem racionális. A $\mathbb{Q}$ tehát lyukacsos, és pontosan ezt a lyukat tömi be a következő axióma.

## 8. A teljességi axióma: szuprémum és infimum

**Teljességi tulajdonság (axióma).** Ha $H \subset \mathbb{R}$, $H \neq \emptyset$ és $H$ felülről korlátos, akkor $H$-nak **van** $\mathbb{R}$-beli legkisebb felső korlátja. Ezt a $H$ **szuprémumának** (más néven felső határának) nevezzük; jelölése $\sup H$.

**Tétel.** Ha létezik, akkor $\sup H$ egyértelmű.

*Bizonyítás.* Ha $s_1$ és $s_2$ is legkisebb felső korlát volna, akkor mindkettő felső korlát, így a „legkisebb" tulajdonságból $s_1 \le s_2$ és $s_2 \le s_1$, tehát $s_1 = s_2$. $\blacksquare$

Az alsó oldalra vonatkozó állítást nem kell külön axiómaként kimondani: következik.

**Tétel (az infimum létezése).** Ha $H \neq \emptyset$ és $H$ alulról korlátos, akkor $H$-nak van legnagyobb alsó korlátja (**infimuma**, jelölése $\inf H$).

*Bizonyítás.* Tekintsük a tükrözött halmazt:
$$-H = \{-h : h \in H\}.$$
Ez nem üres, és felülről korlátos (ha $k$ alsó korlátja $H$-nak, akkor $-k$ felső korlátja $-H$-nak). A teljességi tulajdonság szerint tehát létezik
$$M = \sup(-H) \in \mathbb{R}.$$
Legyen $m = -M$. Először: $m$ alsó korlát. Valóban, minden $h \in H$ esetén $-h \le M$, azaz $h \ge -M = m$.

Másodszor: $m$ a **legnagyobb** alsó korlát. Tegyük fel indirekt, hogy létezik $m' > m$ alsó korlát. Ekkor minden $h \in H$-ra $m' \le h$, tehát $-m' \ge -h$, azaz $-m'$ felső korlátja $-H$-nak. Csakhogy $m < m'$ miatt $-m' < -m = M$, vagyis találtunk $M$-nél kisebb felső korlátot $-H$-hoz — ez ellentmond annak, hogy $M = \sup(-H)$ a legkisebb felső korlát. $\blacksquare$

**Egyezmény (a $\pm\infty$ használata).** A jelölés kiterjesztésével minden halmaznak lesz szuprémuma és infimuma a bővített számegyenesen:
- Ha $H \neq \emptyset$ nem korlátos felülről, akkor $\sup H = +\infty$.
- Ha $H \neq \emptyset$ nem korlátos alulról, akkor $\inf H = -\infty$.
- $\sup \emptyset = -\infty$ és $\inf \emptyset = +\infty$.

Az üres halmazra vonatkozó megállapodás elsőre meghökkentő, de következetes: az üres halmaznak *minden* valós szám felső korlátja, így a legkisebb felső korlát csak $-\infty$ lehet.

**Megjegyzés.** Ha $\max H$ létezik, akkor $\max H = \sup H$. A megfordítás nem igaz: $\max(0,1)$ nem létezik, de $\sup(0,1) = 1$. A szuprémum tehát a maximum „általánosítása", amely akkor is létezik, amikor a halmaz nem éri el a saját határát.

## 9. Az arkhimédészi és a Cantor-féle tulajdonság

A teljességi axióma két olyan következménnyel jár, amelyek önmagukban is alapvetők, és amelyeket sok felépítésben külön axiómaként mondanak ki.

**Tétel (arkhimédészi tulajdonság).** Minden $x \in \mathbb{R}$-hez létezik olyan $n \in \mathbb{N}$, amelyre $n > x$.

Szemléletesen: a természetes számok „minden határon túl nőnek", nincs olyan valós szám, amely az egész $\mathbb{N}$ fölött volna. Ez nyilvánvalónak tűnik — mégis bizonyításra szorul, és éppen a teljességből következik.

*Bizonyítás.* Indirekt. Tegyük fel, hogy létezik olyan $a \in \mathbb{R}$, amelyre minden $n \in \mathbb{N}$ esetén $a > n$. Ekkor $H = \mathbb{N}$ nem üres és felülről korlátos (hiszen $a$ felső korlát), így a teljességi tulajdonság szerint létezik
$$c = \sup \mathbb{N} \in \mathbb{R}.$$
Mivel $c$ felső korlát, minden $n \in \mathbb{N}$-re $c \ge n$. Alkalmazzuk ezt az $n+1$ természetes számra: minden $n$-re $c \ge n + 1$, azaz
$$c - 1 \ge n.$$
Eszerint $c - 1$ is felső korlátja $\mathbb{N}$-nek. Csakhogy $c - 1 < c$, ami ellentmond annak, hogy $c$ a **legkisebb** felső korlát. $\blacksquare$

**Tétel (Cantor-féle tulajdonság).** Ha az
$$[a_1, b_1] \supset [a_2, b_2] \supset [a_3, b_3] \supset \dots$$
egymásba skatulyázott korlátos zárt intervallumok sorozata, akkor
$$\bigcap_{n=1}^{\infty} [a_n, b_n] \neq \emptyset.$$

*Bizonyítás.* Az egymásba skatulyázottság azt jelenti, hogy a bal végpontok növekednek, a jobb végpontok csökkennek:
$$a_1 \le a_2 \le a_3 \le \dots \quad \text{és} \quad b_1 \ge b_2 \ge b_3 \ge \dots,$$
és persze minden $n$-re $a_n \le b_n$.

Legyen $H = \{a_n : n \in \mathbb{N}\}$. Ez nem üres, és felülről korlátos: $b_1 \ge b_n \ge a_n$ minden $n$-re, tehát $b_1$ felső korlát. A teljességi tulajdonság szerint létezik
$$c \stackrel{\text{def}}{=} \sup H \in \mathbb{R}.$$

Azt állítjuk, hogy **minden** $b_n$ felső korlátja $H$-nak. Legyen $n$ rögzített, és tekintsünk egy tetszőleges $a_k$ elemet.
- Ha $k \le n$, akkor $a_k \le a_n \le b_n$.
- Ha $k \ge n$, akkor $a_k \le b_k \le b_n$.

Mindkét esetben $a_k \le b_n$, tehát $b_n$ valóban felső korlát. Mivel $c$ a legkisebb felső korlát, ebből $c \le b_n$ következik minden $n$-re. Másrészt $c$ felső korlát, így $a_n \le c$ minden $n$-re. Összefoglalva
$$a_n \le c \le b_n \quad \text{minden } n \in \mathbb{N}\text{-re,}$$
azaz $c \in [a_n, b_n]$ minden $n$-re, tehát $c$ eleme a metszetnek. $\blacksquare$

**Megjegyzés (az axiómarendszer rugalmassága).** Megmutatható, hogy a teljességi tulajdonság **ekvivalens** az arkhimédészi és a Cantor-féle tulajdonság együttesével:
$$(\text{Teljességi tul.}) \iff \big( (\text{Arkhimédészi tul.}) \wedge (\text{Cantor-féle tul.}) \big).$$
Az egyik irányt éppen most láttuk. Ez azt jelenti, hogy többféle axiomatikus felépítés lehetséges: vagy a szuprémum-elvet posztuláljuk, vagy az arkhimédészi és Cantor-tulajdonságot — ugyanoda jutunk.

---

# II. RÉSZ: NEVEZETES EGYENLŐTLENSÉGEK

Az analízisben az egzakt egyenlőség ritkán érhető el; az igazi eszköz az **egyenlőtlenség**, vagyis a becslés. Ebben a részben három klasszikust bizonyítunk, amelyek a félév során újra és újra elő fognak kerülni.

## 10. A számtani és a mértani közép

**Definíció (közepek).** Legyenek $a_1, \dots, a_n$ pozitív valós számok. Ekkor
- a **számtani közép** $\displaystyle S = \frac{a_1 + \dots + a_n}{n}$,
- a **mértani közép** $\displaystyle m = \sqrt[n]{a_1 \cdots a_n}$,
- a **harmonikus közép** $\displaystyle h = \frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}$.

**Tétel (számtani és mértani közép közötti egyenlőtlenség).** Ha $a_1, \dots, a_n$ pozitív számok, akkor
$$\sqrt[n]{a_1 \cdots a_n} \le \frac{a_1 + \dots + a_n}{n},$$
és egyenlőség akkor és csak akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$.

*Bizonyítás (Cauchy „trükkös indukciója").* A szokásos indukció itt nem működik közvetlenül. Cauchy ötlete az, hogy először **kettőhatványokra** ugorjunk fel, majd **visszafelé** lépkedve töltsük ki a hézagokat. Jelölje $A_n$ az $n$ számra vonatkozó állítást. Három lépést igazolunk:

- **I.** $A_2$ igaz.
- **II.** $A_{2^k} \implies A_{2^{k+1}}$ (ebből $A_n$ igaz minden $n = 2^k$ alakú számra).
- **III.** $A_n$ és $l < n$ esetén $A_l$ igaz (ebből minden $n \in \mathbb{N}$-re adódik az állítás, hiszen minden szám alatta marad valamely kettőhatványnak).

**I. lépés: két szám esete.** Azt kell látnunk, hogy $\sqrt{ab} \le \frac{a+b}{2}$. Mindkét oldal nemnegatív, tehát négyzetre emelhetünk:
$$ab \le \frac{(a+b)^2}{4} = \frac{a^2 + 2ab + b^2}{4}.$$
Átrendezve
$$0 \le \frac{a^2 - 2ab + b^2}{4} = \frac{(a-b)^2}{4},$$
ami nyilvánvalóan igaz, és egyenlőség pontosan akkor van, ha $a = b$.

**II. lépés: ugrás a következő kettőhatványra.** Tegyük fel, hogy $A_{2^k}$ igaz. Osszuk a $2^{k+1}$ számot két egyenlő blokkra, és jelölje
$$\alpha = \sqrt[2^k]{a_1 \cdots a_{2^k}}, \qquad \beta = \sqrt[2^k]{a_{2^k+1} \cdots a_{2^{k+1}}}$$
a két blokk mértani közepét. Az indukciós feltevés szerint
$$\alpha \le \frac{a_1 + \dots + a_{2^k}}{2^k}, \qquad \beta \le \frac{a_{2^k+1} + \dots + a_{2^{k+1}}}{2^k},$$
mindkét helyen egyenlőséggel pontosan akkor, ha a megfelelő blokk elemei egyenlők. Most az összes szám mértani közepét a két blokk mértani közepéből rakjuk össze, és alkalmazzuk rájuk az I. lépést:
$$\sqrt[2^{k+1}]{a_1 \cdots a_{2^{k+1}}} = \sqrt{\alpha\beta} \le \frac{\alpha + \beta}{2} \le \frac{1}{2} \cdot \frac{a_1 + \dots + a_{2^k} + a_{2^k+1} + \dots + a_{2^{k+1}}}{2^k} = \frac{a_1 + \dots + a_{2^{k+1}}}{2^{k+1}}.$$
Egyenlőség csak akkor, ha $\alpha = \beta$ és a korábbi lépésekben is egyenlőség áll, azaz ha minden szám egyenlő.

**III. lépés: visszafelé lépés.** Legyen $l < n$, és tegyük fel, hogy $A_n$ igaz. Legyen
$$s = \frac{a_1 + \dots + a_l}{l}$$
az $l$ szám számtani közepe. A trükk: alkalmazzuk $A_n$-t az
$$a_1, \dots, a_l, \underbrace{s, s, \dots, s}_{n - l \ \text{darab}}$$
számokra, azaz töltsük fel a hiányzó helyeket magával a számtani középpel. Ekkor a jobb oldal számlálója
$$a_1 + \dots + a_l + (n-l)s = l\cdot s + (n-l)s = ns,$$
tehát
$$\sqrt[n]{a_1 \cdots a_l \cdot s^{\,n-l}} \le \frac{ns}{n} = s.$$
Emeljük mindkét oldalt az $n$-edik hatványra:
$$a_1 \cdots a_l \cdot s^{\,n-l} \le s^n \implies a_1 \cdots a_l \le \frac{s^n}{s^{\,n-l}} = s^l.$$
Végül vonjunk $l$-edik gyököt:
$$\sqrt[l]{a_1 \cdots a_l} \le s = \frac{a_1 + \dots + a_l}{l},$$
ami éppen $A_l$. Egyenlőség pontosan akkor, ha $a_1 = \dots = a_l = s$. $\blacksquare$

## 11. A harmonikus közép

A mértani és a harmonikus közép viszonya külön bizonyítás nélkül adódik: elég a számtani–mértani egyenlőtlenséget a **reciprokokra** alkalmazni.

**Tétel.** Pozitív $a_1, \dots, a_n$ számokra
$$\sqrt[n]{a_1 \cdots a_n} \ge \frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}.$$

*Bizonyítás.* Alkalmazzuk a számtani–mértani egyenlőtlenséget az $a_k' = \frac{1}{a_k}$ számokra:
$$\sqrt[n]{\frac{1}{a_1} \cdots \frac{1}{a_n}} \le \frac{\frac{1}{a_1} + \dots + \frac{1}{a_n}}{n}.$$
A bal oldal éppen $\frac{1}{\sqrt[n]{a_1 \cdots a_n}}$, azaz a mértani közép reciproka. Reciprokot véve (ami pozitív számok esetén megfordítja az egyenlőtlenséget):
$$\underbrace{\sqrt[n]{a_1 \cdots a_n}}_{m} \ge \underbrace{\frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}}_{h}. \qquad \blacksquare$$

Vagyis a három közép sorrendje mindig $h \le m \le S$.

## 12. A Bernoulli-egyenlőtlenség

**Tétel (Bernoulli-egyenlőtlenség).** Ha $x \ge -1$, akkor minden $n = 1, 2, \dots$ esetén
$$(1+x)^n \ge 1 + nx.$$

*Bizonyítás (teljes indukcióval).*

**Kezdőlépés.** $n = 1$ esetén $(1+x)^1 = 1 + 1\cdot x$, tehát egyenlőség áll fenn.

**Indukciós lépés.** Tegyük fel, hogy az állítás igaz $n$-re. Ekkor
$$(1+x)^{n+1} = (1+x)(1+x)^n \ge (1+x)(1+nx),$$
ahol az egyenlőtlenséghez felhasználtuk az indukciós feltevést **és** azt, hogy $1 + x \ge 0$ — itt van szükség az $x \ge -1$ feltételre, hiszen negatív számmal szorozva megfordulna az egyenlőtlenség. Kibontva:
$$(1+x)(1+nx) = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x,$$
mert $nx^2 \ge 0$. Ezzel az állítás $(n+1)$-re is igaz. $\blacksquare$

**Kiterjesztés racionális kitevőre.** Megmutatható (és később, a hatványozás tárgyalása után magától értetődővé válik), hogy ha $x \ge -1$ és $r \in \mathbb{Q}$, akkor
$$r < 1 \implies (1+x)^r \le 1 + rx, \qquad r > 1 \implies (1+x)^r \ge 1 + rx,$$
és mindkét esetben egyenlőség akkor és csak akkor, ha $x = 0$.

---

# III. RÉSZ: FÜGGVÉNYEK ÉS RELÁCIÓK

## 13. A függvény fogalma

**Definíció (függvény).** Legyenek $A$ és $B$ adott halmazok. Ha minden $a \in A$ elemhez hozzá van rendelve egy $b \in B$ elem, akkor ezt a hozzárendelést **függvénynek** nevezzük; jelölése $f : A \to B$. (Létezik ennél absztraktabb, halmazelméleti definíció is, amely a függvényt rendezett párok halmazaként adja meg; ehhez a relációk fogalmára lesz szükségünk, lásd a 16. szakaszt.)

- Az $A$ halmaz az $f$ **értelmezési tartománya**; jelölése $D(f)$.
- A
 $$C = \{b : \exists a \in A,\ b = f(a)\} = f(A)$$
 halmaz az $f$ **értékkészlete**; jelölése $R(f)$.

Fontos megkülönböztetni $B$-t (ahova a függvény „képez") és $R(f)$-et (amit ténylegesen felvesz). A kettő egybeesése külön tulajdonság, lásd alább.

## 14. Injektív, szürjektív, bijektív függvények; az inverz

**Definíció (injektivitás).** Az $f : A \to B$ függvény **injektív**, ha bármely $a_1, a_2 \in A$, $a_1 \neq a_2$ esetén $f(a_1) \neq f(a_2)$. Más szóval: különböző helyeken különböző értéket vesz fel, azaz minden érték legfeljebb egyszer fordul elő.

**Definíció (szürjektivitás).** Az $f : A \to B$ függvény **szürjektív** (más néven ráképezés), ha $R(f) = B$, vagyis minden $b \in B$ elemet felvesz.

**Definíció (bijektivitás).** Az $f : A \to B$ függvény **bijektív** (kölcsönösen egyértelmű), ha egyszerre injektív és szürjektív.

**Definíció (kép).** Ha $H \subset A$, akkor $f(H) = \{f(x) : x \in H\}$ a $H$ **képe**. Speciálisan $R(f) = f(A)$.

**Definíció (inverz függvény).** Ha $f : A \to B$ bijektív, akkor azt a hozzárendelést, amely minden $b \in B = R(f)$ elemhez azt az egyértelműen meghatározott $a \in A$ elemet rendeli, amelyre $f(a) = b$, az $f$ **inverzének** nevezzük; jelölése $f^{-1}$.

Ekkor
$$D(f^{-1}) = R(f) = B, \qquad R(f^{-1}) = D(f) = A,$$
$f^{-1}$ maga is bijektív, és nyilvánvalóan $(f^{-1})^{-1} = f$.

A bijektivitás mindkét fele szükséges: az injektivitás biztosítja, hogy a hozzárendelés *egyértelmű*, a szürjektivitás pedig azt, hogy *minden* $b$-hez legyen mit rendelni.

## 15. Kompozíció és az identikus függvény

**Definíció (összetett függvény).** Ha $f : A \to B$ és $g : C \to D$ függvények, akkor az $f$ és $g$ **összetétele** (kompozíciója) az a $h$ függvény, amelyre
$$h(a) = g(f(a))$$
minden olyan $a \in D(f) = A$ helyen, ahol $f(a) \in C = D(g)$. Jelölése $g \circ f$.

A leggyakoribb eset az, amikor $Y = B = C$, azaz $f : X \to Y$, $g : Y \to Z$ és $R(f) \subset Y = D(g)$; ekkor $g \circ f : X \to Z$. Nyilvánvaló, hogy $R(g \circ f) \subset R(g)$.

**Definíció (identikus függvény).** Azt az $f : A \to A$ függvényt, amelyre minden $a \in A$ esetén $f(a) = a$, az $A$ halmaz **identikus függvényének** nevezzük; jelölése $\mathrm{id}_A$.

**Megjegyzés.** Ha $f : A \to B$ bijektív, akkor
$$f^{-1} \circ f = \mathrm{id}_A, \qquad f \circ f^{-1} = \mathrm{id}_B.$$

**Tétel.** Legyen $f : A \to B$ és $g : B \to A$. Ekkor $g = f^{-1}$ akkor és csak akkor, ha egyszerre teljesül
$$\text{(I)}\quad g \circ f = \mathrm{id}_A \qquad \text{és} \qquad \text{(II)}\quad f \circ g = \mathrm{id}_B.$$

**Megjegyzés (a két feltétel függetlensége).** Fontos, hogy (I) $\not\Rightarrow$ (II) és (II) $\not\Rightarrow$ (I). Ellenpélda az első irányra: legyen $A = B = \mathbb{N}$,
$$f(n) = n + 1, \qquad g(n) = \begin{cases} n - 1 & \text{ha } n > 1, \\ 1 & \text{ha } n = 1. \end{cases}$$
Ekkor $g(f(n)) = g(n+1) = n$ minden $n \in \mathbb{N}$-re, tehát (I) fennáll. Ugyanakkor $f(g(1)) = f(1) = 2 \neq 1$, tehát (II) nem teljesül. (Az ok: $f$ injektív, de nem szürjektív.)

## 16. Rendezett n-esek, sorozatok, Descartes-szorzat, relációk

**Definíció ($n$-tagú sorozat).** Az $\{1, 2, \dots, n\}$ halmazon értelmezett függvényeket **$n$-tagú sorozatoknak** nevezzük. Ha $a : \{1, \dots, n\} \to A$, akkor jelölése
$$(a(1), a(2), \dots, a(n)) = (a_1, a_2, \dots, a_n) = \{a_i\}_{i=1}^{n}.$$
Más néven **rendezett $n$-es**. Az $n = 2$ eset a **rendezett pár**.

**Definíció (Descartes-szorzat).** Az $A$-beli rendezett párok halmaza, $A \times A$, az $A$ önmagával vett **Descartes-szorzata**. Általánosabban: adott $A$ és $B$ halmazok esetén azon $a : \{1,2\} \to A \cup B$ rendezett párok halmazát, amelyekre $a(1) \in A$ és $a(2) \in B$, az $A$ és $B$ Descartes-szorzatának nevezzük; jelölése $A \times B$.

**Megjegyzés.** Formálisan $(A \times A) \times A \neq A \times (A \times A)$, de mindkettő természetes módon azonosítható a rendezett hármasok halmazával, $A \times A \times A$-val. Ezért a zárójelezést a gyakorlatban elhagyjuk.

**Definíció (végtelen sorozat).** Az $\mathbb{N}$-en értelmezett függvényeket **(végtelen) sorozatoknak** nevezzük. Ha $a : \mathbb{N} \to A$, akkor jelölése
$$(a(1), a(2), \dots) = (a_1, a_2, \dots) = \{a_n\}_{n=1}^{\infty}.$$

**Definíció (reláció).** **Relációnak** nevezünk minden olyan halmazt, amelynek elemei rendezett párok. Ha $R \subset A \times B$, akkor $R$ az $A$ és $B$ feletti reláció. Ha $(a, b) \in R$, akkor azt mondjuk, hogy $a$ és $b$ **$R$-relációban állnak**, ellenkező esetben nem.

**Példa.** Az $(n, m) \in \mathbb{N} \times \mathbb{N}$ pár akkor áll az **oszthatósági** relációban, ha $n$ osztja $m$-et, azaz $n \mid m$.

Ez a definíció mutatja meg, hogyan tehető a függvényfogalom is halmazelméletileg precízzé: egy függvény nem más, mint olyan reláció, amelyben minden $a$ első koordinátához pontosan egy $b$ második koordináta tartozik.

---

# IV. RÉSZ: SZÁMSOROZATOK

## 17. Monotonitás, korlátosság; az (eₙ) sorozat

Innentől kezdve $\mathbb{R}$-beli sorozatokkal, azaz $a : \mathbb{N} \to \mathbb{R}$ függvényekkel foglalkozunk.

**Definíció (monotonitás).** Az $(a_n)$ sorozat
- **monoton növekedő**, ha minden $n \in \mathbb{N}$-re $a_n \le a_{n+1}$;
- **monoton csökkenő**, ha minden $n$-re $a_n \ge a_{n+1}$;
- **szigorúan monoton növekedő**, illetve **csökkenő**, ha a fenti egyenlőtlenségek szigorúak ($<$, illetve $>$).

**Definíció (korlátosság).** Az $(a_n)$ sorozat felülről korlátos, ha az
$$\{a_n : n \in \mathbb{N}\} \subset \mathbb{R}$$
halmaz az. Hasonlóan értelmezzük az alulról korlátosságot és a korlátosságot.

**Példák.** Érdemes négy alapesetet szem előtt tartani, mert végig ezek szolgálnak majd ellenpéldaként:

| sorozat | monotonitás | korlátosság | szemléletes viselkedés |
|---|---|---|---|
| $a_n = \frac{1}{n}$ | szigorúan monoton csökkenő | korlátos | „egyre közelebb kerül $0$-hoz" |
| $b_n = (-1)^n$ | nem monoton | korlátos | „ide-oda ugrál" |
| $c_n = n$ | szigorúan monoton növekedő | alulról korlátos, felülről nem | „minden határon túl nő" |
| $d_n = (-1)^n n$ | nem monoton | nem korlátos | se nem tart sehova, se nem korlátos |

Most bizonyítunk egy állítást, amely az egész félév egyik legfontosabb konstrukciójához vezet.

**Állítás.** Az
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekedő.

*Bizonyítás.* Azt kell megmutatnunk, hogy
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n+1}\right)^{n+1}.$$
Alkalmazzuk a számtani–mértani egyenlőtlenséget $(n+1)$ számra: vegyük $n$ darab $\left(1 + \frac{1}{n}\right)$ számot és egy darab $1$-est. Mivel nem mind egyenlő, az egyenlőtlenség szigorú:
$$\sqrt[n+1]{\left(1 + \tfrac{1}{n}\right)^n \cdot 1} < \frac{n\left(1 + \frac{1}{n}\right) + 1}{n+1} = \frac{n + 1 + 1}{n+1} = 1 + \frac{1}{n+1}.$$
Mindkét oldalt az $(n+1)$-edik hatványra emelve éppen a kívánt egyenlőtlenséget kapjuk. $\blacksquare$

Hasonlóan megmutatható, hogy a
$$d_n = \left(1 + \frac{1}{n}\right)^{n+1}$$
sorozat szigorúan monoton **csökkenő**. A két sorozat tehát „közrefogja" egymást, és — mint a 63. szakaszban látni fogjuk — közös határértékük az $e$ szám.

Numerikusan:
$$e_1 = 2, \quad e_2 = 2{,}25, \quad \dots, \quad e_{100} = 2{,}704813829\dots, \quad e_{1000} = 2{,}716923932\dots,$$
és a sorozat egyre közelebb kerül az
$$e = 2{,}7182818\dots$$
számhoz. Hangsúlyozzuk: ez egyelőre **puszta tapasztalat**, nem bizonyítás — ahhoz előbb tisztáznunk kell, mit is jelent az, hogy „egyre közelebb kerül". Ugyanez a helyzet az $1{,}4;\ 1{,}41;\ 1{,}414;\ \dots$ sorozattal, amely „egyre közelebb kerül" $\sqrt{2}$-höz.

## 18. A sorozat határértéke

**Definíció (határérték).** Az $(a_n)$ sorozat **határértéke** az $a \in \mathbb{R}$ szám, ha minden $\varepsilon > 0$ számhoz létezik olyan $n_\varepsilon$ küszöbindex, amelyre minden $n \ge n_\varepsilon$ esetén
$$|a_n - a| < \varepsilon.$$

A definíció szerkezete a döntő: **először** adják meg a tűrést ($\varepsilon$), és **utána** keressük a küszöböt ($n_\varepsilon$), amely függhet $\varepsilon$-tól. (Az $n \ge n_\varepsilon$ helyett $n > n_\varepsilon$ is írható, és sokan $n_0$-t használnak jelölésként; ez lényegtelen.)

Az $|a_n - a| < \varepsilon$ feltétel szemléletes átfogalmazása:
$$a_n \in B(a, \varepsilon) = \{x \in \mathbb{R} : |x - a| < \varepsilon\} = (a - \varepsilon,\ a + \varepsilon),$$
ahol $B(a,\varepsilon)$ az $a$ pont **$\varepsilon$ sugarú nyílt környezete** (más jelöléssel $U_\varepsilon(a)$, a német *Umgebung* szó nyomán).

**Jelölések.**
$$\lim_{n \to \infty} a_n = a, \qquad a_n \to a \ \text{ha } n \to +\infty, \qquad a_n \to a, \qquad \lim a_n = a.$$

**Definíció.** Ha $(a_n)$-nek van **véges** határértéke, akkor a sorozat **konvergens**. Ha nem konvergens, akkor **divergens**.

**Példák.**
- $\displaystyle \lim_{n\to\infty} \frac{(-1)^n}{2n} = 0$. Adott $\varepsilon$-hoz a küszöb megkereshető; például $\varepsilon = 0{,}01$ esetén $n_\varepsilon = 50$ megfelel. Fontos: **$n_\varepsilon$ nem egyértelmű**, minden nála nagyobb szám is jó küszöb.
- $\displaystyle \lim_{n\to\infty} (-1)^n n$ nem létezik.
- Az $a_n = n$ és a $b_n = (-1)^n$ sorozat is divergens; mindkettő a definíció tagadásával igazolható.

## 19. A határérték alaptulajdonságai

**Tétel (átfogalmazás véges sok kivétellel).** A következő két állítás ekvivalens:
- **(A)** $a_n \to a$, ha $n \to +\infty$.
- **(B)** Minden $\varepsilon > 0$ esetén az $(a_n)$ sorozatnak csak **véges sok** (indexű) tagja esik $B(a,\varepsilon)$-on kívülre.

*Bizonyítás.* **(A) $\Rightarrow$ (B):** legyen $\varepsilon > 0$ adott. A definíció szerint van olyan $n_\varepsilon$, hogy $n \ge n_\varepsilon$ esetén $a_n \in B(a,\varepsilon)$. Így legfeljebb az első $n_\varepsilon - 1$ tag lehet a környezeten kívül, ami véges sok.

**(B) $\Rightarrow$ (A):** legyen $\varepsilon > 0$ adott. (B) szerint véges sok olyan $n$ van, amelyre $a_n \notin B(a,\varepsilon)$. Válasszuk $n_\varepsilon$-t ezek mindegyikénél nagyobbra. Ekkor minden $n \ge n_\varepsilon$ esetén $a_n \in B(a,\varepsilon)$. $\blacksquare$

Ez az átfogalmazás rendkívül hasznos: azt mondja, hogy a határérték szempontjából a sorozat **eleje közömbös**.

**Tétel (a határérték egyértelműsége).** Ha $a_n \to a$ és $a_n \to b$, akkor $a = b$.

**Tétel.** Ha $a_n \to a$, akkor $(a_{n+1} - a_n) \to 0$.

*Bizonyítás.* Legyen $\varepsilon' > 0$. Mivel $a_n \to a$, van olyan $n_{\varepsilon'}$, hogy minden $n \ge n_{\varepsilon'}$ esetén $|a_n - a| < \varepsilon'$. Ekkor ugyanerre az $n$-re $|a_{n+1} - a| < \varepsilon'$ is fennáll (hiszen $n + 1 > n \ge n_{\varepsilon'}$). A háromszög-egyenlőtlenséggel, a „nulla hozzáadásának" trükkjét alkalmazva:
$$|a_{n+1} - a_n| = |a_{n+1} - a + a - a_n| \le |a_{n+1} - a| + |a_n - a| < 2\varepsilon'.$$
Ha tehát egy $\varepsilon > 0$ adott, válasszuk $\varepsilon' = \frac{\varepsilon}{2}$-t, és az ehhez tartozó $n_{\varepsilon'}$ küszöb jó lesz az $(a_{n+1} - a_n) \to 0$ állításhoz. $\blacksquare$

**Figyelem — a megfordítás hamis!** Abból, hogy $a_{n+1} - a_n \to 0$, **nem** következik, hogy $(a_n)$ konvergens. Ellenpéldát a 28. szakaszban adunk ($a_n = \sum_{k=1}^n \frac{1}{\sqrt{k}}$).

**Tétel.** Ha $a_n \to a$, akkor $(a_n)$ korlátos.

*Bizonyítás.* Alkalmazzuk az előző átfogalmazást $\varepsilon = 1$-gyel: a $B(a,1)$ környezeten kívül csak véges sok tag van. Ezek abszolút értékei közül van legnagyobb, legyen ez $K_0$-nál kisebb. A környezetbe eső tagokra $|a_n| < |a| + 1$. Így a
$$K \stackrel{\text{def}}{=} \max\{K_0,\ |a| + 1\}$$
választás korlát. $\blacksquare$

**Figyelem — a megfordítás itt is hamis:** a $(-1)^n$ sorozat korlátos, de nem konvergens.

## 20. Részsorozatok

**Definíció (részsorozat).** Legyen adott az $(a_n)$ sorozat, továbbá az indexek egy szigorúan növekedő sorozata:
$$n_1 < n_2 < \dots < n_k < \dots, \qquad \{n_1, n_2, \dots\} \subset \mathbb{N}.$$
Ekkor a $b_k = a_{n_k}$ ($k = 1, 2, \dots$) sorozatot az $(a_n)$ **részsorozatának** nevezzük.

**Példa.** Legyen $a_n = (-1)^n$, és válasszuk a páros indexeket: $n_k = 2k$. Ekkor
$$b_k = a_{2k} = (-1)^{2k} = 1,$$
azaz az azonosan $1$ sorozat. Megfigyelés: **$(a_n)$ divergens, de van konvergens részsorozata.** Ez lesz a Bolzano–Weierstrass-tétel csírája.

**Tétel.** Ha $a_n \to a$, akkor tetszőleges $(a_{n_k})$ részsorozatára $a_{n_k} \to a$.

*Bizonyítás.* Minden $\varepsilon > 0$-ra az $(a_n)$-nek csak véges sok tagja esik $B(a,\varepsilon)$-on kívülre; ekkor a részsorozatnak is legfeljebb ennyi. $\blacksquare$

**Tétel (a rendezés öröklődése).** Ha minden $n$-re $a_n \le b_n$, továbbá $a_n \to a$ és $b_n \to b$, akkor $a \le b$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $b < a$, és legyen
$$\varepsilon \stackrel{\text{def}}{=} \frac{a - b}{2} > 0.$$
Válasszunk $n_{\varepsilon,1}$-et és $n_{\varepsilon,2}$-t úgy, hogy
$$\text{(I)}\ \forall n \ge n_{\varepsilon,1}: |a_n - a| < \varepsilon, \qquad \text{(II)}\ \forall n \ge n_{\varepsilon,2}: |b_n - b| < \varepsilon,$$
és legyen $n_\varepsilon = \max\{n_{\varepsilon,1}, n_{\varepsilon,2}\}$. Ha $n \ge n_\varepsilon$, akkor (I) és (II) egyszerre teljesül, tehát
$$a_n > a - \varepsilon = a - \frac{a-b}{2} = \frac{a+b}{2}, \qquad b_n < b + \varepsilon = b + \frac{a-b}{2} = \frac{a+b}{2}.$$
Eszerint $a_n > \frac{a+b}{2} > b_n$, ami ellentmond az $a_n \le b_n$ feltevésnek. $\blacksquare$

**Figyelem — a szigorú egyenlőtlenség nem öröklődik!** Ha minden $n$-re $a_n < b_n$, $a_n \to a$ és $b_n \to b$, abból **nem** következik, hogy $a < b$; csak $a \le b$. Ellenpélda: $a_n = \frac{1}{2n}$, $b_n = \frac{1}{n}$; itt $a_n < b_n$ minden $n$-re, mégis $a = b = 0$.

**További alapvető ekvivalenciák.** $a_n \to a \iff a_n - a \to 0$, valamint $a_n \to 0 \iff |a_n| \to 0$.

## 21. Monoton és korlátos sorozatok

Ez a tétel az első hely, ahol a teljességi axióma közvetlenül munkába lép.

**Tétel.** Ha $(a_n)$ monoton növekedő és felülről korlátos, akkor konvergens, és
$$a_n \to a = \sup\{a_n : n \in \mathbb{N}\} \in \mathbb{R}.$$

*Bizonyítás.* A halmaz nem üres és felülről korlátos, tehát a teljességi axióma szerint létezik $a = \sup\{a_n\}$. Legyen $\varepsilon > 0$. Mivel $a$ a **legkisebb** felső korlát, $a - \varepsilon$ már **nem** felső korlát, tehát létezik olyan $n_\varepsilon$ index, amelyre
$$a_{n_\varepsilon} > a - \varepsilon.$$
A monotonitás miatt minden $n \ge n_\varepsilon$ esetén
$$a_n \ge a_{n_\varepsilon} > a - \varepsilon,$$
másrészt $a$ felső korlát, tehát $a_n \le a$. Így minden $n \ge n_\varepsilon$-ra $a_n \in B(a,\varepsilon)$, ami éppen a konvergenciát jelenti. $\blacksquare$

Természetesen ugyanígy: monoton csökkenő, alulról korlátos sorozat konvergál az infimumához.

## 22. Tágabb értelemben vett határérték

Az $a_n = n$ és $b_n = \sqrt{n}$ sorozatok monoton növekedők, de nem korlátosak; szemléletesen „$+\infty$-hez tartanak". Ezt is precízzé tesszük.

**Definíció.** Az $(a_n)$ sorozat határértéke $+\infty$, ha minden $K \in \mathbb{R}$-hez létezik olyan $n_K$, hogy minden $n \ge n_K$ esetén
$$a_n > K.$$

A környezet-nyelvezet ide is kiterjeszthető: legyen
$$B(+\infty, K) \stackrel{\text{def}}{=} (K, +\infty)$$
a $+\infty$ **$K$-környezete**; ekkor a definíció úgy szól, hogy $a_n \in B(+\infty, K)$ minden elég nagy $n$-re. Jelölés:
$$\lim_{n\to\infty} a_n = +\infty, \qquad a_n \to +\infty.$$
Ilyenkor azt mondjuk, hogy $(a_n)$ **a $+\infty$-hez divergál**. Hasonlóan definiáljuk a $\lim_{n\to\infty} a_n = -\infty$ esetet a $B(-\infty,K) = (-\infty, K)$ környezettel.

**A sorozatok osztályozása.** Minden $(a_n)$ sorozatra **pontosan az egyik** teljesül:

| | |
|---|---|
| **konvergens**: $a_n \to a \in \mathbb{R}$ | $\Big\}$ van határértéke ($\overline{\mathbb{R}}$-ben) |
| **divergens**: $a_n \to +\infty$ | |
| **divergens**: $a_n \to -\infty$ | |
| **divergens**: $(a_n)$ nem tart sehova (oszcillálva divergál) | nincs határértéke |

**Tétel.** A következők ekvivalensek:
- **(A)** $\lim_{n\to\infty} a_n = +\infty$.
- **(B)** Minden $K \in \mathbb{R}$-re az $(a_n)$-nek csak véges sok tagja kisebb vagy egyenlő $K$-nál (azaz esik $B(+\infty,K)$-n kívülre).

## 23. Átrendezések és a sorozat megváltoztatása

**Definíció (átrendezés).** Ha adott az $(a_n)$ sorozat és egy $f : \mathbb{N} \to \mathbb{N}$ **bijekció**, akkor a $b_n = a_{f(n)}$ sorozatot az $(a_n)$ **átrendezésének** nevezzük.

**Tétel.** Ha $a_n \to \alpha \in \overline{\mathbb{R}}$, és $(b_n)$ az alábbi négy eljárás véges sokszori alkalmazásával keletkezik $(a_n)$-ből, akkor $b_n \to \alpha$:
1. **(I)** átrendezés;
2. **(II)** bizonyos (akár végtelen sok) tag véges sokszori megismétlése;
3. **(III)** véges sok tag hozzávétele;
4. **(IV)** véges sok tag elhagyása.

Ezek az eljárások tehát „határérték-semlegesek". (Figyelem: a *sorok* esetében a helyzet gyökeresen más lesz — ott az átrendezés megváltoztathatja az összeget.)

## 24. A rendőrelv

**Tétel (rendőrelv, más néven csendőrszabály vagy közrefogási elv).** Ha van olyan $n_0$, hogy minden $n \ge n_0$ esetén
$$a_n \le b_n \le c_n,$$
továbbá
$$\lim_{n\to\infty} a_n = \lim_{n\to\infty} c_n = a,$$
akkor $\lim_{n\to\infty} b_n = a$.

*Bizonyítás.* Legyen $\varepsilon > 0$ adott. Létezik $n_{\varepsilon,1}$ és $n_{\varepsilon,2}$ úgy, hogy $n \ge n_{\varepsilon,1}$ esetén $|a_n - a| < \varepsilon$, és $n \ge n_{\varepsilon,2}$ esetén $|c_n - a| < \varepsilon$. Legyen
$$n_\varepsilon = \max\{n_{\varepsilon,1},\ n_{\varepsilon,2},\ n_0\}.$$
Ekkor minden $n \ge n_\varepsilon$-ra
$$a - \varepsilon < a_n \le b_n \le c_n < a + \varepsilon,$$
azaz $|b_n - a| < \varepsilon$. $\blacksquare$

**Tétel (a „félrendőrelv").** Ha minden $n \ge n_0$-ra $a_n \le b_n$ és $a_n \to +\infty$, akkor $b_n \to +\infty$.

**Alkalmazás.** Számítsuk ki $\displaystyle \lim_{n\to\infty} \sqrt[n]{2^n + n^2}$-t. Korábban (gyakorlaton) beláttuk, hogy $2^n \ge n^2$, ha $n \ge 5$. Ezért elég nagy $n$-re
$$2 = \sqrt[n]{2^n} \le \sqrt[n]{2^n + n^2} \le \sqrt[n]{2 \cdot 2^n} = \sqrt[n]{2} \cdot 2.$$
A bal oldal állandóan $2$, a jobb oldal pedig $2$-höz tart (mert $\sqrt[n]{2} \to 1$). A rendőrelv szerint tehát a középső sorozat határértéke is $2$.

## 25. Műveletek és határérték

**Definíció.** Adott $(a_n)$ és $(b_n)$ sorozatok esetén $(a_n + b_n)$ az **összegük**, $(a_n \cdot b_n)$ a **szorzatuk**, és ha minden $n$-re $b_n \neq 0$, akkor $\left(\frac{a_n}{b_n}\right)$ a **hányadosuk**.

**Tétel.** Ha $a_n \to a \in \mathbb{R}$ és $b_n \to b \in \mathbb{R}$, akkor
1. **(I)** $a_n + b_n \to a + b$;
2. **(II)** $a_n b_n \to ab$;
3. **(III)** ha minden $n$-re $b_n \neq 0$ és $b \neq 0$, akkor $\frac{a_n}{b_n} \to \frac{a}{b}$;
4. **(IV)** ha $a_n \to 0$ és $(b_n)$ korlátos, akkor $a_n b_n \to 0$.

*Bizonyítás.*

**(II) — a szorzat.** Mivel $a_n \to a$ és $b_n \to b$, mindkét sorozat korlátos; válasszunk olyan $K$-t, hogy minden $n$-re $|a_n| \le K$ és $|b_n| \le K$ (ekkor $|a| \le K$ és $|b| \le K$ is teljesül). Legyen $\varepsilon > 0$, és válasszunk $n_\varepsilon$-t úgy, hogy $n \ge n_\varepsilon$ esetén $|a_n - a| < \varepsilon$ és $|b_n - b| < \varepsilon$. Az ismert trükkel (nullát adunk hozzá):
$$|a_n b_n - ab| = |a_n b_n - a_n b + a_n b - ab| = |a_n(b_n - b) + b(a_n - a)| \le |a_n||b_n - b| + |b||a_n - a| < K\varepsilon + K\varepsilon = 2K\varepsilon.$$
Így $\tilde{\varepsilon} = 2K\varepsilon$-hoz $n_\varepsilon$ megfelelő küszöb; vagy megfordítva: adott $\tilde\varepsilon$-hoz indulásból $\varepsilon = \frac{\tilde\varepsilon}{2K}$-t választva pontosan a definíciót kapjuk.

**(III) — a hányados.** Elég belátni, hogy $\frac{1}{b_n} \to \frac{1}{b}$; ebből és (II)-ből
$$\frac{a_n}{b_n} = a_n \cdot \frac{1}{b_n} \to a \cdot \frac{1}{b} = \frac{a}{b}.$$
Legyen $\varepsilon > 0$. Válasszuk $n_\varepsilon$-t úgy, hogy $n \ge n_\varepsilon$ esetén egyszerre teljesüljön
$$|b_n - b| < \varepsilon \qquad \text{és} \qquad |b_n - b| < \frac{|b|}{2}.$$
A második feltételből következik, hogy $|b_n| > \frac{|b|}{2}$, vagyis a nevező nem „omlik össze". Ekkor
$$\left| \frac{1}{b_n} - \frac{1}{b} \right| = \left| \frac{b - b_n}{b_n b} \right| = \frac{|b - b_n|}{|b_n| \cdot |b|} \le \frac{\varepsilon}{\frac{|b|}{2} \cdot |b|} = \frac{2\varepsilon}{|b|^2},$$
ami $\varepsilon$ alkalmas választásával tetszőlegesen kicsivé tehető. $\blacksquare$

**Tétel.** Ha $a_n \to +\infty$ és $(b_n)$ alulról korlátos, akkor $a_n + b_n \to +\infty$.

*Bizonyítás.* Legyen $K_0$ olyan, hogy minden $n$-re $b_n \ge K_0$. Adott $K$-hoz létezik $n_K$, hogy $n \ge n_K$ esetén $a_n > K - K_0$. Ekkor
$$a_n + b_n > (K - K_0) + K_0 = K. \qquad \blacksquare$$

Ebből következik két szokásos „szimbolikus" szabály:
$$\big(a_n \to +\infty \ \wedge \ b_n \to b\big) \implies a_n + b_n \to +\infty \qquad (\text{``} +\infty + a = +\infty \text{''}),$$
$$\big(a_n \to +\infty \ \wedge \ b_n \to +\infty\big) \implies a_n + b_n \to +\infty \qquad (\text{``} +\infty + \infty = +\infty \text{''}).$$
(Mindkét esetben azért alkalmazható a tétel, mert a $(b_n)$ konvergens, illetve $+\infty$-hez divergáló sorozat szükségképpen alulról korlátos.)

## 26. Kritikus (határozatlan) határértékek

Ha $a_n \to +\infty$ és $b_n \to -\infty$, akkor az $a_n + b_n$ összegről **semmit sem mondhatunk általánosságban**; ezt nevezzük **kritikus** (határozatlan) határértéknek. Az alábbi példák mutatják, hogy minden viselkedés előfordulhat:

- $a_n = n$, $b_n = -n$: ekkor $a_n + b_n = 0 \to 0$.
- $a_n = n$, $b_n = (-1)^n 2n$: ekkor $a_n + b_n$ oszcillálva divergál.
- $a_n = 2n$, $b_n = -n$: ekkor $a_n + b_n = n \to +\infty$.

**További tételek.**
- Ha $a_n \to a > 0$ és $b_n \to \pm\infty$, akkor $a_n b_n \to \pm\infty$.
- Az $a_n \to 0$, $b_n \to +\infty$ eset a szorzatra nézve **kritikus**.
- Ha $a_n \to \infty$, akkor $\frac{1}{a_n} \to 0$.
- Ha $a_n \to 0$ és minden $n$-re $a_n \neq 0$, akkor $\frac{1}{|a_n|} \to +\infty$.

**Az összeg határértéke, táblázatosan** ($a_n \to$ sorok, $b_n \to$ oszlopok):

| $\lim(a_n + b_n)$ | $b$ | $+\infty$ | $-\infty$ |
|---|---|---|---|
| $a$ | $a + b$ | $+\infty$ | $-\infty$ |
| $+\infty$ | $+\infty$ | $+\infty$ | **kritikus** |
| $-\infty$ | $-\infty$ | **kritikus** | $-\infty$ |

**A szorzat határértéke, táblázatosan:**

| $\lim(a_n b_n)$ | $b > 0$ | $0$ | $b < 0$ | $+\infty$ | $-\infty$ |
|---|---|---|---|---|---|
| $a > 0$ | $ab$ | $0$ | $ab$ | $+\infty$ | $-\infty$ |
| $0$ | $0$ | $0$ | $0$ | **kritikus** | **kritikus** |
| $a < 0$ | $ab$ | $0$ | $ab$ | $-\infty$ | $+\infty$ |
| $+\infty$ | $+\infty$ | **kritikus** | $-\infty$ | $+\infty$ | $-\infty$ |
| $-\infty$ | $-\infty$ | **kritikus** | $+\infty$ | $-\infty$ | $+\infty$ |

## 27. A Bolzano–Weierstrass-tétel

**Lemma.** Minden sorozatnak van monoton részsorozata.

*Bizonyítás.* Nevezzük az $a_k$ tagot **csúcselemnek**, ha minden $m \ge k$ esetén $a_m \le a_k$ (vagyis utána már soha nem lesz nagyobb tag).

**a) eset: végtelen sok csúcs van.** Legyenek ezek $a_{k_1}, a_{k_2}, \dots$ ($k_1 < k_2 < \dots$). Ez részsorozat, és a csúcs definíciója szerint
$$a_{k_1} \ge a_{k_2} \ge a_{k_3} \ge \dots,$$
tehát monoton csökkenő.

**b) eset: véges sok csúcs van.** Ekkor létezik olyan $s_1$ index, hogy minden $m \ge s_1$ esetén $a_m$ **nem** csúcs. Egy nem csúcselemhez viszont a definíció tagadása szerint van olyan $m' > m$, amelyre $a_{m'} > a_m$. Induljunk $k_1 = s_1$-ből: létezik $k_2 > k_1$ úgy, hogy $a_{k_2} > a_{k_1}$; majd létezik $k_3 > k_2$ úgy, hogy $a_{k_3} > a_{k_2}$; és így tovább. A kapott részsorozat szigorúan monoton növekedő. $\blacksquare$

**Tétel (Bolzano–Weierstrass).** Minden korlátos sorozatnak van konvergens részsorozata.

*Bizonyítás.* A lemma szerint van monoton részsorozata; ez a részsorozat korlátos (hiszen az egész sorozat az), és korlátos monoton sorozat a 21. szakasz tétele szerint konvergens. $\blacksquare$

**Tétel.** Ha $(a_n)$ felülről (alulról) nem korlátos, akkor van $+\infty$-hez ($-\infty$-hez) divergáló részsorozata.

## 28. A Cauchy-kritérium

Térjünk vissza a 19. szakaszban ígért ellenpéldára. Legyen
$$a_n = 1 + \frac{1}{\sqrt{2}} + \dots + \frac{1}{\sqrt{n}} = \sum_{k=1}^n \frac{1}{\sqrt{k}}.$$
Egyrészt minden tag legalább $\frac{1}{\sqrt{n}}$, tehát
$$a_n \ge n \cdot \frac{1}{\sqrt{n}} = \sqrt{n} \to +\infty,$$
vagyis a sorozat divergens. Másrészt
$$a_{n+1} - a_n = \frac{1}{\sqrt{n+1}} \to 0.$$
Ez bizonyítja, hogy
$$a_{n+1} - a_n \to 0 \not\Rightarrow (a_n) \ \text{konvergens}.$$
A szomszédos tagok közeledése tehát nem elég. Mi a helyes feltétel? Az, hogy *minden* elég kései tagpár közel legyen egymáshoz — nem csak a szomszédosak.

**Tétel (Cauchy-kritérium).** Az $(a_n)$ sorozat akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_\varepsilon$, hogy minden $n, m \ge n_\varepsilon$ esetén
$$|a_n - a_m| < \varepsilon.$$

*Bizonyítás.*

**($\Rightarrow$) Szükségesség.** Legyen $a_n \to a \in \mathbb{R}$. Adott $\varepsilon > 0$-hoz van olyan $n_\varepsilon$, hogy $n \ge n_\varepsilon$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ekkor minden $n, m \ge n_\varepsilon$-ra
$$|a_n - a_m| = |a_n - a + a - a_m| \le |a_n - a| + |a - a_m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$

**($\Leftarrow$) Elégségesség.** Ez a nehezebb irány, és itt használjuk a teljességet (a Bolzano–Weierstrass-tételen keresztül).

*Első lépés: a sorozat korlátos.* Alkalmazzuk a feltételt $\varepsilon_0 = 1$-re: van olyan $n_1$, hogy minden $n, m \ge n_1$-re $|a_n - a_m| < 1$. Speciálisan minden $m \ge n_1$-re $|a_{n_1} - a_m| < 1$, azaz $|a_m| < |a_{n_1}| + 1$. Az első $n_1 - 1$ tag véges sok, így a
$$K = \max\{|a_{n_1}| + 1,\ |a_1|,\ \dots,\ |a_{n_1 - 1}|\}$$
korlát megfelelő.

*Második lépés: van konvergens részsorozat.* A Bolzano–Weierstrass-tétel szerint létezik olyan $(a_{n_k})$ részsorozat és $a \in \mathbb{R}$, hogy $a_{n_k} \to a$, ha $k \to +\infty$.

*Harmadik lépés: az egész sorozat ehhez az $a$-hoz tart.* Legyen $\varepsilon > 0$ adott. Van olyan $k_\varepsilon$, hogy minden $k \ge k_\varepsilon$-ra $|a_{n_k} - a| < \varepsilon$; és van olyan $n_\varepsilon$, hogy minden $n, m \ge n_\varepsilon$-ra $|a_n - a_m| < \varepsilon$. Válasszunk olyan $k$-t, amelyre egyszerre $k \ge k_\varepsilon$ és $n_k \ge n_\varepsilon$ (ez lehetséges, hiszen $n_k \to \infty$). Ekkor minden $n \ge n_\varepsilon$-ra
$$|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| < \varepsilon + \varepsilon = 2\varepsilon,$$
ami a konvergenciát jelenti. $\blacksquare$

A Cauchy-kritérium óriási előnye, hogy **a határérték ismerete nélkül** dönt a konvergenciáról. Tipikus alkalmazás: ha $|a_{n+1} - a_n| \le \frac{1}{2^n}$ minden $n$-re, akkor $(a_n)$ konvergens (a mértani sor összegzésével a Cauchy-feltétel közvetlenül ellenőrizhető).

---

# V. RÉSZ: MEGSZÁMLÁLHATÓSÁG

## 29. Megszámlálható halmazok; ℚ megszámlálható

**Definíció.** Az $A$ halmaz **megszámlálhatóan végtelen**, ha elemei sorozatba rendezhetők, azaz létezik $f : \mathbb{N} \to A$ bijekció; ekkor $a_n = f(n)$.

**Definíció.** Az $A$ halmaz **megszámlálható**, ha véges vagy megszámlálhatóan végtelen.

**Tétel.** $\mathbb{Q}$ megszámlálhatóan végtelen.

*Bizonyítás.* Konstruáljuk meg a felsorolást menetekben. Az **$n$-edik menetben** soroljuk fel azokat a $[-n, n]$ intervallumba eső, legfeljebb $n$ nevezőjű törteket, amelyeket korábban még nem soroltunk fel.

- 1. menet ($[-1,1]$, nevező legfeljebb $1$): $-1,\ 0,\ 1$.
- 2. menet ($[-2,2]$, nevező legfeljebb $2$): $-2,\ -\frac{3}{2},\ -\frac{1}{2},\ \frac{1}{2},\ \frac{3}{2},\ 2$.
- és így tovább.

Minden menetben csak **véges sok** új törtet írunk fel, és minden racionális szám előbb-utóbb sorra kerül (ha $\frac{p}{q}$ tetszőleges racionális, akkor a $\max\{|p|, q\}$-adik menetben már biztosan). Az így kapott sorozat:
$$-1,\ 0,\ 1,\ -2,\ -\tfrac{3}{2},\ -\tfrac{1}{2},\ \tfrac{1}{2},\ \tfrac{3}{2},\ 2,\ \dots$$
Egy másik szokásos bizonyítás a törteket táblázatba rendezi (soronként azonos nevezővel), és **átlósan** járja be a táblázatot; ez is minden törtet elér véges sok lépésben. $\blacksquare$

## 30. Algebrai és transzcendens számok

**Definíció.** Az $\alpha \in \mathbb{C}$ szám **algebrai**, ha gyöke egy nem azonosan nulla, egész együtthatós polinomnak.

**Példa.** $\sqrt{2}$ algebrai, hiszen gyöke az $x^2 - 2 = 0$ egyenletnek.

**Tétel.** Az algebrai számok halmaza megszámlálható.

(A bizonyítás vázlata: minden fokszámhoz és minden együttható-korláthoz csak véges sok polinom tartozik, és minden polinomnak véges sok gyöke van; így az algebrai számok megszámlálható sok véges halmaz uniójaként állnak elő.)

**Definíció.** Egy szám **transzcendens**, ha nem algebrai. Ilyen például $\pi$ és $e$ — bár mindkettő transzcendenciájának bizonyítása messze túlmutat a bevezető analízis keretein.

## 31. ℝ nem megszámlálható

**Tétel.** $\mathbb{R}$ nem megszámlálhatóan végtelen. (Ebből azonnal következik, hogy **létezik transzcendens szám**, sőt „majdnem minden" valós szám az.)

*Bizonyítás (a Cantor-féle tulajdonság segítségével).* Indirekt. Tegyük fel, hogy $\mathbb{R} = \{c_n : n \in \mathbb{N}\}$, azaz az összes valós szám felsorolható.

Konstruáljunk egymásba skatulyázott zárt intervallumokat úgy, hogy sorra „kizárjuk" a felsorolás tagjait:
- Válasszunk $a_1 < b_1$-et úgy, hogy $c_1 \notin [a_1, b_1]$ (ez mindig lehetséges, hiszen egyetlen pont nem tölti ki a számegyenest).
- Válasszunk $a_1 \le a_2 < b_2 \le b_1$-et úgy, hogy $c_2 \notin [a_2, b_2]$.
- Általában: ha $[a_{n-1}, b_{n-1}]$ már megvan, válasszunk $a_{n-1} \le a_n < b_n \le b_{n-1}$-et úgy, hogy $c_n \notin [a_n, b_n]$. (Ez lehetséges: $[a_{n-1}, b_{n-1}]$-et három részre osztva legalább az egyik nem tartalmazza $c_n$-t.)

A Cantor-féle tulajdonság szerint
$$\exists c \in \bigcap_{n=1}^{\infty} [a_n, b_n].$$
Ez a $c$ minden $n$-re benne van $[a_n, b_n]$-ben, míg $c_n$ nincs benne; tehát minden $n$-re $c \neq c_n$. Így $c$ olyan valós szám, amely nem szerepel a felsorolásban — ellentmondás. $\blacksquare$

**Tétel.** $\mathbb{R} \setminus \mathbb{Q}$ (az irracionális számok halmaza) nem megszámlálható.

(Valóban: ha megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R}\setminus\mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható lenne.)

## 32. Számosság

**Definíció.** Az $A$ és $B$ halmazok **ekvivalensek** (azonos számosságúak), ha létezik $\varphi : A \to B$ bijekció; jelölés: $A \sim B$.

Ez ekvivalenciareláció:
$$A \sim A, \qquad A \sim B \iff B \sim A, \qquad (A \sim B \ \wedge\ B \sim C) \implies A \sim C.$$

Ezzel a nyelvvel:
- $A$ megszámlálhatóan végtelen $\iff A \sim \mathbb{N}$.
- $A$ **kontinuum számosságú** $\iff A \sim \mathbb{R}$.

**Tétel.** $\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$, azaz az irracionális számok halmaza kontinuum számosságú.

---

# VI. RÉSZ: LIMESZ SZUPERIOR ÉS INFERIOR

## 33. A limsup és a liminf definíciója

Az eddigiekben láttuk, hogy egy sorozatnak nem feltétlenül van határértéke. Van azonban két mennyiség, amely **mindig** létezik a bővített számegyenesen, és amely a sorozat „felső" és „alsó" végső viselkedését méri.

**Definíció.** Legyen $(a_n)$ tetszőleges valós sorozat. Minden $n$-re legyen
$$M_n = \sup\{a_k : k = n, n+1, \dots\} \in \overline{\mathbb{R}}, \qquad m_n = \inf\{a_k : k = n, n+1, \dots\} \in \overline{\mathbb{R}}.$$

Ahogy $n$ nő, a halmaz, amelyen a szuprémumot vesszük, egyre szűkül, tehát
$$M_{n+1} \le M_n \qquad \text{és} \qquad m_{n+1} \ge m_n.$$
Az $(M_n)$ sorozat tehát monoton csökkenő, az $(m_n)$ monoton növekedő; így mindkettőnek létezik határértéke $\overline{\mathbb{R}}$-ben. Ezeket nevezzük:
a **limesz szuperiort**
$$\lim_{n\to\infty} M_n \stackrel{\text{def}}{=} \limsup_{n\to\infty} a_n = \overline{\lim_{n\to\infty}}\, a_n \in \overline{\mathbb{R}},$$
illetve a **limesz inferiort**
$$\lim_{n\to\infty} m_n \stackrel{\text{def}}{=} \liminf_{n\to\infty} a_n = \underline{\lim_{n\to\infty}}\, a_n \in \overline{\mathbb{R}}.$$

**Alapvető összefüggések.** Nyilvánvalóan
$$\underline{\lim}\, a_n = -\overline{\lim}\, (-a_n),$$
továbbá minden $n$-re $m_n \le M_n$, tehát
$$\underline{\lim}\, a_n \le \overline{\lim}\, a_n.$$

**Példák.**
1. $\overline{\lim}\, (-1)^n = 1$, $\underline{\lim}\, (-1)^n = -1$.
2. Ha $(q_n)$ a $[0,1] \cap \mathbb{Q}$ halmaz egy sorozatba rendezése (ami a 29. szakasz szerint lehetséges), akkor $\overline{\lim}\, q_n = 1$ és $\underline{\lim}\, q_n = 0$.

**Tétel.** $\displaystyle \lim_{n\to\infty} a_n = a \in \overline{\mathbb{R}} \iff \limsup_{n\to\infty} a_n = \liminf_{n\to\infty} a_n = a$.

Vagyis a határérték létezése pontosan azt jelenti, hogy a felső és az alsó végső viselkedés egybeesik.

## 34. Sűrűsödési értékek

**Definíció.** Az $a \in \overline{\mathbb{R}}$ szám az $(a_n)$ sorozat **sűrűsödési értéke**, ha létezik olyan $(a_{n_k})$ részsorozat, amelyre $a_{n_k} \to a$.

**Példák.**
- A fenti $(q_n)$ sorozat sűrűsödési értékei a $[0,1]$ intervallum **összes** pontja.
- A $(-1)^n$ sorozat sűrűsödési értékeinek halmaza $\{-1, 1\}$.

**Tétel.** Minden $(a_n)$ sorozatra
$$\limsup_{n\to\infty} a_n = \max\{x \in \overline{\mathbb{R}} : x \ \text{az} \ (a_n) \ \text{sűrűsödési értéke}\}.$$

A limesz szuperior tehát a **legnagyobb sűrűsödési érték** — és a tétel egyben azt is állítja, hogy ez a maximum létezik (nemcsak szuprémum).

---

# VII. RÉSZ: VÉGTELEN SOROK

## 35. A sor fogalma

Kezdjük egy példával. Legyen $a_n = \frac{1}{2^n}$, és képezzük az összegeket:
$$s_n = \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n} = \frac{1}{2}\left(1 + \frac{1}{2} + \dots + \frac{1}{2^{n-1}}\right) = \frac{1}{2} \cdot \frac{1 - \frac{1}{2^n}}{1 - \frac{1}{2}} = 1 - \frac{1}{2^n}.$$
Ez az új sorozat konvergens: $s_n \to 1$. Ezt írjuk úgy, hogy $\sum_{k=1}^\infty \frac{1}{2^k} = 1$. Figyeljük meg, mi történt: a végtelen összeadás fogalmát **visszavezettük** a részletösszegek sorozatának határértékére. Ez az egész elmélet kulcsa.

**Definíció.** $n \ge m$ esetén $\displaystyle \sum_{k=m}^{n} a_k = a_m + \dots + a_n$, és megállapodás szerint $\displaystyle \sum_{k=n}^{n} a_k = a_n$.

**Definíció (végtelen sor).** Rendeljük hozzá az $(a_n)$ sorozathoz az
$$s_n = \sum_{k=1}^n a_k$$
úgynevezett **részletösszegek** sorozatát. Ezt a hozzárendelést $a_1 + a_2 + \dots$-szal vagy $\sum_{k=1}^\infty a_k$-val jelöljük, és **végtelen sornak** (röviden **sornak**) nevezzük.

- Ha $s_n \to s \in \mathbb{R}$, akkor a $\sum_{n=1}^\infty a_n$ sor **konvergens**, és jelölése $\sum_{k=1}^\infty a_k = s$.
- Ha $(s_n)$ divergens, akkor a sor **divergens**.
- Ha $s_n \to +\infty$, akkor a $\sum_{n=1}^\infty a_n = +\infty$ jelölést használjuk.

A sorok indexelése természetesen más értékről is kezdődhet: $\sum_{n=0}^\infty a_n$, $\sum_{k=10}^\infty a_k$ stb.

## 36. A Cauchy-kritérium sorokra és a szükséges feltétel

**Tétel (Cauchy-kritérium sorokra).** A $\sum_{n=1}^\infty a_n$ sor akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_\varepsilon$, hogy minden $m \ge n \ge n_\varepsilon$ esetén
$$\left| \sum_{k=n}^{m} a_k \right| < \varepsilon.$$

*Bizonyítás.* Vegyük észre, hogy
$$\sum_{k=n}^{m} a_k = s_m - s_{n-1},$$
tehát az állítás pontosan a részletösszegek sorozatára vonatkozó Cauchy-kritérium. $\blacksquare$

**Tétel (a konvergencia szükséges feltétele).** Ha $\sum_{k=1}^\infty a_k$ konvergens, akkor $\lim_{k\to\infty} a_k = 0$.

*Bizonyítás.* A Cauchy-kritériumot $m = n$-re alkalmazva $|a_n| < \varepsilon$ minden elég nagy $n$-re. $\blacksquare$

**Figyelem: ez a feltétel nem elégséges!** Láttuk, hogy $\sum_{k=1}^\infty \frac{1}{\sqrt{k}}$ divergens, jóllehet $\frac{1}{\sqrt{k}} \to 0$. Ez a legfontosabb hibaforrás a sorok elméletében.

## 37. Nevezetes sorok

**A mértani (geometriai) sor.** Legyen $a_n = q^n$, $n = 0, 1, 2, \dots$.

- Ha $|q| \ge 1$, akkor $a_n = q^n \not\to 0$, tehát a szükséges feltétel sérül: $\sum_{n=0}^\infty q^n$ **divergens**.
- Ha $|q| < 1$, akkor a részletösszeg zárt alakban felírható, és
$$\lim_{n\to\infty} s_n = \lim_{n\to\infty} \frac{1 - q^{n+1}}{1 - q} = \frac{1}{1-q},$$
hiszen $q^{n+1} \to 0$. Tehát
$$\sum_{n=0}^{\infty} q^n = \frac{1}{1-q} \qquad (|q| < 1).$$

**A $\sum \frac{1}{n^2}$ sor (teleszkopikus becslés).** Minden $n \ge 2$-re
$$\frac{1}{n^2} \le \frac{1}{n(n-1)} = \frac{1}{n-1} - \frac{1}{n}.$$
Ezért
$$\sum_{k=1}^n \frac{1}{k^2} \le 1 + \sum_{k=2}^n \frac{1}{k(k-1)} = 1 + \left(\frac{1}{1} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n-1} - \frac{1}{n}\right) = 2 - \frac{1}{n} < 2.$$
A belső tagok páronként kiesnek — innen a „teleszkopikus összeg" elnevezés. A részletösszegek sorozata tehát szigorúan monoton növekedő és felülről korlátos, így a 21. szakasz tétele szerint konvergens:
$$\sum_{n=1}^\infty \frac{1}{n^2} \ \text{konvergens} \qquad \left(\text{ismert, hogy az összeg } \frac{\pi^2}{6}\right).$$

**A harmonikus sor.** A $\sum_{n=1}^\infty \frac{1}{n}$ sor **divergens**, sőt $\sum_{n=1}^\infty \frac{1}{n} = +\infty$.

*Bizonyítás.* Megmutatjuk, hogy a Cauchy-kritérium nem teljesül. Legyen $\varepsilon = \frac{1}{2}$. Bármely $n_\varepsilon$ esetén tekintsük az $n_\varepsilon + 1$ és $2n_\varepsilon$ közötti tagokat: ezek száma $n_\varepsilon$, és mindegyik legalább $\frac{1}{2n_\varepsilon}$, tehát
$$\sum_{k = n_\varepsilon + 1}^{2 n_\varepsilon} \frac{1}{k} \ge n_\varepsilon \cdot \frac{1}{2 n_\varepsilon} = \frac{1}{2} = \varepsilon.$$
Nincs tehát olyan küszöb, amely mellett a Cauchy-feltétel teljesülne. A részletösszegek sorozata szigorúan monoton növekedő, de nem konvergens; ebből következik, hogy nem lehet felülről korlátos (különben a monoton korlátos sorozatokra vonatkozó tétel szerint konvergálna), tehát $s_n \to +\infty$. $\blacksquare$

Ez a legszebb ellenpélda az egész félévben: a tagok nullához tartanak, az összeg mégis minden határon túl nő — csak nagyon lassan.

---

# VIII. RÉSZ: VALÓS FÜGGVÉNYEK

## 38. Alapfogalmak és műveletek

**Definíció.** Az $f : X \to \mathbb{R}$ függvényt **valós értékű** függvénynek nevezzük. Ha ezen felül $X \subset \mathbb{R}$ is teljesül, akkor **egyváltozós valós függvényről** beszélünk. A továbbiakban — hacsak mást nem mondunk — ilyen függvényekkel foglalkozunk.

**Definíció (megszorítás).** Ha $f : X \to Y$ és $A \subset X$, akkor az $f$ **$A$-ra való megszorítása** (leszűkítése) az a $g : A \to Y$ függvény, amelyre minden $x \in A$ esetén $g(x) = f(x)$. Jelölése $f|_A$ vagy $f|A$.

**Definíció (ősképi halmaz).** Ha $f : X \to \mathbb{R}$ és $A \subset \mathbb{R}$, akkor
$$f^{-1}(A) = \{x \in X : f(x) \in A\}$$
az $A$ halmaz **ősképe**. Hangsúlyozzuk: ehhez az $f$-nek **nem kell injektívnek lennie** — az $f^{-1}$ szimbólum itt halmazra hat, és nem az inverz függvényt jelöli.

**Példák.** Legyen $g(x) = x^2$. Ekkor $g^{-1}(\{4, 16\}) = \{2, -2, 4, -4\}$, jóllehet $g$ nem invertálható $\mathbb{R}$-en. Ha viszont $f(x) = \sqrt{x}$, akkor $f$ valódi inverze $f^{-1}(x) = x^2|_{[0,+\infty)}$.

**Definíció (grafikon).** Az $f$ függvény **grafikonja**
$$\operatorname{graph}(f) = Gr(f) = \{(x,y) : x \in D(f),\ y = f(x)\} \subset \mathbb{R}^2.$$
Más néven az $f$ görbéje vagy ábrája.

**Definíció (műveletek).**
$$f \pm g : x \mapsto f(x) \pm g(x), \qquad f \cdot g : x \mapsto f(x) \cdot g(x),$$
mindkettő értelmezési tartománya $D(f) \cap D(g)$; továbbá
$$\frac{f}{g} : x \mapsto \frac{f(x)}{g(x)}, \qquad D\!\left(\frac{f}{g}\right) = \big(D(f) \cap D(g)\big) \setminus g^{-1}(\{0\}).$$
A hányados értelmezési tartományából tehát ki kell venni a nevező zérushelyeit — és éppen ezért hasznos az őskép jelölése.

## 39. Elemi függvények

**Polinomfüggvények.** $p(x) = a_n x^n + \dots + a_1 x + a_0$, ahol $a_n \neq 0$; ekkor $p$ **foka** $n$.

Speciális esetek:
- Ha $c \in \mathbb{R}$, akkor az $x \mapsto c$ függvény az **állandó függvény**. Ha $c \neq 0$, akkor ez nulladfokú polinom; a $p(x) \equiv 0$ azonosan nulla polinomnak viszont **nincs foka**.
- Az $ax + b$ alakú függvények a **lineáris függvények**.
- Az $x^n$ alakúak a **hatványfüggvények**.

**Racionális törtfüggvények.** $R(x) = \frac{p(x)}{q(x)}$, ahol $p, q$ polinomok és $q \not\equiv 0$. Például $f(x) = \frac{1}{x}$ vagy $g(x) = \frac{x^2 + 5}{x^3 - 7x + 3}$.

**Definíció (szignumfüggvény).**
$$\operatorname{sgn}(x) = \begin{cases} 1 & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -1 & \text{ha } x < 0. \end{cases}$$

**Definíció (egészrész- vagy entier függvény).** Ha $x \in \mathbb{R}$, akkor $[x] = \lfloor x \rfloor$ az az egyértelműen meghatározott $n \in \mathbb{Z}$, amelyre
$$n \le x < n+1.$$
Például $[1{,}2] = 1$, de $[-1{,}2] = -2$ (nem $-1$!). A grafikon lépcsős.

**Definíció (törtrészfüggvény).** $\{x\} = x - [x]$. Grafikonja fűrészfog alakú, értékkészlete $[0,1)$.

**Definíció (Dirichlet-féle függvény).**
$$D(x) = \begin{cases} 1 & \text{ha } x \in \mathbb{Q}, \\ 0 & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}. \end{cases}$$
(Egyes szerzőknél fordítva.) Ez a függvény lesz a standard ellenpéldánk: sehol sem folytonos, és semmilyen pontban nincs határértéke.

## 40. Globális tulajdonságok

**Definíció (paritás).** Legyen $f : X \to \mathbb{R}$, és tegyük fel, hogy $x \in D(f) \iff -x \in D(f)$ (azaz az értelmezési tartomány szimmetrikus). Ha minden $x \in X$-re
- $f(x) = f(-x)$, akkor $f$ **páros**;
- $f(x) = -f(-x)$, akkor $f$ **páratlan**.

**Példák.** $x^2$, $|x|$ és az $f(x) \equiv 1$ páros; $x^3$ páratlan; az $f(x) \equiv 0$ egyszerre páros és páratlan.

**Definíció (periodicitás).** Ha létezik $p \neq 0$ úgy, hogy $x \in D(f) \iff x + p \in D(f)$, és minden $x \in D(f)$-re
$$f(x + p) = f(x),$$
akkor $f$ **$p$ szerint periodikus**.

**Definíció (korlátosság halmazon).** Az $f : X \to \mathbb{R}$ függvény korlátos (alulról, illetve felülről korlátos) az $A \subset D(f)$ halmazon, ha az $f(A)$ képhalmaz az.

**Példa.** $f(x) = \frac{1}{x}$ korlátos az $A_1 = [1, \infty)$ halmazon (ott $0 < f(x) \le 1$), de nem korlátos az $A_2 = (0,1)$ halmazon.

**Definíció (monotonitás).** Az $f$ függvény az $A \subset D(f)$ halmazon **(monoton) növekedő**, ha minden $x, y \in A$, $x < y$ esetén $f(x) \le f(y)$; **csökkenő**, ha $f(x) \ge f(y)$. Ha a szigorú egyenlőtlenségek ($f(x) < f(y)$, illetve $f(x) > f(y)$) is teljesülnek, akkor $f$ **szigorúan monoton növekedő** (illetve csökkenő).

**Definíció (abszolút szélsőérték).** Az $a \in A \subset D(f)$ hely az $f$-nek $A$-ra nézve **(abszolút) maximumhelye**, ha minden $x \in A$-ra $f(x) \le f(a)$; **minimumhelye**, ha $f(x) \ge f(a)$. Ha $x \neq a$ esetén szigorú egyenlőtlenség áll, akkor **szigorú** maximum-, illetve minimumhelyről beszélünk.

## 41. Egy lokális tulajdonság

**Definíció (lokális szélsőérték).** Az $a \in \mathbb{R}$ hely az $f$ **lokális maximumhelye**, ha létezik $\varepsilon > 0$ úgy, hogy $B(a,\varepsilon) \subset D(f)$, és $a$ az $f$-nek a $B(a,\varepsilon)$ halmazra vonatkozó maximumhelye. Hasonlóan értelmezzük a lokális minimumhelyet, valamint a szigorú lokális maximum- és minimumhelyet.

A különbség a globális és a lokális fogalom között döntő: a lokális szélsőérték csak egy **kicsiny környezetben** a legnagyobb (legkisebb) érték. Egy függvénynek több lokális maximuma is lehet, amelyek közül egyik sem abszolút maximum.

## 42. Konvexitás

Tekintsünk három szigorúan monoton növekedő függvényt, amelyek grafikonja mégis lényegesen eltér. Kössük össze a grafikon két pontját egy **húrral**:

1. Az első esetben a függvény végig a **húr alatt** halad.
2. A második esetben a húr **átmetszi** a grafikont.
3. A harmadik esetben a függvény végig a **húr fölött** halad.

Ez a megkülönböztetés a görbületről szól, és a monotonitástól teljesen független. Formalizáljuk.

**Definíció (konvexitás).** Az $f$ függvény **konvex** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén $f$ az $[a,b]$ intervallumon az $(a, f(a))$ és $(b, f(b))$ pontokon áthaladó húr alatt halad, azaz minden $x \in [a,b]$-re
$$f(x) \le f(a) + \frac{f(b) - f(a)}{b-a}(x - a) \stackrel{\text{def}}{=} h_{a,b}(x).$$
(A húr egyenlete másképp is felírható: $h_{a,b}(x) = f(b) + \frac{f(b)-f(a)}{b-a}(x-b)$; ugyanaz az egyenes.)

Az $f$ **konkáv**, ha a húr fölött halad, azaz $\le$ helyett $\ge$ áll. Az $f$ **szigorúan konvex**, ha $a < x < b$ esetén szigorú $<$ teljesül; **szigorúan konkáv**, ha $>$.

**Állítás.** Ha $f$ konvex, akkor $-f$ konkáv.

*Bizonyítás.* Szorozzuk az egyenlőtlenséget $(-1)$-gyel; ez megfordítja az irányt. $\blacksquare$

Ez a megfigyelés végig érvényes: minden konvexitásra vonatkozó tételnek van konkáv párja, amelyet elég $-f$-re alkalmazni. Ezért a továbbiakban rendszerint csak a konvex esetet bizonyítjuk.

## 43. A Jensen-egyenlőtlenség

**Tétel (Jensen-egyenlőtlenség).** Az $I$ intervallumon értelmezett $f$ függvény akkor és csak akkor konvex $I$-n, ha minden $x, y \in I$ és minden $p, q > 0$, $p + q = 1$ szám esetén
$$f(px + qy) \le p f(x) + q f(y).$$
(Szigorú konvexitás esetén egyenlőség akkor és csak akkor, ha $x = y$. Sok tankönyv $p = t$, $q = 1-t$ jelöléssel írja.)

**Megjegyzés (mit is jelent a $px + qy$?).** Tegyük fel, hogy $x < y$. Mivel $p + q = 1$ és mindkettő pozitív,
$$x = px + qx \le px + qy \le py + qy = y,$$
tehát $px + qy$ valóban az $[x,y]$ intervallum egy belső pontja. Sőt, az osztóaránya:
$$\frac{(px + qy) - x}{y - (px+qy)} = \frac{q(y-x)}{p(y-x)} = \frac{q}{p}.$$
A $px + qy$ tehát az $x$ és $y$ **súlyozott átlaga**; a Jensen-egyenlőtlenség pedig azt mondja, hogy a súlyozott átlag helyén felvett **függvényérték** legfeljebb akkora, mint a **függvényértékek** ugyanolyan súlyozású átlaga.

*Bizonyítás.*

**($\Rightarrow$) Ha $f$ konvex.** Tegyük fel, hogy $x < y$, és alkalmazzuk a konvexitás definícióját az $[x,y]$ intervallum $px + qy$ pontjában:
$$f(px+qy) \le f(x) + \frac{f(y)-f(x)}{y-x}\big((px+qy) - x\big).$$
A zárójelben álló mennyiség a fenti számolás szerint $q(y-x)$, tehát
$$f(px+qy) \le f(x) + \frac{f(y)-f(x)}{y-x} \cdot q(y-x) = f(x) + q\big(f(y)-f(x)\big) = (1-q)f(x) + qf(y) = p f(x) + q f(y).$$

**($\Leftarrow$) Ha a Jensen-egyenlőtlenség teljesül.** Legyen $x < z < y$, és keressünk olyan $p, q$ súlyokat, amelyekre $px + qy = z$. A választás:
$$p = \frac{y-z}{y-x}, \qquad q = \frac{z-x}{y-x}.$$
Ezek pozitívak, összegük $1$, és valóban
$$\frac{y-z}{y-x}x + \frac{z-x}{y-x}y = \frac{yx - zx + zy - xy}{y-x} = \frac{z(y-x)}{y-x} = z.$$
A feltevés szerinti egyenlőtlenség a fenti számolást visszafelé olvasva pontosan a
$$f(z) \le f(x) + \frac{f(y)-f(x)}{y-x}(z-x)$$
alakot ölti, ami a konvexitás definíciója. $\blacksquare$

**Tétel (Jensen-egyenlőtlenség több tagra).** Az $I$ intervallumon értelmezett $f$ függvény akkor és csak akkor konvex $I$-n, ha minden $x_1, \dots, x_n \in I$ és minden $p_1, \dots, p_n > 0$, $p_1 + \dots + p_n = 1$ esetén
$$f(p_1 x_1 + \dots + p_n x_n) \le p_1 f(x_1) + \dots + p_n f(x_n).$$

(A bizonyítás teljes indukcióval történik a kéttagú esetből kiindulva.)

**Definíció (gyenge konvexitás).** Ha $p = q = \frac{1}{2}$, akkor a Jensen-feltétel a
$$f\!\left(\frac{x+y}{2}\right) \le \frac{f(x) + f(y)}{2} \qquad (\forall x, y \in I)$$
alakot ölti. Az ennek eleget tevő függvényeket **gyengén konvexnek** nevezzük.

Nyilvánvalóan konvex $\implies$ gyengén konvex. A megfordítás **nem** igaz, de az ellenpélda konstrukciója nem triviális (és a Hamel-bázison alapul). Később látni fogjuk viszont, hogy **folytonos** gyengén konvex függvény már konvex.

## 44. Konvexitás és a differenciahányados

A következő jellemzés az egész konvexitás-elmélet motorja: a konvexitást a **meredekségek monotonitására** vezeti vissza.

**Tétel.** Az $f$ akkor és csak akkor konvex az $I$ intervallumon, ha minden $a \in I$-re az
$$m_a(x) = \frac{f(x) - f(a)}{x - a}$$
függvény monoton növekedő az $I \setminus \{a\}$ halmazon.

Szemléletesen: rögzítsünk egy pontot a grafikonon, és forgassunk körülötte egy szelőt. A konvexitás azt jelenti, hogy ahogy a másik pont jobbra vándorol, a szelő meredeksége soha nem csökken.

*Bizonyítás.*

**($\Rightarrow$)** Tegyük fel, hogy $f$ konvex $I$-n, és legyen $a, x, y \in I$.

**(I. eset) $a < x < y$.** A konvexitás definícióját az $[a,y]$ intervallumra és annak $x$ belső pontjára alkalmazva:
$$(*) \qquad f(x) \le \frac{f(y) - f(a)}{y - a}(x - a) + f(a).$$
Vonjunk ki $f(a)$-t, és osszunk a pozitív $(x-a)$-val:
$$(**) \qquad m_a(x) = \frac{f(x) - f(a)}{x-a} \le \frac{f(y)-f(a)}{y-a} = m_a(y).$$

**(II. eset) $x < y < a$**, illetve **(III. eset) $x < a < y$**: hasonlóan, a III. esetben némi óvatossággal (ott a $(x-a)$ előjele negatív, tehát az osztásnál megfordul az egyenlőtlenség iránya).

**($\Leftarrow$)** Ha minden $a \in I$-re $m_a$ monoton növekedő, akkor speciálisan $a < x < y$ esetén $(**)$ fennáll; ez viszont — a fenti lépéseket visszafelé olvasva — éppen $(*)$, azaz a konvexitás definíciója. $\blacksquare$

**Példa.** $f(x) = x^2$ konvex $\mathbb{R}$-en, hiszen
$$m_a(x) = \frac{x^2 - a^2}{x - a} = x + a$$
szigorúan monoton növekedő.

**Alkalmazás: a négyzetes közép.** Legyen $f(x) = x^2$ és $p_1 = \dots = p_n = \frac{1}{n}$. A Jensen-egyenlőtlenség szerint tetszőleges $a_1, \dots, a_n \in \mathbb{R}$ számokra
$$\left( \frac{a_1 + \dots + a_n}{n} \right)^2 \le \frac{a_1^2 + \dots + a_n^2}{n},$$
azaz gyököt vonva
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}.$$
A jobb oldalon álló mennyiség a számok **négyzetes közepe**; a számtani közép tehát soha nem haladja meg.

---

# IX. RÉSZ: FÜGGVÉNYEK HATÁRÉRTÉKE

## 45. Motiváció és a pontozott környezet

**Definíció.** Az $a \in \mathbb{R}$ pont **pontozott $\varepsilon$ sugarú környezete**
$$\dot{B}(a, \varepsilon) = B(a,\varepsilon) \setminus \{a\} = (a - \varepsilon,\ a) \cup (a,\ a + \varepsilon).$$

A „pontozottság" nem technikai finomság, hanem a fogalom lényege: a határérték azt írja le, hogyan viselkedik a függvény az $a$ pont **közelében**, függetlenül attól, mi történik magában az $a$ pontban (sőt akkor is, ha ott nincs is értelmezve).

**Motiváló példák.**

1. **A pillanatnyi sebesség.** Legyen $s(t)$ az út–idő függvény, és kérdezzük a $t_0$ pontbeli pillanatnyi sebességet. Képezzük az
$$f(t) = \frac{s(t) - s(t_0)}{t - t_0}, \qquad D(f) = D(s) \setminus \{t_0\}$$
átlagsebesség-függvényt. Az $f$ a $t_0$ pontban definíció szerint **nincs** értelmezve, mégis azt tapasztaljuk, hogy ha $|t - t_0|$ kicsi, akkor $f(t)$ „nagyon közel van" egy bizonyos $v(t_0)$ számhoz. Konkrétan, ha $s(t) = t^2$, akkor
$$f(t) = \frac{t^2 - t_0^2}{t - t_0} = \frac{(t - t_0)(t + t_0)}{t - t_0} = (t + t_0)\big|_{\mathbb{R}\setminus\{t_0\}},$$
tehát ha $t$ közel van $t_0$-hoz, akkor $f(t)$ közel van $2t_0$-hoz.

2. **Megszüntethető „lyuk".** Legyen $f(x) = (\operatorname{sgn} x)^2$ és $x_0 = 0$. Itt $f(0) = 0$, de minden más helyen $f(x) = 1$; a függvény tehát a $0$ közelében az $1$-hez tart, jóllehet a $0$-ban felvett értéke más.

3. **Nincs határérték.** Legyen $f(x) = \{x\}$ (törtrész) és $x_0 = 0$. Balról közeledve az értékek $1$-hez tartanak, jobbról közeledve $0$-hoz. Nincs olyan szám, amelyhez „minden irányból" közelednének.

## 46. A határérték definíciója

**Definíció.** Az $f$ függvény $a \in \mathbb{R}$ helyen vett **határértéke** a $b \in \mathbb{R}$ szám, ha
- **(I)** létezik $\delta_0 > 0$, amelyre $\dot{B}(a, \delta_0) \subset D(f)$, és
- **(II)** minden $\varepsilon > 0$-hoz létezik $\delta > 0$ úgy, hogy minden $x \in \dot{B}(a,\delta)$ esetén
$$|f(x) - b| < \varepsilon, \qquad \text{azaz} \qquad f(x) \in B(b, \varepsilon).$$

Az (I) feltétel garantálja, hogy a kérdés egyáltalán értelmes legyen: a függvénynek értelmezve kell lennie $a$ egy pontozott környezetében. A $\delta$ értéke függ $\varepsilon$-tól (néha $\delta_\varepsilon$-t írunk), és **nem egyértelmű**: minden nála kisebb pozitív szám is megfelel.

**Jelölések.** $\displaystyle \lim_{x\to a} f(x) = b$, illetve $f(x) \to b$, ha $x \to a$. Olvasata: „$f$ tart $b$-hez, ha $x$ tart $a$-hoz", vagy „$f$ limesze az $a$-ban $b$".

**Szemléletes jelentés.** Rajzoljunk a $b$ körül egy vízszintes sávot $b - \varepsilon$ és $b + \varepsilon$ között. A definíció azt mondja: bármilyen keskeny is ez a sáv, tudunk az $a$ körül olyan keskeny függőleges sávot ($a - \delta$ és $a + \delta$ között) kijelölni, hogy a grafikon ezen belül — az $x = a$ függőlegest leszámítva — teljes egészében a vízszintes sávban fut.

**Példák.**
$$\lim_{x\to 0} (\operatorname{sgn} x)^2 = 1, \qquad \lim_{x\to 0} \operatorname{sgn}(x) \ \text{nem létezik},$$
$$\lim_{x\to 5} x = 5, \qquad \lim_{x\to 0} \{x\} \ \text{nem létezik}, \qquad \lim_{x\to 1/2} \{x\} = \frac{1}{2}.$$

**Kidolgozott példa.** Legyen $f(x) = x^3$; mennyi $\lim_{x\to 2} f(x)$? A sejtés természetesen $2^3 = 8$. Itt $D(f) = \mathbb{R}$, tehát (I) teljesül. A becsléshez szorzattá alakítunk:
$$|x^3 - 2^3| = |x-2| \cdot |x^2 + 2x + 4|.$$
Szűkítsük le a vizsgálatot: **ha** $|x - 2| < 1$, akkor $x \in [1,3]$, tehát $x^2 \le 9$ és $2x \le 6$, így
$$|x^2 + 2x + 4| \le 9 + 6 + 4 = 19.$$
Ezért $|x^3 - 8| \le 19|x-2|$. Adott $\varepsilon > 0$-hoz válasszuk
$$\delta_\varepsilon = \min\left\{1,\ \frac{\varepsilon}{19}\right\}.$$
Ez valóban jó: ha $x \in \dot{B}(2, \delta_\varepsilon)$, akkor
$$|x^3 - 8| \le 19|x-2| < 19 \delta_\varepsilon \le \varepsilon. \qquad \blacksquare$$
A minimum képzése tipikus fogás: az egyik feltétel a becslés érvényességét biztosítja, a másik a kívánt pontosságot.

## 47. Féloldali határértékek és az egységes séma

A $\operatorname{sgn}(x)$ függvény a $0$-ban „jobbról az $1$-hez tart", balról pedig a $(-1)$-hez. Ezt is érdemes precízzé tenni.

**Definíció (jobb oldali határérték).** Az $f$-nek az $a \in \mathbb{R}$ helyen a **jobb oldali határértéke** a $b \in \mathbb{R}$ szám, ha
- **(I)** létezik $\delta_0 > 0$, amelyre $(a, a+\delta_0) = \dot{B}(a+0, \delta_0) \subset D(f)$, és
- **(II)** minden $\varepsilon > 0$-hoz létezik $\delta > 0$ úgy, hogy minden $x \in (a, a+\delta)$ esetén $|f(x) - b| < \varepsilon$.

Jelölések: $\lim_{x \to a+0} f(x) = b$, $\lim_{x\to a+} f(x) = b$, $f(a+0)$, $f(a+)$. A bal oldali határértéket, $\lim_{x\to a-0} f(x)$-et, hasonlóan definiáljuk.

**Tétel.** $\displaystyle \lim_{x\to a} f(x) = b \iff \lim_{x\to a-0} f(x) = \lim_{x\to a+0} f(x) = b$.

**Az egységes definíciós séma.** A sokféle határértéket egyetlen sablonba foglalhatjuk, ha bevezetjük a következő környezet-jelöléseket:
$$B(a+0,\delta) = [a, a+\delta), \qquad \dot{B}(a+0,\delta) = (a, a+\delta),$$
és hasonlóan $B(a-0,\delta)$, $\dot{B}(a-0,\delta)$.

**Definíció (egységes séma).** Legyen $\alpha$ a következők valamelyike: $a-0$, $a$, $a+0$; és legyen $\beta = b \in \mathbb{R}$. Ekkor
$$\lim_{x \to \alpha} f(x) = \beta,$$
ha
- **(I)** $f$ értelmezve van az $\alpha$ egy $\dot{U}_0$ „pontozott" környezetében, és
- **(II)** a $\beta$ bármely $V$ környezetéhez van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) \in V$.

**Példa a séma használatára.** A $\lim_{x\to a-0} f(x) = b$ esetben $\alpha = a-0$, $\beta = b$, továbbá $\dot{U}_0 = \dot{B}(a-0,\delta_0)$, $V = B(b,\varepsilon)$ és $\dot{U} = \dot{B}(a-0,\delta)$.

## 48. Végtelen határértékek és határérték a végtelenben

A séma ereje abban áll, hogy a $\pm\infty$ esetekre is kiterjeszthető — pusztán a megfelelő „környezetek" megadásával.

**Végtelen határérték.** Tekintsük az $\frac{1}{x^2}$ függvényt; ez „$+\infty$-hez tart", ha $x \to 0$. A sémában $\alpha = a$, $\beta = +\infty$, továbbá
$$\dot{U}_0 = \dot{B}(a,\delta_0), \qquad V = B(+\infty, K) = (K, +\infty), \qquad \dot{U} = \dot{B}(a,\delta).$$
Kibontva:
$$\lim_{x\to a} f(x) = +\infty \iff \begin{cases} \text{(I)} & \exists \delta_0 > 0: \dot{B}(a,\delta_0) \subset D(f), \\ \text{(II)} & \forall K \in \mathbb{R}\ \exists \delta > 0\ \forall x \in \dot{B}(a,\delta): f(x) > K. \end{cases}$$
A $B(-\infty, K) = (-\infty, K)$ környezettel ugyanígy definiálható a $\lim_{x\to\alpha} f(x) = -\infty$ eset. Megállapodás szerint $\dot{B}(\pm\infty, K) \stackrel{\text{def}}{=} B(\pm\infty, K)$ — a végtelenben nincs mit „kipontozni".

**Határérték a végtelenben.** Az $\frac{1}{x} \to 0$, ha $x \to +\infty$; tehát a határérték a $\pm\infty$-ben is értelmezhető, azaz $\alpha = \pm\infty$ is megengedett.

**Összesen tehát $15$ féle limesz definiálható:**
- $\alpha$ lehet: $-\infty$, $a-0$, $a$, $a+0$, $+\infty$ (öt lehetőség);
- $\beta$ lehet: $-\infty$, $b$, $+\infty$ (három lehetőség).

**Példa.** A $\lim_{x\to+\infty} f(x) = b$ esetben $\dot{U}_0 = (K_0, +\infty)$, $V = B(b,\varepsilon)$, $\dot{U} = (K, +\infty)$, azaz
$$\lim_{x\to+\infty} f(x) = b \iff \begin{cases} \text{(I)} & \exists K_0 \in \mathbb{R}: (K_0, +\infty) \subset D(f), \\ \text{(II)} & \forall \varepsilon > 0\ \exists K \in \mathbb{R}\ \forall x > K: |f(x) - b| < \varepsilon. \end{cases}$$

A tanulság: nem tizenöt különböző fogalmat kell megtanulni, hanem **egyet**, a környezetek nyelvén megfogalmazva.

## 49. Torlódási pont és leszűkített határérték

**Definíció (torlódási pont).** Ha $\alpha \in \overline{\mathbb{R}}$ és $A \subset \mathbb{R}$, akkor $\alpha$ az $A$ halmaz **torlódási pontja**, ha az $\alpha$ minden $U$ környezetében $A$-nak végtelen sok pontja van.

**Definíció (leszűkített határérték).** Tegyük fel, hogy $\alpha \in \overline{\mathbb{R}}$ az $A$ torlódási pontja. Az $f$ függvény határértéke az **$A$-ra szorítkozva** $\gamma \in \overline{\mathbb{R}}$, ha $A \subset D(f)$, és a $\gamma$ minden $V$ környezetéhez létezik az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U} \cap A$ esetén $f(x) \in V$. Jelölés:
$$\lim_{\substack{x \to \alpha \\ x \in A}} f(x) = \gamma.$$

**Megjegyzés.** A féloldali határérték ennek speciális esete: ha $\alpha = a \in \mathbb{R}$ és $A = (a, a+\delta_0]$ valamely $\delta_0 > 0$-val, akkor
$$\lim_{x\to a+0} f(x) = \gamma \iff \lim_{\substack{x\to a \\ x \in A}} f(x) = \gamma.$$

**Példa (a Dirichlet-függvény).** Ha $f = D$ a Dirichlet-függvény, akkor minden $c \in \mathbb{R}$-re
$$\lim_{\substack{x\to c \\ x \in \mathbb{Q}}} D(x) = 1, \qquad \lim_{\substack{x\to c \\ x \in \mathbb{R}\setminus\mathbb{Q}}} D(x) = 0.$$
Mindkét leszűkített határérték létezik, de különbözők — ezért a (nem leszűkített) határérték sehol sem létezik.

## 50. Az átviteli elv

Az analízis egyik leghatékonyabb eszköze az, hogy a **függvényhatárértéket visszavezeti a sorozathatárértékre**. Így minden sorozatokra bizonyított tétel „átvihető" a függvényekre.

**Motiváló példák.**
- $\lim_{x\to 2} x^2 = 4$; és valóban, ha $a_n = 2 + \frac{1}{n}$, akkor $\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)^2 = 4$.
- $\lim_{n\to\infty} \left\{\frac{1}{n}\right\} = 0$, azaz **egyetlen** $u_n = \frac{1}{n} \to 0$ sorozatra a képek $0$-hoz tartanak — de $\lim_{x\to 0}\{x\}$ mégsem létezik. Egyetlen sorozat tehát nem elég.
- Ha $f = D$, akkor $\lim_{n\to\infty} D\!\left(\frac{1}{n}\right) = 1$ (hiszen $\frac{1}{n}$ racionális), de $\lim_{x\to 0+0} D(x)$ nem létezik.

A tanulság: a helyes állításban **minden** sorozatot kell figyelembe venni.

**Tétel (átviteli elv).** Tegyük fel, hogy létezik az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, amelyre $\dot{U} \subset D(f)$. Ekkor
$$\lim_{x\to\alpha} f(x) = \gamma \iff \text{minden olyan } a_n \to \alpha \text{ sorozatra, amelyre } a_n \in \dot{U}\ (n = 1, 2, \dots),\ \text{teljesül, hogy } f(a_n) \to \gamma.$$

*Bizonyítás (az $\alpha = a \in \mathbb{R}$, $\gamma = b \in \mathbb{R}$ esetben; a többi eset hasonló).*

**1. (A) $\Rightarrow$ (B).** Tegyük fel, hogy $\lim_{x\to a} f(x) = b$, és legyen $a_n \to a$, $a_n \in \dot{U} = \dot{B}(a,\delta_0)$. Adott $\varepsilon > 0$-hoz a határérték definíciója szerint van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a,\delta)$-ra $|f(x) - b| < \varepsilon$. Mivel $a_n \to a$ és $a_n \neq a$, létezik olyan $n_\delta$, hogy $n \ge n_\delta$ esetén
$$0 < |a_n - a| < \delta, \qquad \text{azaz} \qquad a_n \in \dot{B}(a,\delta).$$
Ekkor $|f(a_n) - b| < \varepsilon$, tehát $f(a_n) \to b$.

**2. (B) $\Rightarrow$ (A).** Ezt a **kontrapozíció elvével** bizonyítjuk: $B \Rightarrow A$ ekvivalens $\overline{A} \Rightarrow \overline{B}$-vel. Tegyük fel tehát, hogy $f(x) \not\to b$, ha $x \to a$. A definíció tagadása szerint
$$\exists \varepsilon > 0, \ \text{amelyre} \ \forall \delta > 0 \ \exists x \in \dot{B}(a,\delta): |f(x) - b| \ge \varepsilon.$$
Alkalmazzuk ezt a $\delta_n = \frac{1}{n}$ választásokra: minden $n \in \mathbb{N}$-hez van olyan $a_n \in \dot{B}\!\left(a, \frac{1}{n}\right)$, amelyre $|f(a_n) - b| \ge \varepsilon$. Az így kapott sorozatra $a_n \to a$, $a_n \neq a$, elég nagy $n$-re $a_n \in \dot{U}$ — de $f(a_n) \not\to b$. Ezzel (B)-t megcáfoltuk. $\blacksquare$

Az átviteli elv **kiválóan használható annak megmutatására, hogy bizonyos határértékek nem léteznek**: elég két olyan sorozatot találni, amelyek ugyanoda tartanak, de a képsorozataik különböző határértékűek.

## 51. Határérték és műveletek; kompozíció

**Tétel.** Ha $\lim_{x\to\alpha} f(x) = b$ és $\lim_{x\to\alpha} g(x) = c$, akkor
1. **(i)** $\displaystyle \lim_{x\to\alpha} \big(f(x) + g(x)\big) = b + c$;
2. **(ii)** $\displaystyle \lim_{x\to\alpha} f(x)g(x) = bc$;
3. **(iii)** ha $c \neq 0$, akkor $\displaystyle \lim_{x\to\alpha} \frac{f(x)}{g(x)} = \frac{b}{c}$.

*Bizonyítás.* Az átviteli elv visszavezeti mindegyiket a sorozatokra vonatkozó tételekre. Például (ii): legyen $a_n \to \alpha$ tetszőleges, $a_n \in \dot{U}$. Az átviteli elv szerint $f(a_n) \to b$ és $g(a_n) \to c$; a sorozatokra vonatkozó szorzattétel szerint $f(a_n)g(a_n) \to bc$; végül az átviteli elvet **visszafelé** alkalmazva $\lim_{x\to\alpha} f(x)g(x) = bc$. $\blacksquare$

Ez a bizonyítási minta végig ismétlődik: sorozatra visszavezetni, ott alkalmazni a kész tételt, majd visszatérni.

**Tétel (határérték és kompozíció).** Tegyük fel, hogy
- $\lim_{x\to\alpha} g(x) = \gamma \in \overline{\mathbb{R}}$,
- $g(x) \neq \gamma$ az $\alpha$ valamely $\dot{U}$ pontozott környezetében, és
- $\lim_{t\to\gamma} f(t) = \beta$.

Ekkor $\displaystyle \lim_{x\to\alpha} f(g(x)) = \beta$.

*Bizonyítás.* Legyen $a_n \to \alpha$ tetszőleges sorozat, $\{a_n\} \subset \dot{U}$. Legyen $t_n = g(a_n)$; a feltevések szerint $t_n \neq \gamma$ és $t_n \to \gamma$. Mivel $\lim_{t\to\gamma} f(t) = \beta$, az átviteli elv szerint $f(t_n) \to \beta$, azaz $f(g(a_n)) \to \beta$. Ismét az átviteli elvet alkalmazva kapjuk az állítást. $\blacksquare$

**Megjegyzés (a $g(x) \neq \gamma$ feltétel fontossága).** E nélkül a tétel hamis: ha $g$ felveszi a $\gamma$ értéket, akkor az $f(g(x))$ a „lyukas" $f(\gamma)$ értéket is felveheti, amely eltérhet a $\beta$ határértéktől.

**Megjegyzés (szimbolikus szabályok).** A szokásos rövidítések — $\infty + \infty = \infty$, $\infty \cdot a = \infty$ ($a > 0$), $\frac{1}{\infty} = 0$ és társaik — ezekre a tételekre utalnak, de nem helyettesítik őket: a kritikus esetekben (lásd a 26. szakasz táblázatait) nincs ilyen szabály.

---

# X. RÉSZ: FOLYTONOSSÁG

## 52. A folytonosság fogalma

Az eddigiekben a határérték független volt attól, hogy a függvény az adott pontban milyen értéket vesz fel. A folytonosság éppen azt követeli meg, hogy a kettő **megegyezzék**.

**Definíció.** Az $f$ függvény **folytonos** az $a \in \mathbb{R}$ helyen, ha
$$\lim_{x\to a} f(x) = f(a).$$

Ez ekvivalensen így is kimondható: $f$ értelmezve van $a$ egy környezetében, és minden $\varepsilon > 0$-hoz létezik $\delta > 0$ úgy, hogy minden $x \in B(a,\delta)$ esetén
$$|f(x) - f(a)| < \varepsilon.$$
Figyeljük meg, hogy itt már **nem pontozott** környezet szerepel — hiszen $x = a$ esetén az egyenlőtlenség triviálisan teljesül.

**Definíció (leszűkített folytonosság).** Ha $a \in A \subset D(f)$ és $a$ az $A$ torlódási pontja, akkor $f$ **folytonos $a$-ban $A$-ra szorítkozva**, ha $\lim_{\substack{x\to a \\ x\in A}} f(x) = f(a)$.

**Definíció (féloldali folytonosság).** Az $f$ **jobbról folytonos** $a$-ban, ha $\lim_{x\to a+0} f(x) = f(a)$; **balról folytonos**, ha $\lim_{x\to a-0} f(x) = f(a)$.

**Tétel.** $f$ folytonos $a$-ban $\iff$ $f$ jobbról is és balról is folytonos $a$-ban.

**Definíció (folytonosság intervallumon).** Az $f$ **folytonos az $(\alpha,\beta)$ nyílt intervallumon**, ha annak minden pontjában folytonos; itt $\alpha$ lehet $-\infty$ vagy valós szám, $\beta$ pedig valós szám vagy $+\infty$. Jelölése: $f \in C(\alpha,\beta)$.

Az $f$ **folytonos az $[a,b]$ zárt intervallumon**, ha $a$-ban jobbról, $b$-ben balról, és $(a,b)$ minden pontjában folytonos. Jelölése: $f \in C[a,b]$.

A végpontokban tett megkülönböztetés nem pedantéria: enélkül a definíció értelmetlen lenne, hiszen $a$-tól balra a függvény nincs is értelmezve.

**Példák.**
- Az $f(x) = c$ állandó függvény folytonos $\mathbb{R}$-en.
- A Dirichlet-függvény **sehol sem** folytonos.
- Az $f(x) = [x]$ egészrész-függvény folytonos a $\left[0, \frac{1}{2}\right]$ intervallumon, de **nem** folytonos a $[0,1]$ intervallumon: az $1$-ben balról a határérték $0$, az érték viszont $1$ — a függvény „szakad".

## 53. Műveletek és folytonosság

A határértékre vonatkozó tételekből azonnal adódik:

**Tétel.** Ha $f$ és $g$ folytonos az $a \in \mathbb{R}$ pontban, akkor $f + g$ és $f \cdot g$ is az; továbbá ha $g(a) \neq 0$, akkor $\frac{f}{g}$ is folytonos $a$-ban.

**Következmény.** Mivel az állandó függvény és az $x \mapsto x$ függvény folytonos, a szorzat- és összegszabályból következik, hogy **minden polinom folytonos** $\mathbb{R}$-en, és a hányadosszabályból, hogy **minden racionális törtfüggvény folytonos az értelmezési tartománya minden pontjában**.

**Tétel (az egyenlőtlenség öröklődése).** Ha
$$\lim_{\substack{x\to\alpha \\ x\in A}} f(x) = b < c = \lim_{\substack{x\to\alpha \\ x\in A}} g(x),$$
akkor létezik az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U} \cap A$ esetén $f(x) < g(x)$.

(A bizonyítás az $\varepsilon = \frac{c-b}{2}$ választással megy: a két függvényérték egy-egy diszjunkt sávba szorul.)

**Tétel.** Ha létezik $\lim_{x\to\alpha} f(x) = b$ és $\lim_{x\to\alpha} g(x) = c$, továbbá van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, amelyben $f(x) \le g(x)$, akkor $b \le c$.

*Bizonyítás.* Legyen $x_n \in \dot{U}$, $x_n \to \alpha$. Ekkor $f(x_n) \le g(x_n)$ minden $n$-re, és a két oldal rendre $b$-hez, illetve $c$-hez tart; a sorozatokra vonatkozó rendezési tétel szerint $b \le c$. $\blacksquare$

**Következmények (előjeltartás).**
- Ha $f$ folytonos $a$-ban és $f(a) > 0$, akkor létezik $\delta > 0$ úgy, hogy minden $x \in B(a,\delta)$ esetén $f(x) > 0$.
- Ha létezik $\delta > 0$, amelyre minden $x \in \dot{B}(a,\delta)$-ra $f(x) \ge 0$, akkor $f(a) \ge 0$.

Figyeljük meg az aszimmetriát: a **szigorú** pozitivitás átöröklődik egy környezetre, de a határátmenet során csak a **gyenge** egyenlőtlenség marad meg.

**Tétel (átviteli elv a folytonosságra).** Tegyük fel, hogy $f$ értelmezett az $a \in \mathbb{R}$ egy környezetében. Ekkor
$$f \ \text{folytonos } a\text{-ban} \iff \text{minden } a_n \to a \ \text{sorozatra } f(a_n) \to f(a).$$

**Következmény: ha $f$ folytonos, akkor a $\lim$ és az $f$ felcserélhető.** Például
$$\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)^3 = \left(\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)\right)^3 = 2^3 = 8.$$
**De vigyázat, ha a függvény nem folytonos!**
$$\lim_{n\to\infty}\left\{1 - \frac{1}{n}\right\} = 1, \qquad \text{miközben} \qquad \left\{\lim_{n\to\infty}\left(1 - \frac{1}{n}\right)\right\} = \{1\} = 0.$$

**Tétel (folytonosság és kompozíció).** Ha $\lim_{x\to\alpha} g(x) = b$ és $f$ folytonos $b$-ben, akkor
$$\lim_{x\to\alpha} f(g(x)) = f(b) \qquad (\alpha = a-0,\ a,\ a+0).$$

**Következmény.** Ha $g$ folytonos $a$-ban és $f$ folytonos $g(a)$-ban, akkor $f \circ g$ folytonos $a$-ban.

## 54. Korlátos zárt intervallumon folytonos függvények

Most következik az elmélet három gyöngyszeme. Mindhárom lényegesen használja azt, hogy az intervallum **korlátos és zárt** — ha bármelyik feltételt elhagyjuk, az állítás megdől.

**Tétel (korlátosság).** Ha $f \in C[a,b]$, akkor $f$ korlátos $[a,b]$-n.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $f$ nem korlátos. Ekkor minden $n \in \mathbb{N}$-hez létezik $x_n \in [a,b]$, amelyre
$$|f(x_n)| > n.$$
Az $(x_n)$ sorozat korlátos (hiszen $[a,b]$-ben halad), tehát a Bolzano–Weierstrass-tétel szerint van konvergens részsorozata: $x_{n_k} \to c \in [a,b]$. (A határérték azért marad $[a,b]$-ben, mert a zárt intervallum a rendezési tétel szerint „megőrzi" a határértéket.) Mivel $f \in C[a,b]$, az átviteli elv szerint
$$f(x_{n_k}) \to f(c) \in \mathbb{R},$$
tehát az $(f(x_{n_k}))$ sorozat konvergens, így korlátos. Ez ellentmond annak, hogy $|f(x_{n_k})| > n_k \to \infty$. $\blacksquare$

**Tétel (Weierstrass tétele).** Ha $f \in C[a,b]$, akkor $f$-nek van maximuma és minimuma $[a,b]$-n, azaz létezik olyan hely, ahol a szuprémumot, illetve az infimumot **fel is veszi**.

*Bizonyítás.* Az előző tétel szerint $f$ korlátos, tehát $M = \sup R(f) \in \mathbb{R}$ létezik. Indirekt tegyük fel, hogy $f$ sehol sem veszi fel $M$-et, azaz minden $x \in [a,b]$-re $f(x) < M$. Ekkor a
$$g(x) \stackrel{\text{def}}{=} \frac{1}{M - f(x)}$$
függvény jól definiált (a nevező sehol sem nulla), és folytonos $[a,b]$-n, hiszen folytonos függvények hányadosa. Az előző tétel szerint tehát $g$ korlátos: létezik $K > 0$, amellyel minden $x$-re $|g(x)| \le K$, azaz
$$\frac{1}{M - f(x)} \le K \implies M - f(x) \ge \frac{1}{K} \implies f(x) \le M - \frac{1}{K}.$$
Eszerint $M - \frac{1}{K}$ felső korlátja $R(f)$-nek, holott $M$ a **legkisebb** felső korlát és $M - \frac{1}{K} < M$. Ellentmondás. A minimum esete $-f$-re alkalmazva adódik. $\blacksquare$

**Tétel (Bolzano–Darboux, közbenső érték tétele).** Ha $f \in C[a,b]$, akkor $f$ felvesz minden $f(a)$ és $f(b)$ közötti $c$ értéket.

*Bizonyítás.* Tegyük fel, hogy $f(a) < f(b)$ és $f(a) < c < f(b)$ (a másik eset hasonló). Legyen
$$H \stackrel{\text{def}}{=} \{x \in [a,b] : f(x) \le c\}.$$
Ez nem üres ($a \in H$, hiszen $f(a) < c$), és felülről korlátos ($b$ felső korlát). Legyen
$$\gamma \stackrel{\text{def}}{=} \sup H.$$

*Először:* $f(\gamma) \le c$. Valóban, minden $n \in \mathbb{N}$-re — mivel $\gamma$ a legkisebb felső korlát — létezik $x_n \in \left[\gamma - \frac{1}{n}, \gamma\right] \cap [a,b]$ úgy, hogy $f(x_n) \le c$. Ekkor $x_n \to \gamma$, és $f$ folytonossága miatt $f(x_n) \to f(\gamma)$, tehát $f(\gamma) \le c$. Speciálisan $f(\gamma) \le c < f(b)$, amiből $\gamma \neq b$.

*Másodszor:* $f(\gamma) \ge c$. A $H$ definíciója és a $\gamma = \sup H$ szerint minden $x \in (\gamma, b)$-re $f(x) > c$. A jobb oldali határértéket véve és felhasználva a folytonosságot:
$$f(\gamma) = \lim_{x\to\gamma+0} f(x) \ge c.$$

A kettőből $f(\gamma) = c$. $\blacksquare$

**Következmény (a gyökvonás létezése).** Ha $a \ge 0$ és $k \in \mathbb{N}$, akkor létezik olyan $b \in \mathbb{R}$, amelyre $b^k = a$; azaz **létezik $\sqrt[k]{a}$**.

*Bizonyítás.* Legyen $f(x) = x^k \in C[0, a+1]$. Ekkor $f(0) = 0$ és
$$f(a+1) = (a+1)^k \ge a + 1 > a$$
(a Bernoulli-egyenlőtlenség vagy egyszerű monotonitás alapján). A Bolzano–Darboux-tétel szerint tehát létezik $b \in [0, a+1]$ úgy, hogy $b^k = f(b) = a$. $\blacksquare$

Ez az a pillanat, amikor a $\sqrt{2}$ létezését végre **bebizonyítottuk** — a félév elején csak annyit tudtunk, hogy nem racionális.

**Tétel.** Ha $f \in C[a,b]$, akkor $R(f)$ vagy egyetlen pont, vagy korlátos zárt intervallum. Nevezetesen
$$R(f) = \left[\min_{x\in[a,b]} f(x),\ \max_{x\in[a,b]} f(x)\right].$$

*Bizonyítás.* A Weierstrass-tétel szerint a minimum és a maximum létezik és felvétetik; a Bolzano–Darboux-tétel szerint a köztük lévő minden érték is. $\blacksquare$

**Tétel.** Ha $I$ tetszőleges intervallum (zárt, nyílt, félig nyílt, korlátos vagy nem) és $f \in C(I)$, akkor $f(I)$ is intervallum.

*Bizonyítás.* Legyen $\alpha = \inf\{f(x) : x \in I\}$ és $\beta = \sup\{f(x) : x \in I\}$ (esetleg $\pm\infty$). Legyen $\alpha < a < b < \beta$ tetszőleges. A szuprémum és infimum definíciója szerint léteznek $x, y \in I$ pontok úgy, hogy
$$\alpha < f(x) < a < b < f(y) < \beta.$$
Az $x$ és $y$ közötti intervallumon a Bolzano–Darboux-tételt alkalmazva $(a,b) \subset f(I)$. Mivel ez minden ilyen $a, b$-re igaz,
$$(\alpha, \beta) \subset f(I) \subset [\alpha, \beta],$$
tehát $f(I)$ intervallum. $\blacksquare$

**Példák (a végpontok viselkedése tetszőleges).**
- $I = (-1,1)$, $f(x) = x^2$: ekkor $f(I) = [0,1)$ — nyílt intervallum képe félig zárt.
- $I = (0,1)$, $f(x) = \frac{1}{x}$: ekkor $f(I) = (1,+\infty)$ — korlátos intervallum képe nem korlátos.

## 55. Az inverz függvény folytonossága

**Tétel.** Ha $f$ szigorúan monoton növekedő és $f \in C[a,b]$, akkor
- **a)** $R(f) = [f(a), f(b)]$;
- **b)** létezik $f^{-1}$;
- **c)** $f^{-1}$ szigorúan monoton növekedő $[f(a), f(b)]$-n;
- **d)** $f^{-1} \in C[f(a), f(b)]$.

*Bizonyítás (a d) pont).* Legyen $f(a) < y < f(b)$, és legyen $x = f^{-1}(y) \in (a,b)$. Legyen
$$0 < \varepsilon < \min(x - a,\ b - x)$$
(ilyen $\varepsilon$ létezik, hiszen $x$ belső pont). Ekkor
$$a < x - \varepsilon < x < x + \varepsilon < b,$$
és a szigorú monotonitás miatt
$$f(a) < f(x-\varepsilon) < y < f(x+\varepsilon) < f(b).$$
Legyen most
$$\delta_\varepsilon \stackrel{\text{def}}{=} \min\{f(x+\varepsilon) - y,\ y - f(x-\varepsilon)\} > 0.$$
Ha $|t - y| < \delta_\varepsilon$, akkor $f(x-\varepsilon) < t < f(x+\varepsilon)$, és a c) pont (az inverz monotonitása) szerint
$$x - \varepsilon = f^{-1}(f(x-\varepsilon)) < f^{-1}(t) < f^{-1}(f(x+\varepsilon)) = x + \varepsilon,$$
azaz $|f^{-1}(t) - f^{-1}(y)| < \varepsilon$. Ez pontosan az $f^{-1}$ folytonossága $y$-ban. $\blacksquare$

**Megjegyzés.** Hasonló tétel érvényes szigorúan monoton csökkenő függvényekre, valamint nyílt intervallumon értelmezett függvényekre is. Ez a tétel alapozza meg a következő részben az arkusz-, a logaritmus- és az area függvények létezését és folytonosságát.

## 56. Szakadási helyek

**Definíció.** Tegyük fel, hogy létezik $\delta_0 > 0$ úgy, hogy $\dot{B}(a,\delta_0) \subset D(f)$. Ha $f$ nem folytonos $a$-ban, akkor $a$ az $f$ **szakadási helye**.

**Osztályozás.**

**i) Megszüntethető szakadás.** Ha létezik $\lim_{x\to a} f(x) = b \in \mathbb{R}$ (de ez nem egyenlő $f(a)$-val, vagy $f$ ott nincs is értelmezve), akkor $f$-et az $a$ pontban $b$-nek (át)definiálva a függvény folytonossá tehető. Ilyenkor $a$-ban **megszüntethető** szakadási hely van. Példa: $(\operatorname{sgn} x)^2$ a $0$-ban.

**ii) Ugrás.** Ha $\lim_{x\to a} f(x)$ nem létezik, de léteznek és végesek a féloldali határértékek,
$$\lim_{x\to a-0} f(x) = f(a-0) \in \mathbb{R}, \qquad \lim_{x\to a+0} f(x) = f(a+0) \in \mathbb{R},$$
akkor azt mondjuk, hogy $f$ **ugrik** $a$-ban. Példa: $\operatorname{sgn}(x)$ vagy $\{x\}$ a $0$-ban.

Az i) és ii) típusú szakadásokat együttesen **elsőfajú** szakadási helyeknek nevezzük. Ami nem elsőfajú, az **másodfajú**.

**Példák másodfajú szakadásra.** Az $\frac{1}{x}$ a $0$-ban (a féloldali határértékek végtelenek), vagy a $\left\{\frac{1}{x}\right\}$ a $0$-ban (a féloldali határértékek nem is léteznek, a függvény egyre gyorsabban oszcillál).

**Tétel.** Ha $f$ monoton a $(c,d)$ intervallumon és $a \in (c,d)$, akkor **léteznek** a féloldali határértékek:
$$\exists \lim_{x\to a-0} f(x) = f(a-0), \qquad \exists \lim_{x\to a+0} f(x) = f(a+0).$$

*Bizonyítás (a monoton növekedő eset, bal oldali határérték).* Legyen
$$b \stackrel{\text{def}}{=} \sup\{f(x) : x < a\}.$$
(Ez létezik és véges, mert a halmaz nem üres és $f(a)$ felső korlátja.) Legyen $\varepsilon > 0$. Mivel $b$ a legkisebb felső korlát, létezik $x_1 < a$, amelyre
$$f(x_1) > b - \varepsilon.$$
Legyen $\delta \stackrel{\text{def}}{=} a - x_1 > 0$. A monotonitás miatt minden $x \in (x_1, a) = (a-\delta, a)$-ra
$$b - \varepsilon < f(x_1) \le f(x) \le b,$$
azaz $|f(x) - b| < \varepsilon$. Tehát $f(a-0) = b$. $\blacksquare$

**Következmény.** Monoton függvénynek csak **elsőfajú** szakadási helye lehet.

**Tétel.** Ha $f$ monoton a $(c,d)$ intervallumon, akkor itt legfeljebb **megszámlálható** sok elsőfajú szakadási helytől eltekintve folytonos.

*Bizonyítás.* Legyen $a$ szakadási hely. A monotonitás (mondjuk növekedés) miatt $f(a-0) < f(a+0)$, tehát az $\big(f(a-0), f(a+0)\big)$ nyílt intervallum nem üres. A racionális számok sűrűsége miatt választhatunk egy
$$r(a) \in \mathbb{Q} \cap \big(f(a-0),\ f(a+0)\big)$$
racionális számot. Ha $a' \neq a$ egy másik szakadási hely, akkor a hozzájuk tartozó „ugrás-intervallumok" diszjunktak (ezt ismét a monotonitás garantálja), tehát $r(a') \neq r(a)$. Az $a \mapsto r(a)$ hozzárendelés tehát **injektív** leképezés a szakadási helyek halmazáról $\mathbb{Q}$-ba. Mivel $\mathbb{Q}$ megszámlálható, a szakadási helyek halmaza is az. $\blacksquare$

Ez az érvelés a félév egyik legelegánsabb gondolata: a megszámlálhatóságot arra használjuk, hogy egy analízisbeli halmaz méretét megbecsüljük.

## 57. Konvexitás és folytonosság

Emlékeztetőül: $h_{a,b}(x) = f(a) + \frac{f(b)-f(a)}{b-a}(x-a)$ a húr egyenlete; erre $h_{a,b}(a) = f(a)$, $h_{a,b}(b) = f(b)$, és $h_{a,b}$ lineáris, tehát folytonos függvény.

**Lemma.** Tegyük fel, hogy $f$ konvex $I$-n, $a, b \in I$, $a < b$, és $x \in I \setminus [a,b]$. Ekkor
$$f(x) \ge h_{a,b}(x).$$

Vagyis: a húr az $[a,b]$ intervallumon **fölötte** van a függvénynek, azon kívül viszont **alatta**.

*Bizonyítás (vázlat).* Tudjuk, hogy $m_a(x) = \frac{f(x)-f(a)}{x-a}$ monoton növekedő. Ha $x > b$, akkor
$$m_a(x) \ge m_a(b) = \frac{f(b)-f(a)}{b-a},$$
amit átrendezve $h_{a,b}(x) \le h_{a,x}(x) = f(x)$. Szigorú konvexitás esetén $f(x) > h_{a,b}(x)$. $\blacksquare$

**Tétel.** Ha $f$ konvex az $I$ **nyílt** intervallumon, akkor $f \in C(I)$.

*Bizonyítás.* Legyen $c \in I$, és — kihasználva, hogy $I$ nyílt — válasszunk $a, b \in I$ pontokat úgy, hogy $a < c < b$. Legyen $x \in (c, b)$. Ekkor
- a lemma szerint (az $[a,c]$ húrra, $x \notin [a,c]$): $h_{a,c}(x) \le f(x)$;
- a konvexitás szerint (a $[c,b]$ húrra, $x \in [c,b]$): $f(x) \le h_{c,b}(x)$.

Tehát
$$h_{a,c}(x) \le f(x) \le h_{c,b}(x).$$
Ha most $x \to c+0$, akkor a két szélső tag — mivel lineáris, tehát folytonos függvények — egyaránt $h_{a,c}(c) = f(c)$-hez, illetve $h_{c,b}(c) = f(c)$-hez tart. A rendőrelv szerint $f(x) \to f(c)$, azaz $f$ jobbról folytonos $c$-ben. A bal oldali eset hasonló. $\blacksquare$

**Megjegyzés.** Az $I$ **nyíltsága lényeges**: zárt intervallum végpontjában a konvex függvény „felugorhat" anélkül, hogy elveszítené a konvexitását.

**Következmény.** Korábban láttuk, hogy gyengén konvex $\not\Rightarrow$ konvex. Most viszont kimondhatjuk: **ha $f$ folytonos, akkor gyengén konvex $\iff$ konvex.**

---

# XI. RÉSZ: AZ ELEMI FÜGGVÉNYEK

## 58. Trigonometrikus függvények

A körív hosszúságának pontos definíciója nem egyszerű (ehhez integrálszámításra volna szükség); most szemléletből fogadjuk el, és ezen az alapon definiáljuk a szögfüggvényeket.

**Definíció.** Tetszőleges $x \in [0, 2\pi)$ esetén mérjünk fel az egységkörre (a $K$ körre) egy $x$ hosszúságú körívet, pozitív (az óramutató járásával ellentétes) irányban, a $(1,0)$ pontból indulva. Az így kapott $P$ pont első koordinátáját $\cos x$-szel, a második koordinátáját $\sin x$-szel jelöljük.

Ha $x \in \mathbb{R}$ tetszőleges, és $2k\pi \le x < 2(k+1)\pi$ valamely $k \in \mathbb{Z}$-re (azaz $k = \left[\frac{x}{2\pi}\right]$), akkor
$$\sin x = \sin(x - 2k\pi), \qquad \cos x = \cos(x - 2k\pi).$$

**Alapvető tulajdonságok.**
$$\cos(k\pi) = (-1)^k, \qquad \sin(k\pi) = 0 \qquad (k \in \mathbb{Z}),$$
$$\cos(x + 2\pi) = \cos x, \qquad \sin(x+2\pi) = \sin x \qquad (2\pi \text{ szerinti periodicitás}),$$
$$-1 \le \sin x \le 1, \qquad -1 \le \cos x \le 1.$$
A $\cos$ monoton csökkenő a $[0,\pi] + 2k\pi$ intervallumokon, és monoton növekedő a $[-\pi, 0] + 2k\pi$ intervallumokon.

**A „Piti tétel" (Pitagorasz-tétel a körön).**
$$\sin^2 x + \cos^2 x = 1.$$
Ez közvetlenül abból következik, hogy $P$ az egységkörön van.

**Paritás és tükrözési azonosságok.**
$$\cos(-x) = \cos x \quad (\text{páros}), \qquad \sin(-x) = -\sin x \quad (\text{páratlan}),$$
$$\cos\!\left(\frac{\pi}{2} - x\right) = \sin x, \qquad \sin\!\left(\frac{\pi}{2} - x\right) = \cos x.$$
Az utóbbi két azonosság a $Q$ és $Q'$ tükörképpontok geometriai összehasonlításából adódik; ezekből következnek a $\sin$ monotonitási intervallumai is.

**Addíciós képletek.**
$$\sin(x \pm y) = \sin x \cos y \pm \cos x \sin y \implies \sin 2x = 2 \sin x \cos x,$$
$$\cos(x \pm y) = \cos x \cos y \mp \sin x \sin y \implies \cos 2x = \cos^2 x - \sin^2 x = 2\cos^2 x - 1.$$
Az utóbbiból a linearizáló képletek:
$$\cos^2 x = \frac{1 + \cos 2x}{2}, \qquad \sin^2 x = \frac{1 - \cos 2x}{2}.$$

A továbbiakban egyetlen további képletre lesz szükségünk, a különbség szorzattá alakítására:
$$(\otimes) \qquad \sin x - \sin y = 2 \sin\frac{x-y}{2} \cos\frac{x+y}{2}.$$

**Tétel.** a) Ha $x > 0$, akkor $\sin x < x$. b) Ha $x \neq 0$, akkor $|\sin x| < |x|$.

*Bizonyítás.* a) Ha $x \ge \frac{\pi}{2}$, akkor az állítás triviális, hiszen $x \ge \frac{\pi}{2} > 1 \ge \sin x$. Ha $0 < x < \frac{\pi}{2}$, akkor geometriai megfontolással: a $P$ ponthoz tartozó húr hossza kisebb, mint a megfelelő ív hossza, hiszen **két pont között a legrövidebb út az egyenes** (ez az ívhossz definíciójában rejlik). Formálisan
$$2\sin x < |Q - P| + |Q' - P| \le 2x.$$

b) Az a) pontból, a páratlanságot felhasználva: $|\sin(-x)| = |\sin x| < |-x| = |x|$. $\blacksquare$

**Tétel (Lipschitz-tulajdonság).** Minden $x, y \in \mathbb{R}$-re
$$\text{i)}\quad |\sin x - \sin y| \le |x - y|, \qquad \text{ii)}\quad |\cos x - \cos y| \le |x-y|.$$

*Bizonyítás.* i) A $(\otimes)$ képlet és az előző tétel szerint
$$|\sin x - \sin y| = 2\left|\sin\frac{x-y}{2}\right| \cdot \left|\cos\frac{x+y}{2}\right| \le 2 \cdot \left|\frac{x-y}{2}\right| \cdot 1 = |x-y|.$$
ii) Következik i)-ből és a $\cos x = \sin\!\left(\frac{\pi}{2} - x\right)$ azonosságból. $\blacksquare$

**Következmény.** $\sin, \cos \in C(\mathbb{R})$; sőt adott $\varepsilon > 0$-hoz a $\delta_\varepsilon = \varepsilon$ választás megfelelő (**egyenletesen** folytonosak).

**Definíció.** $\displaystyle \tan x = \frac{\sin x}{\cos x}$ és $\displaystyle \cot x = \frac{\cos x}{\sin x}$ (magyar jelöléssel $\operatorname{tg}$ és $\operatorname{ctg}$).

**Tétel.** A $\tan$ folytonos az $\mathbb{R} \setminus \left\{\frac{\pi}{2} + k\pi : k \in \mathbb{Z}\right\}$ halmazon, a $\cot$ pedig az $\mathbb{R}\setminus\{k\pi : k \in \mathbb{Z}\}$ halmazon (a hányadosfüggvény folytonossága miatt, a nevező zérushelyeit kizárva).

## 59. Az arkusz (ciklometrikus) függvények

A $\sin$, $\cos$, $\tan$, $\cot$ periodikusak, tehát **nem invertálhatók**. Ha azonban alkalmas intervallumra szorítjuk őket, ahol szigorúan monotonok, akkor az 55. szakasz tétele szerint folytonos, szigorúan monoton inverzük van:

- $\sin x|_{[-\pi/2,\ \pi/2]}$ és $\tan x|_{(-\pi/2,\ \pi/2)}$ szigorúan monoton **növekedő**;
- $\cos x|_{[0,\pi]}$ és $\cot x|_{(0,\pi)}$ szigorúan monoton **csökkenő**.

**Definíció (arkuszfüggvények).**
$$\arcsin : [-1,1] \to \left[-\frac{\pi}{2}, \frac{\pi}{2}\right], \qquad \arccos : [-1,1] \to [0,\pi],$$
$$\arctan : \mathbb{R} \to \left(-\frac{\pi}{2}, \frac{\pi}{2}\right), \qquad \operatorname{arccot} : \mathbb{R} \to (0,\pi).$$

**Összefüggések.**
$$\arccos x = \frac{\pi}{2} - \arcsin x,$$
hiszen $\cos\!\left(\frac{\pi}{2} - \arcsin x\right) = \sin(\arcsin x) = x$, és a jobb oldal a $[0,\pi]$ intervallumba esik. Hasonlóan
$$\operatorname{arccot} x = \frac{\pi}{2} - \arctan x.$$

## 60. Hatványozás

**Jelölés.** $\underbrace{a \cdots a}_{n\text{-szer}} = a^n$.

**Állítás.** Ha $0 < a < b$, akkor minden $n \in \mathbb{N}$-re $a^n < b^n$.

*Bizonyítás (teljes indukcióval).* $n = 1$-re igaz. Ha $0 < a^{n-1} < b^{n-1}$, akkor
$$a \cdot a^{n-1} < a \cdot b^{n-1} < b \cdot b^{n-1}. \qquad \blacksquare$$

Korábban (a Bolzano–Darboux-tételből) beláttuk, hogy minden $a > 0$-hoz és $k \in \mathbb{N}$-hez létezik $b \in \mathbb{R}$ úgy, hogy $b^k = a$. A fenti szigorú monotonitás miatt ez a $b = \sqrt[k]{a}$ **egyértelmű**.

**A hatványazonosságok.** Ha $a, b > 0$ és $x, y \in \mathbb{N} \cup \{0\}$, akkor (középiskolából ismerten, illetve indukcióval)
$$\text{I.}\ (ab)^x = a^x b^x, \qquad \text{II.}\ a^{x+y} = a^x a^y, \qquad \text{III.}\ (a^x)^y = a^{xy}.$$

**Cél: kiterjeszteni $a^x$-et minden valós $x$-re, úgy, hogy ezek az azonosságok megmaradjanak.** Ez a kiterjesztési gondolat vezérli a következő három lépést.

**1. lépés: egész kitevő.** Ha $a \neq 0$, akkor II. megkövetelné, hogy
$$a^{x+0} = a^x \cdot a^0 = a^x \implies a^0 \stackrel{\text{def}}{=} 1,$$
$$a^{x + (-x)} = a^0 = 1 \implies a^{-x} \stackrel{\text{def}}{=} \frac{1}{a^x}.$$
Ezzel $a^x$ értelmezhető minden $x \in \mathbb{Z}$-re. (A $0$ alapra: $0^x = 0$, ha $x \in \mathbb{N}$; megállapodás szerint $0^0 = 1$; a többi hatvány nincs definiálva.)

**2. lépés: racionális kitevő.** Legyen $a > 0$, $p, q \in \mathbb{Z}$, $q > 0$. Definíció:
$$a^{p/q} \stackrel{\text{def}}{=} \sqrt[q]{a^p}, \qquad \text{amiből} \qquad \left(a^{p/q}\right)^q = a^p.$$
(Ha $q$ páros, akkor $-\sqrt[q]{a^p}$ is megoldása volna a $t^q = a^p$ egyenletnek, de megállapodás szerint mindig a **pozitív** értéket vesszük. Ha $q$ páratlan, akkor $\sqrt[q]{a^p}$ negatív $a$-ra is értelmezhető; a továbbiakban azonban végig feltesszük, hogy $a > 0$.)

**Tétel (a definíció jó, azaz független a tört alakjától).** Ha $a > 0$, $n, m, p, q \in \mathbb{Z}$, $m, q > 0$ és $\frac{n}{m} = \frac{p}{q}$, akkor $a^{n/m} = a^{p/q}$.

*Bizonyítás.* Emeljük mindkét oldalt az $mq$-adik hatványra:
$$\left(\sqrt[m]{a^n}\right)^{mq} = (a^n)^q = a^{nq}, \qquad \left(\sqrt[q]{a^p}\right)^{mq} = (a^p)^m = a^{pm}.$$
Mivel $\frac{n}{m} = \frac{p}{q}$, azaz $qn = pm$, a két hatvány egyenlő. Mindkét szám pozitív, és a pozitív számok körében az $mq$-adik hatványra emelés injektív (szigorúan monoton), tehát maguk a számok is egyenlők. $\blacksquare$

**Tétel.** A hatványazonosságok (I., II., III.) érvényben maradnak, ha $a, b > 0$ és $x, y \in \mathbb{Q}$.

*Bizonyítás (a II. azonosság).* Emeljük mindkét oldalt a $qs$-edik hatványra:
$$\left(a^{\frac{p}{q} + \frac{r}{s}}\right)^{qs} = \left(a^{\frac{ps + rq}{qs}}\right)^{qs} = a^{ps + rq},$$
$$\left(a^{p/q} \cdot a^{r/s}\right)^{qs} = \left(a^{p/q}\right)^{qs} \cdot \left(a^{r/s}\right)^{qs} = a^{ps} \cdot a^{rq} = a^{ps + rq},$$
ahol az utolsó lépésben az **egész kitevős** esetet használtuk. A két oldal $qs$-edik hatványa tehát megegyezik, és mindkettő pozitív. $\blacksquare$

**Tétel (pozitivitás és monotonitás racionális kitevőre).** Ha $a > 0$ és $r \in \mathbb{Q}$, akkor $a^r > 0$. Továbbá ha $r_1, r_2 \in \mathbb{Q}$ és $r_1 < r_2$, akkor
$$a > 1 \implies a^{r_1} < a^{r_2}, \qquad 0 < a < 1 \implies a^{r_1} > a^{r_2}.$$

*Bizonyítás.* A pozitivitás: $a > 0 \implies a^p > 0 \implies \sqrt[q]{a^p} > 0$.

A monotonitás ($a > 1$ eset): ha $p, q \in \mathbb{N}$, akkor $a^p > 1$, és ebből $\sqrt[q]{a^p} > 1$ — mert ha nem így volna, azaz $\sqrt[q]{a^p} \le 1$ volna, akkor $q$-adik hatványra emelve $a^p \le 1$ adódna. Tehát $a^r > 1$ minden pozitív racionális $r$-re. Innen
$$a^{r_2} = a^{r_1} \cdot a^{r_2 - r_1} > a^{r_1},$$
hiszen $a^{r_2 - r_1} > 1$. A $0 < a < 1$ eset $\frac{1}{a} > 1$-re visszavezethető. $\blacksquare$

**3. lépés: valós kitevő.** Mennyi legyen $a^{\sqrt{2}}$? A monotonitás alapján, ha $a > 1$:
$$a^{1{,}4} < a^{1{,}41} < a^{1{,}414} < \dots < a^{\sqrt{2}} < \dots < a^{1{,}5} < a^2.$$
Az $a^{\sqrt{2}}$ értéket tehát „alulról" és „felülről" is közelíthetjük racionális kitevőkkel — és pontosan ez lesz a definíció.

**Definíció.** Ha $a > 1$ és $x \in \mathbb{R}$, akkor
$$a^x \stackrel{\text{def}}{=} \sup \underbrace{\{a^r : r \in \mathbb{Q},\ r < x\}}_{A} \overset{(*)}{=} \inf \underbrace{\{a^s : s \in \mathbb{Q},\ s > x\}}_{B}.$$
Ha $0 < a < 1$, akkor $a^x = \inf A \overset{(**)}{=} \sup B$.

A $(*)$ és $(**)$ egyenlőségek (vagyis az, hogy az alulról és felülről vett közelítés ugyanoda vezet) nem triviálisak, bizonyításuk a tankönyvben található.

**Tétel.** Minden $a > 0$ és $x \in \mathbb{R}$ esetén $a^x > 0$. Ha $x_1 < x_2$, akkor
$$a > 1 \implies a^{x_1} < a^{x_2}, \qquad 0 < a < 1 \implies a^{x_1} > a^{x_2}.$$

*Bizonyítás ($a > 1$).* Válasszunk $r \in \mathbb{Q}$, $r < x$ számot; ekkor a definíció szerint $a^x \ge a^r > 0$. A monotonitáshoz: ha $x_1 < x_2$, válasszunk $r_1, r_2 \in \mathbb{Q}$ számokat úgy, hogy
$$x_1 < r_1 < r_2 < x_2$$
(ez a racionális számok sűrűsége miatt lehetséges). Ekkor
$$a^{x_1} \le a^{r_1} < a^{r_2} \le a^{x_2},$$
ahol a két szélső egyenlőtlenség a definícióból (infimum, illetve szuprémum), a középső pedig a racionális kitevős monotonitási tételből adódik. $\blacksquare$

## 61. Az exponenciális és a hatványfüggvény

**Tétel (folytonosság).** Tegyük fel, hogy $a > 0$ és $x_n \to x$. Ekkor $a^{x_n} \to a^x$.

**Következmény.** $a^x \in C(\mathbb{R})$.

*Bizonyítás ($a > 1$; a $0 < a < 1$ eset hasonló, $a = 1$ triviális).* Tudjuk, hogy
$$a^x = \sup\{a^r : r \in \mathbb{Q},\ r < x\} = \inf\{a^s : s \in \mathbb{Q},\ x < s\}.$$
Legyen $\varepsilon > 0$. A szuprémum és infimum tulajdonsága szerint léteznek $r < x < s$ racionális számok úgy, hogy
$$a^x - \varepsilon < a^r \le a^x \le a^s < a^x + \varepsilon.$$
Mivel $x_n \to x$, létezik olyan $n_0$, hogy minden $n \ge n_0$-ra $x_n \in (r, s)$. Az $a^x$ szigorú monotonitása miatt ekkor
$$a^x - \varepsilon < a^r < a^{x_n} < a^s < a^x + \varepsilon,$$
azaz $|a^{x_n} - a^x| < \varepsilon$. $\blacksquare$

**Megjegyzés (alternatív definíció).** Az $a^x$-et definiálhattuk volna úgy is, hogy veszünk egy $x_n \in \mathbb{Q}$, $x_n \to x$ sorozatot, és $a^x \stackrel{\text{def}}{=} \lim_{n\to\infty} a^{x_n}$. Ehhez azonban meg kellene mutatni, hogy a határérték létezik, **és** hogy nem függ az $(x_n)$ sorozat választásától. A szuprémumos definíció ezt a kettős kötelezettséget kerüli el.

**Tétel.** A hatványazonosságok érvényesek, ha $a, b > 0$ és $x, y \in \mathbb{R}$.

*Bizonyítás.* A racionális kitevős esetet már tudjuk. Válasszunk $r_n, s_n \in \mathbb{Q}$ sorozatokat úgy, hogy $r_n \to x$ és $s_n \to y$. Ekkor a folytonossági tétel és a racionális eset szerint
$$(ab)^x = \lim_{n\to\infty} (ab)^{r_n} = \lim_{n\to\infty} a^{r_n} b^{r_n} = a^x b^x,$$
és $r_n + s_n \to x + y$ miatt
$$a^{x+y} = \lim_{n\to\infty} a^{r_n + s_n} = \lim_{n\to\infty} a^{r_n} a^{s_n} = a^x a^y.$$
A III. azonosság hasonlóan, némi óvatossággal. $\blacksquare$

**Definíció.** Legyen $a > 0$ rögzített. Az
$$x \mapsto a^x \qquad (x \in \mathbb{R})$$
függvényt **$a$ alapú exponenciális függvénynek** nevezzük (jelölése $\exp_a(x)$ is). Ha viszont $b \in \mathbb{R}$ rögzített, akkor az
$$x \mapsto x^b \qquad (x > 0)$$
függvény a **$b$ kitevőjű hatványfüggvény**.

A kettő megkülönböztetése lényeges: az elsőben a **kitevő** a változó, a másodikban az **alap**.

**Tétel (az exponenciális függvény tulajdonságai).**
- Ha $a > 1$: minden $x$-re $a^x > 0$, a függvény szigorúan monoton növekedő és folytonos, továbbá
 $$(*) \qquad \lim_{x\to+\infty} a^x = +\infty, \qquad \lim_{x\to-\infty} a^x = 0.$$
- Ha $0 < a < 1$: minden $x$-re $a^x > 0$, a függvény szigorúan monoton csökkenő és folytonos, továbbá
 $$(**) \qquad \lim_{x\to+\infty} a^x = 0, \qquad \lim_{x\to-\infty} a^x = +\infty.$$

*Bizonyítás ($a > 1$).* A pozitivitást, a szigorú monotonitást és a folytonosságot már beláttuk. A határértékhez írjuk $a = 1 + b$ alakban ($b > 0$), és alkalmazzuk a Bernoulli-egyenlőtlenséget:
$$a^n = (1+b)^n \ge 1 + nb \to +\infty,$$
tehát $a^n \to +\infty$, ha $n \to +\infty$ egész értékeken. Innen $a^{-n} = \frac{1}{a^n} \to 0$. A monotonitás miatt ez tetszőleges valós $x$-re is átvihető: minden $K$-hoz létezik $N_K$ úgy, hogy ha $[x] \ge N_K$, akkor
$$a^x \ge a^{[x]} > K,$$
tehát $a^x \to +\infty$, ha $x \to +\infty$. Végül ha $x \to -\infty$, akkor $-x \to +\infty$, tehát $a^{-x} \to +\infty$, azaz $a^x = \frac{1}{a^{-x}} \to 0$. $\blacksquare$

**Tétel (a hatványfüggvény tulajdonságai).**
- **i)** Ha $b > 0$: $x^b > 0$, szigorúan monoton növekedő és folytonos $(0,+\infty)$-en, továbbá
 $$\lim_{x\to 0+0} x^b = 0, \qquad \lim_{x\to+\infty} x^b = +\infty.$$
- **ii)** Ha $b < 0$: $x^b > 0$, szigorúan monoton csökkenő és folytonos $(0,+\infty)$-en, továbbá
 $$\lim_{x\to 0+0} x^b = +\infty, \qquad \lim_{x\to+\infty} x^b = 0.$$

*Bizonyítás (a $b > 0$ eset).* Ha $t \ge 1$, akkor $t^b \ge t^0 = 1$. Ezért $0 < x < y$ esetén
$$y^b = \left(\frac{y}{x} \cdot x\right)^b = \left(\frac{y}{x}\right)^b x^b > 1 \cdot x^b = x^b,$$
tehát $x^b$ szigorúan monoton növekedő. A határértékek: minden $K > 0$-ra $x^b > K$, ha $x > K^{1/b}$, tehát $\lim_{x\to+\infty} x^b = +\infty$; és minden $\varepsilon > 0$-ra $x^b < \varepsilon$, ha $0 < x < \varepsilon^{1/b}$, tehát $\lim_{x\to 0+0} x^b = 0$.

A folytonossághoz legyen $x_0 > 0$ és $0 < \varepsilon < x_0^b$. Legyen
$$A \stackrel{\text{def}}{=} (x_0^b - \varepsilon)^{1/b}, \qquad B \stackrel{\text{def}}{=} (x_0^b + \varepsilon)^{1/b};$$
a monotonitás miatt $A < x_0 < B$. Ha $A < x < B$, akkor ismét a monotonitás szerint
$$x_0^b - \varepsilon = A^b < x^b < B^b = x_0^b + \varepsilon,$$
ami éppen a folytonosság. $\blacksquare$

## 62. A logaritmusfüggvények

Legyen $a > 0$, $a \neq 1$. Az $a^x$ függvény szigorúan monoton és folytonos $\mathbb{R}$-en, értékkészlete pedig $R(a^x) = (0,+\infty)$. Az 55. szakasz tétele szerint tehát létezik folytonos és szigorúan monoton inverze.

**Definíció.** Az $x \mapsto a^x$ függvény inverzét **$a$ alapú logaritmusnak** nevezzük; jelölése $\log_a x$. Azaz
$$(*) \qquad \log_a x = y \iff a^y = x \iff \exp_a y = x.$$

**Tulajdonságok.**
1. $D(\log_a x) = (0,+\infty)$ és $R(\log_a x) = \mathbb{R}$.
2. $\log_a x \in C(0,+\infty)$.
3. Ha $a > 1$, akkor $\log_a x$ szigorúan monoton növekedő; ha $0 < a < 1$, akkor szigorúan monoton csökkenő.
4. Ha $a > 1$, akkor
 $$\lim_{x\to+\infty} \log_a x = +\infty, \qquad \lim_{x\to 0+0} \log_a x = -\infty;$$
 ha $0 < a < 1$, akkor a két határérték felcserélődik.

*Bizonyítás (a 4. pont, $a > 1$).* Ha $x > a^K$, akkor $(*)$ és a monotonitás szerint $\log_a x > K$, tehát $\lim_{x\to+\infty} \log_a x = +\infty$. Hasonlóan, ha $0 < x < a^K$, akkor $\log_a x < K$, tehát $\lim_{x\to 0+0}\log_a x = -\infty$. $\blacksquare$

**5. A logaritmus azonosságai.** Ha $a > 0$, $a \neq 1$, és $x, y > 0$, akkor
$$\log_a(xy) = \log_a x + \log_a y, \qquad \log_a\!\left(\frac{x}{y}\right) = \log_a x - \log_a y,$$
$$\log_a \sqrt[y]{x} = \frac{1}{y}\log_a x, \qquad \log_a\!\left(\frac{1}{x}\right) = -\log_a x,$$
$$(\otimes) \qquad \log_a(x^y) = y \log_a x.$$

*Bizonyítás (a $(\otimes)$ azonosság).* Minden azonosságot a hatványazonosságokra és $(*)$-ra kell visszavezetni:
$$a^{\log_a(x^y)} \overset{(*)}{=} x^y \overset{(*)}{=} \left(a^{\log_a x}\right)^y \overset{\text{III.}}{=} a^{y\log_a x}.$$
Mivel az $a^t$ függvény injektív (szigorúan monoton), a kitevőknek meg kell egyezniük:
$$\log_a(x^y) = y\log_a x. \qquad \blacksquare$$

## 63. Az e szám és a természetes logaritmus

A 17. szakaszban láttuk, hogy az
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekedő, és hogy az
$$f_m = \left(1 + \frac{1}{m}\right)^{m+1}$$
sorozat szigorúan monoton csökkenő. Most bebizonyítjuk, hogy ugyanahhoz a számhoz tartanak.

**Állítás.** Minden $n, m \in \mathbb{N}$ esetén
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{m}\right)^{m+1}.$$

*Bizonyítás.* Ha $n = m$, akkor nyilvánvaló, hiszen a jobb oldal egy $(1 + \frac{1}{n}) > 1$ tényezővel nagyobb. Az általános eset ebből a tranzitivitással és a két sorozat monotonitásával adódik: ha $m < n$, akkor
$$e_n < e_{n} \cdot \left(1 + \tfrac{1}{n}\right) = f_n \le f_m,$$
és hasonlóan a másik irányban. $\blacksquare$

**Következmény.** Minden $m$-re $f_m$ felső korlátja az $(e_n)$ sorozatnak. Mivel $(e_n)$ monoton növekedő és felülről korlátos, **konvergens**; hasonlóan $(f_m)$ monoton csökkenő és alulról korlátos, tehát szintén konvergens. Legyen
$$e_n \to e, \qquad f_m \to f.$$

**Állítás.** $e = f$.

*Bizonyítás.* Minden $m$ és $n$ esetén $f_m \ge e_n$; rögzített $m$ mellett $n \to +\infty$ határátmenettel $f_m \ge e$, majd $m \to +\infty$-nel $f \ge e$. (Mellesleg $f_1 = \left(1 + \frac{1}{1}\right)^2 = 4 \ge e$, tehát $e \le 4$.)

A másik irányhoz becsüljük a különbséget:
$$f - e \le f_n - e_n = \left(1 + \frac{1}{n}\right)^{n+1} - \left(1 + \frac{1}{n}\right)^n = \left(1 + \frac{1}{n}\right)^n \cdot \left(\left(1 + \frac{1}{n}\right) - 1\right) = \left(1 + \frac{1}{n}\right)^n \cdot \frac{1}{n} \le \frac{4}{n}.$$
Ez minden $n \in \mathbb{N}$-re igaz, és a jobb oldal $0$-hoz tart, tehát $f - e \le 0$. A kettőből $f = e$. $\blacksquare$

**Definíció.**
$$e \stackrel{\text{def}}{=} \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^{n+1} = 2{,}7182818\dots$$

**Definíció.** A $\log_e x$ függvényt **természetes alapú logaritmusnak** nevezzük; jelölése $\ln x$ (vagy egyszerűen $\log x$).

## 64. Hiperbolikus függvények

**Definíció.**
$$(*) \qquad \operatorname{sh} x = \frac{e^x - e^{-x}}{2} \quad (\textit{szinusz hiperbolikusz}), \qquad \operatorname{ch} x = \frac{e^x + e^{-x}}{2} \quad (\textit{koszinusz hiperbolikusz}).$$

**Alaptulajdonságok.** Mindkettő folytonos (folytonos függvények összege, illetve különbsége). Az $\operatorname{sh}$ páratlan, a $\operatorname{ch}$ páros. Mivel $e^x$ szigorúan monoton növekedő és $e^{-x}$ szigorúan monoton csökkenő, a különbségük — azaz $2\operatorname{sh} x$ — szigorúan monoton növekedő. Továbbá
$$\lim_{x\to+\infty} \operatorname{sh} x = +\infty, \qquad \lim_{x\to-\infty} \operatorname{sh} x = -\infty, \qquad \lim_{x\to\pm\infty} \operatorname{ch} x = +\infty, \qquad \operatorname{ch}(0) = 1.$$

**A hiperbolikus alapazonosság.**
$$\operatorname{ch}^2 x - \operatorname{sh}^2 x = 1.$$
*Bizonyítás.* Egyszerű behelyettesítés:
$$\left(\frac{e^x + e^{-x}}{2}\right)^2 - \left(\frac{e^x - e^{-x}}{2}\right)^2 = \frac{(e^{2x} + 2 + e^{-2x}) - (e^{2x} - 2 + e^{-2x})}{4} = \frac{4}{4} = 1. \qquad \blacksquare$$

**Az elnevezés magyarázata.** Az azonosság szerint minden $t \in \mathbb{R}$-re az $(\operatorname{ch} t, \operatorname{sh} t)$ pont az
$$x^2 - y^2 = 1, \qquad \text{azaz} \qquad (x-y)(x+y) = 1$$
egyenletű **hiperbolán** van — pontosan úgy, ahogy a $(\cos t, \sin t)$ pont az $x^2 + y^2 = 1$ egyenletű **körön**. Innen az elnevezés. (Komplex függvénytanban a párhuzam még szorosabbá válik: $\cos x = \frac{e^{ix} + e^{-ix}}{2}$ és $\sin x = \frac{e^{ix} - e^{-ix}}{2i}$.)

**Következmények.** $\operatorname{ch} x \ge 1 > 0$, és mivel $\operatorname{ch} x > 0$, a gyökvonásnál nincs előjel-kétértelműség:
$$\operatorname{ch} x = \sqrt{1 + \operatorname{sh}^2 x}.$$
Ebből adódik, hogy $\operatorname{ch} x$ szigorúan monoton növekedő $[0,+\infty)$-en, és szigorúan monoton csökkenő $(-\infty, 0]$-n.

**Addíciós képletek.**
$$\operatorname{sh}(x \pm y) = \operatorname{sh} x \operatorname{ch} y \pm \operatorname{ch} x \operatorname{sh} y, \qquad \operatorname{ch}(x\pm y) = \operatorname{ch} x \operatorname{ch} y \pm \operatorname{sh} x \operatorname{sh} y.$$
(Bizonyításuk a $(*)$ definíció és az $e^{x+y} = e^x e^y$ azonosság közvetlen alkalmazása. Figyeljük meg az előjelet a $\operatorname{ch}$ képletben: itt **nincs** előjelváltás, szemben a trigonometrikus esettel.) Következmény: $\operatorname{sh} 2x = 2\operatorname{sh} x \operatorname{ch} x$.

**Definíció.**
$$\operatorname{th} x = \frac{\operatorname{sh} x}{\operatorname{ch} x} = \frac{e^x - e^{-x}}{e^x + e^{-x}}, \qquad \operatorname{cth} x = \frac{\operatorname{ch} x}{\operatorname{sh} x} = \frac{1}{\operatorname{th} x}.$$
Határértékeik:
$$\lim_{x\to-\infty}\operatorname{th} x = -1, \quad \lim_{x\to+\infty}\operatorname{th} x = 1, \quad \lim_{x\to\pm\infty}\operatorname{cth} x = \pm 1, \quad \lim_{x\to 0\pm 0}\operatorname{cth} x = \pm\infty.$$

## 65. Az area függvények

**Definíció (area szinusz hiperbolikusz).** Az $\operatorname{sh} : \mathbb{R} \to \mathbb{R}$ bijekció (szigorúan monoton növekedő, folytonos, értékkészlete $\mathbb{R}$), tehát van inverze; ezt **area szinusz hiperbolikusznak** nevezzük, jelölése $\operatorname{arsh} x$. Szigorúan monoton növekedő és folytonos, és zárt alakban is felírható:
$$\operatorname{arsh} x = \ln\!\left(x + \sqrt{x^2+1}\right).$$

**Definíció (area koszinusz hiperbolikusz).** A $\operatorname{ch} x$ szigorúan monoton növekedő $[0,+\infty)$-en, és $R(\operatorname{ch} x) = [1,+\infty)$. A $\operatorname{ch} x|_{[0,+\infty)}$ megszorítás inverzét **area koszinusz hiperbolikusznak** nevezzük:
$$\operatorname{arch} x = \ln\!\left(x + \sqrt{x^2 - 1}\right).$$

**Definíció (area tangens hiperbolikusz).** A $\operatorname{th} x$ inverze az $\operatorname{arth} : (-1,1) \to \mathbb{R}$ folytonos bijekció, és
$$\operatorname{arth} x = \frac{1}{2}\ln\!\left(\frac{1+x}{1-x}\right).$$

*Bizonyítás (az $\operatorname{arth}$ képlete).* Legyen
$$y = \operatorname{th} x = \frac{e^x - e^{-x}}{e^x + e^{-x}}.$$
Szorozzunk fel a nevezővel:
$$e^x - e^{-x} = y(e^x + e^{-x}) \implies (1-y)e^x = (y+1)e^{-x}.$$
Szorozzunk $e^x$-szel:
$$(1-y)(e^x)^2 = y+1 \implies e^x = \sqrt{\frac{1+y}{1-y}}$$
(a pozitív gyököt véve, hiszen $e^x > 0$). Logaritmust véve
$$x = \ln\sqrt{\frac{1+y}{1-y}} = \frac{1}{2}\ln\!\left(\frac{1+y}{1-y}\right). \qquad \blacksquare$$

Hasonlóan értelmezhető az $\operatorname{arcth} x$, a $\operatorname{cth} x$ inverze.

---

# XII. RÉSZ: DIFFERENCIÁLSZÁMÍTÁS

## 66. A derivált fogalma

Térjünk vissza a legelső motiváló kérdéshez. Ha $s(t)$ az út–idő függvény, akkor a test pillanatnyi sebessége a $t_0$ pillanatban
$$v(t_0) = \lim_{t \to t_0} \frac{s(t) - s(t_0)}{t - t_0},$$
ahol $\frac{s(t)-s(t_0)}{t-t_0}$ a $[t_0, t]$ intervallumon vett **átlagsebesség**.

Geometriailag: a $\frac{s(t) - s(t_0)}{t-t_0}$ hányados a grafikon két pontján átmenő **húr (szelő) meredeksége**. Ha $t \to t_0$, a húr egyre inkább az **érintőbe** megy át, és a határérték az **érintő meredeksége**. A fizikai és a geometriai kérdés tehát ugyanaz.

**Definíció.** Az $f$ függvény **differenciálható** az $a \in \mathbb{R}$ pontban, ha létezik $\delta_0 > 0$ úgy, hogy $B(a,\delta_0) \subset D(f)$, és a
$$\lim_{x\to a} \frac{f(x) - f(a)}{x-a} = f'(a)$$
határérték **létezik és véges**. Az $f'(a)$ számot az $f$ $a$-beli **differenciálhányadosának** vagy **deriváltjának** nevezzük.

**Megjegyzés.** A $h = x - a$ helyettesítéssel
$$\lim_{x\to a}\frac{f(x)-f(a)}{x-a} = \lim_{h\to 0}\frac{f(a+h) - f(a)}{h}.$$

**Jelölések.** $f'(a)$, $\dot{f}(a)$, $\left.\frac{df}{dx}\right|_{x=a}$, $\left.\frac{df(x)}{dx}\right|_{x=a}$; ha $y = f(x)$, akkor $y'(a)$, $\left.\frac{dy}{dx}\right|_{x=a}$.

**Definíció (differenciahányados).** A
$$\frac{f(x) - f(a)}{x-a} = \frac{\Delta f(x)}{\Delta x} = \frac{\Delta y}{\Delta x}$$
kifejezést az $f$ függvény $a$ és $x$ helyekhez tartozó **differenciahányadosának** nevezzük.

**Definíció (érintő).** Ha $f$ differenciálható $a$-ban, akkor az
$$y = f'(a)(x-a) + f(a)$$
egyenest a $\operatorname{graph} f$ görbe $(a, f(a))$ pontbeli **érintőjének** nevezzük.

**Definíció (derivált függvény).** Az $f$ valós függvény **differenciálfüggvényének** (derivált függvényének) nevezzük azt a függvényt, amely azokban az $a \in \mathbb{R}$ pontokban van értelmezve, ahol $f$ differenciálható, és értéke ott $f'(a)$. Jelölése $f'$, $\dot{f}$, $\frac{df}{dx}$, $y'$, $\dot y$, $\frac{dy}{dx}$.

**Példa.** $f(x) = mx + b$ esetén
$$f'(x) = \lim_{h\to 0}\frac{m(x+h)+b - (mx+b)}{h} = \lim_{h\to 0}\frac{mh}{h} = m.$$
A lineáris függvény deriváltja tehát a meredeksége — ahogy lennie kell.

**Tétel.** $(x^n)' = n x^{n-1}$ minden $n \in \mathbb{N}$-re.

*Bizonyítás.* Használjuk az $y^n - x^n$ szorzattá alakítását:
$$\lim_{y\to x}\frac{y^n - x^n}{y-x} = \lim_{y\to x}\frac{(y-x)\left(y^{n-1} + y^{n-2}x + \dots + x^{n-1}\right)}{y-x} = \lim_{y\to x}\left(y^{n-1} + y^{n-2}x + \dots + x^{n-1}\right).$$
A zárójelben $n$ darab tag áll, és mindegyik $x^{n-1}$-hez tart, tehát az eredmény $n x^{n-1}$. $\blacksquare$

**Tétel (a differenciálhatóság erősebb a folytonosságnál).** Ha $f$ differenciálható $a$-ban, akkor folytonos $a$-ban.

*Bizonyítás.* Írjuk a különbséget szorzat alakba:
$$f(x) - f(a) = \frac{f(x)-f(a)}{x-a}\cdot(x-a) \to f'(a)\cdot 0 = 0 \qquad (x \to a),$$
ahol a szorzat határértékére vonatkozó tételt alkalmaztuk (mindkét tényezőnek van véges határértéke). Tehát $f(x) \to f(a)$. $\blacksquare$

**A megfordítás hamis: folytonos $\not\Rightarrow$ differenciálható.** A klasszikus ellenpélda $f(x) = |x|$ a $0$-ban:
$$\lim_{x\to 0+0}\frac{f(x) - 0}{x-0} = \lim_{x\to 0+0}\frac{x}{x} = 1, \qquad \lim_{x\to 0-0}\frac{f(x)-0}{x-0} = \lim_{x\to 0-0}\frac{-x}{x} = -1.$$
A két féloldali határérték különböző, tehát a határérték nem létezik.

**Történeti megjegyzés.** Sokáig azt hitték, hogy a folytonos függvények „legfeljebb néhány sarokponttól eltekintve" differenciálhatók. Weierstrass azonban konstruált olyan folytonos függvényt, amely **sehol sem** differenciálható (a konstrukció és története megtalálható Szőkefalvi-Nagy Béla *Valós függvények és függvénysorok* című könyvének 87–88. oldalán). A felfedezés megdöbbentette a kor matematikusait; Charles Hermite így írt róla: *„Rémülettel és borzalommal fordulok el ettől a siralmas fekélytől: függvények, amelyeknek nincs deriváltjuk."*

**Definíció (féloldali derivált).** Az $f$ **jobbról differenciálható** $a$-ban, ha értelmezett az $a$ egy jobb oldali környezetében, és a
$$\lim_{x\to a+0}\frac{f(x)-f(a)}{x-a}$$
határérték létezik és véges; jelölése $f'_+(a)$. Hasonlóan a bal oldali derivált, $f'_-(a)$.

**Példa.** $f(x) = |x|$ esetén $f'_+(0) = 1$ és $f'_-(0) = -1$.

**Megjegyzés.** Nyilvánvalóan
$$\exists f'(a) \iff \exists f'_+(a) \ \wedge\ \exists f'_-(a) \ \wedge\ f'_+(a) = f'_-(a).$$

## 67. Differenciálási szabályok

**Tétel.** Legyen $f$ és $g$ differenciálható $a$-ban. Ekkor $cf$, $f \pm g$ és $f\cdot g$ is differenciálható $a$-ban, és
1. $(cf)'(a) = c f'(a)$;
2. $(f+g)'(a) = f'(a) + g'(a)$;
3. $(f\cdot g)'(a) = f'(a)g(a) + f(a)g'(a)$ **(szorzatszabály)**.

Ha ezen felül $g(a) \neq 0$, akkor $\frac{1}{g}$ és $\frac{f}{g}$ is differenciálható $a$-ban, és
4. $\displaystyle \left(\frac{1}{g}\right)'(a) = -\frac{g'(a)}{g^2(a)}$;
5. $\displaystyle \left(\frac{f}{g}\right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{g^2(a)}$ **(hányadosszabály)**.

*Bizonyítás.*

**3. (szorzatszabály).** A bevált trükk: adjunk hozzá és vonjunk ki egy alkalmas tagot.
$$\lim_{x\to a}\frac{f(x)g(x) - f(a)g(a)}{x-a} = \lim_{x\to a}\frac{f(x)g(x) - f(a)g(x) + f(a)g(x) - f(a)g(a)}{x-a}$$
$$= \lim_{x\to a}\left[ g(x)\cdot\frac{f(x)-f(a)}{x-a} \right] + \lim_{x\to a}\left[ f(a)\cdot\frac{g(x)-g(a)}{x-a} \right] = f'(a)g(a) + f(a)g'(a),$$
ahol felhasználtuk, hogy $g$ differenciálható $a$-ban, tehát folytonos is, így $g(x) \to g(a)$.

**4.** Közös nevezőre hozva:
$$\lim_{x\to a}\frac{\frac{1}{g(x)} - \frac{1}{g(a)}}{x-a} = \lim_{x\to a} \frac{1}{g(x)g(a)}\cdot\frac{g(a)-g(x)}{x-a} = \frac{1}{g^2(a)}\cdot\big(-g'(a)\big).$$

**5.** A 3. és a 4. pont alkalmazása az $f(x)\cdot\frac{1}{g(x)}$ szorzatra. $\blacksquare$

## 68. A láncszabály

A kompozíció deriválásához egy átfogalmazásra van szükségünk, amely kiküszöböli a hányadost — és ezzel a „nullával való osztás" veszélyét.

**Tétel (a differenciálhatóság ekvivalens jellemzése).** Az $f$ akkor és csak akkor differenciálható az $a$ helyen, ha létezik olyan, az $a$-ban **folytonos** $f^*$ függvény, amelyre minden $x \in D(f)$-re
$$f(x) - f(a) = f^*(x)(x-a).$$

*Bizonyítás.*

**($\Rightarrow$)** Ha $f'(a)$ létezik, definiáljuk
$$f^*(x) = \frac{f(x)-f(a)}{x-a} \quad (x \neq a), \qquad f^*(a) \stackrel{\text{def}}{=} f'(a).$$
Ez a definíció éppen azt jelenti, hogy $f^*$ folytonos $a$-ban.

**($\Leftarrow$)** Ha $f^*$ folytonos $a$-ban, akkor
$$\lim_{x\to a} f^*(x) = \lim_{x\to a}\frac{f(x)-f(a)}{x-a} = f^*(a),$$
tehát a derivált létezik és egyenlő $f^*(a)$-val. $\blacksquare$

**Tétel (láncszabály).** Ha $f$ differenciálható az $a$ helyen, $g$ pedig az $f(a)$ helyen, akkor $h = g\circ f$ is differenciálható $a$-ban, és
$$h'(a) = g'(f(a))\cdot f'(a).$$

*Bizonyítás.* Az előző tétel szerint léteznek $f^*$ (az $a$-ban folytonos) és $g^*$ (az $f(a)$-ban folytonos) függvények, amelyekre
$$f(x) - f(a) = f^*(x)(x-a), \qquad g(u) - g(f(a)) = g^*(u)\big(u - f(a)\big),$$
továbbá
$$\lim_{x\to a} f^*(x) = f^*(a) = f'(a), \qquad \lim_{u\to f(a)} g^*(u) = g^*(f(a)) = g'(f(a)).$$
Írjuk fel most a kompozíció megváltozását, és helyettesítsünk $u = f(x)$-et:
$$h(x) - h(a) = g(f(x)) - g(f(a)) = g^*(f(x))\big(f(x) - f(a)\big) = \underbrace{g^*(f(x))\, f^*(x)}_{=:\,h^*(x)}\,(x-a).$$
Már csak azt kell látnunk, hogy $h^*$ folytonos $a$-ban. Valóban: $f^*$ folytonos $a$-ban; $f$ folytonos $a$-ban (hiszen differenciálható); $g^*$ folytonos $f(a)$-ban; tehát a kompozícióra vonatkozó tétel szerint $g^* \circ f$ folytonos $a$-ban, és így a szorzat $h^*$ is. Az ekvivalens jellemzés szerint tehát
$$h'(a) = h^*(a) = g^*(f(a))\cdot f^*(a) = g'(f(a))\, f'(a). \qquad \blacksquare$$

Röviden: $\big(g(f(x))\big)' = g'(f(x)) f'(x)$. A Leibniz-féle jelöléssel ez különösen sugalmazó: ha $y = f(x)$ és $z = g(y)$, akkor
$$\frac{dz}{dx} = \frac{dz}{dy}\cdot\frac{dy}{dx},$$
mintha a $dy$-k „egyszerűsödnének" — ez természetesen csak emlékeztető, nem bizonyítás.

**Példa.** Mennyi $\left((x^2+1)^{13}\right)'$? Legyen $g(x) = x^{13}$ és $f(x) = x^2+1$. Ekkor $g'(x) = 13x^{12}$ és $f'(x) = 2x$, tehát $g'(f(x)) = 13(x^2+1)^{12}$, és
$$\left((x^2+1)^{13}\right)' = 13(x^2+1)^{12}\cdot 2x.$$

## 69. Az inverz függvény deriváltja

**Tétel.** Tegyük fel, hogy $f$ szigorúan monoton és folytonos $[a,b]$-n, és létezik $f'(c) \neq 0$ valamely $c \in (a,b)$ pontban. Ekkor $\varphi = f^{-1}$ differenciálható a $d = f(c)$ helyen, és
$$\varphi'(d) = \frac{1}{f'(c)} = \frac{1}{f'(\varphi(d))}.$$

*Bizonyítás.* Az 55. szakasz szerint $\varphi = f^{-1}$ folytonos, tehát $\lim_{v\to d}\varphi(v) = \varphi(d) = c$. Továbbá a szigorú monotonitás miatt $v \neq d$ esetén $\varphi(v) \neq \varphi(d) = c$ — ez a feltétel teszi lehetővé a helyettesítést. Induljunk ki abból, hogy
$$\lim_{u\to c}\frac{1}{\frac{f(u)-f(c)}{u-c}} = \frac{1}{f'(c)}$$
(itt használjuk ki, hogy $f'(c) \neq 0$). Helyettesítsük $u = \varphi(v)$-t; a kompozícióra vonatkozó határérték-tétel szerint
$$\frac{1}{f'(c)} = \lim_{v\to d}\frac{\varphi(v) - c}{f(\varphi(v)) - f(c)} = \lim_{v\to d}\frac{\varphi(v) - \varphi(d)}{v - d} = \varphi'(d). \qquad \blacksquare$$

**Memoriter.** Ha $y = f(x)$ és $z = g(y)$, akkor $\frac{dz}{dx} = \frac{dz}{dy}\frac{dy}{dx}$. Ha speciálisan $g = f^{-1}$, akkor $g(f(x)) = x = z$, tehát
$$\frac{dx}{dx} = 1 = \frac{dx}{dy}\cdot\frac{dy}{dx} \implies \frac{dx}{dy} = \frac{1}{\frac{dy}{dx}}.$$

**Példa (a gyökfüggvény deriváltja).** Legyen $x > 0$, $\varphi(x) = \sqrt[k]{x}$ ($k \in \mathbb{N}$), és $f(x) = \varphi^{-1}(x) = x^k|_{[0,+\infty)}$. Ekkor $f'(x) = kx^{k-1}$, és $c = \varphi(d) = \sqrt[k]{d}$, tehát
$$\varphi'(d) = \frac{1}{f'(\varphi(d))} = \frac{1}{k\left(\sqrt[k]{d}\right)^{k-1}} = \frac{1}{k\, d^{\frac{k-1}{k}}} = \frac{1}{k}\, d^{\frac{1}{k}-1}.$$
Azaz
$$\left(x^{1/k}\right)' = \frac{1}{k}x^{\frac{1}{k}-1}.$$
Speciálisan $\varphi(x) = \sqrt{x}$ esetén $\varphi'(x) = \frac{1}{2\sqrt{x}}$. Ugyanígy adódik, hogy $\left(x^{p/q}\right)' = \frac{p}{q}x^{\frac{p}{q}-1}$.

## 70. Elemi függvények deriváltjai I: polinomok és trigonometrikus függvények

**Tétel.** $(a_n x^n + \dots + a_1 x + a_0)' = n a_n x^{n-1} + \dots + a_1$.

*Bizonyítás.* Az összeg- és konstansszorzat-szabályból, valamint az $(x^n)' = nx^{n-1}$ tételből tagonként. $\blacksquare$

A trigonometrikus függvények deriválásához két nevezetes határértéket kell kiszámolnunk.

**Tétel.**
$$\lim_{x\to 0}\frac{\sin x}{x} = 1 = \lim_{x\to 0}\frac{\sin x - \sin 0}{x - 0} = \sin'(0).$$

*Bizonyítás.* Legyen $0 < x < \frac{\pi}{2}$. A geometriai alapegyenlőtlenség:
$$\sin x < x < \tan x.$$
(Az első egyenlőtlenséget már beláttuk; a második azon a geometriai tényen alapul, hogy **ha egy konvex sokszöget egy másik tartalmaz, akkor a tartalmazó kerülete nagyobb** — a körívet a hozzá tartozó érintőszakaszok „kívülről" fogják közre.)

Osszuk el az egyenlőtlenséget $\sin x > 0$-val:
$$1 < \frac{x}{\sin x} < \frac{1}{\cos x},$$
majd vegyük a reciprokokat (ami megfordítja az irányt):
$$1 > \frac{\sin x}{x} > \cos x.$$
Ha $x \to 0+0$, akkor $\cos x \to 1$, tehát a rendőrelv szerint
$$\lim_{x\to 0+0}\frac{\sin x}{x} = 1.$$
A bal oldali határértékhez vegyük észre, hogy a $\frac{\sin x}{x}$ függvény **páros**:
$$\frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} = \frac{\sin x}{x},$$
tehát a bal oldali határérték is $1$. $\blacksquare$

**Tétel.**
$$\lim_{x\to 0}\frac{\cos x - 1}{x} = 0 = \cos'(0).$$

*Bizonyítás.* A félszögképlet ($1 - \cos x = 2\sin^2\frac{x}{2}$) segítségével
$$\frac{\cos x - 1}{x} = -\frac{2\sin^2\frac{x}{2}}{x} = \underbrace{\left(-\sin\frac{x}{2}\right)}_{\to\, 0}\cdot\underbrace{\frac{\sin\frac{x}{2}}{\frac{x}{2}}}_{\to\, 1} \to 0 \qquad (x\to 0). \qquad \blacksquare$$

**Tétel.** $\sin' x = \cos x$ minden $x \in \mathbb{R}$-re.

*Bizonyítás.* Az addíciós képlettel:
$$\lim_{h\to 0}\frac{\sin(x+h) - \sin x}{h} = \lim_{h\to 0}\frac{\sin x\cos h + \cos x \sin h - \sin x}{h}$$
$$= \lim_{h\to 0}\left[\cos x\cdot\frac{\sin h}{h}\right] + \lim_{h\to 0}\left[\sin x\cdot\frac{\cos h - 1}{h}\right] = \cos x\cdot 1 + \sin x\cdot 0 = \cos x. \qquad \blacksquare$$

**Tétel.** $\cos' x = -\sin x$ minden $x \in \mathbb{R}$-re.

*Bizonyítás.* A láncszabállyal, a $\cos x = \sin\!\left(\frac{\pi}{2}-x\right)$ azonosságból:
$$(\cos x)' = \left(\sin\!\left(\tfrac{\pi}{2}-x\right)\right)' = \cos\!\left(\tfrac{\pi}{2}-x\right)\cdot(-1) = -\sin x. \qquad \blacksquare$$

**Tétel.** $\displaystyle \tan' x = \frac{1}{\cos^2 x}$ és $\displaystyle \cot' x = -\frac{1}{\sin^2 x}$.

*Bizonyítás (a tangensre).* A hányadosszabállyal:
$$(\tan x)' = \left(\frac{\sin x}{\cos x}\right)' = \frac{\sin'x\cos x - \sin x\cos' x}{\cos^2 x} = \frac{\cos^2 x - \sin x(-\sin x)}{\cos^2 x} = \frac{\cos^2 x + \sin^2 x}{\cos^2 x} = \frac{1}{\cos^2 x}. \qquad \blacksquare$$

**Tétel (arkuszfüggvények deriváltjai).** Ha $-1 < x < 1$, akkor
$$(\arcsin x)' = \frac{1}{\sqrt{1-x^2}}, \qquad (\arccos x)' = \frac{-1}{\sqrt{1-x^2}};$$
továbbá minden $x \in \mathbb{R}$-re
$$(\arctan x)' = \frac{1}{1+x^2}.$$

*Bizonyítás (az $\arcsin$).* Legyen $\varphi(x) = \arcsin x$ és $f(x) = \sin x|_{[-\pi/2,\pi/2]}$, amely szigorúan monoton. Az inverz deriválási szabálya szerint, $x = f(c)$ jelöléssel:
$$\varphi'(x) = \frac{1}{f'(\varphi(x))} = \frac{1}{\cos(\arcsin x)} = \frac{1}{\sqrt{1 - \sin^2(\arcsin x)}} = \frac{1}{\sqrt{1-x^2}}.$$
(A gyökvonásnál a pozitív értéket vesszük, mert $\cos c > 0$ a $\left(-\frac{\pi}{2},\frac{\pi}{2}\right)$ intervallumon.)

*(az $\arccos$).* Az $\arccos x = \frac{\pi}{2} - \arcsin x$ azonosságból közvetlenül.

*(az $\arctan$).* A $\tan x$ szigorúan monoton növekedő $\left(-\frac{\pi}{2},\frac{\pi}{2}\right)$-n, és ott $\tan' x = \frac{1}{\cos^2 x} \neq 0$. Tehát
$$(\arctan x)' = \frac{1}{\frac{1}{\cos^2(\arctan x)}} = \cos^2(\arctan x) = \frac{1}{1 + \tan^2(\arctan x)} = \frac{1}{1+x^2},$$
ahol felhasználtuk a
$$\cos^2 x = \frac{1}{1 + \tan^2 x} = \frac{1}{1 + \frac{\sin^2 x}{\cos^2 x}} = \frac{\cos^2 x}{\cos^2 x + \sin^2 x}$$
azonosságot. $\blacksquare$

## 71. Az e szám mint függvényhatárérték

Az exponenciális és a logaritmusfüggvény deriválásához az $e$ szám sorozatos definícióját **függvényhatárértékké** kell átalakítanunk.

**Tétel.**
$$\lim_{x\to-\infty}\left(1+\frac{1}{x}\right)^x = \lim_{x\to+\infty}\left(1+\frac{1}{x}\right)^x = \lim_{n\to\infty}\left(1+\frac{1}{n}\right)^n = e.$$

*Bizonyítás.* Az átviteli elvet használjuk. Legyen $x_n \to +\infty$ tetszőleges sorozat, és legyen $n_k \in \mathbb{N}$ az az egész, amelyre $n_k \le x_n < n_k + 1$ (tehát $n_k \to \infty$). A hatványozás monotonitása miatt
$$\left(1 + \frac{1}{n_k+1}\right)^{n_k} < \left(1+\frac{1}{x_n}\right)^{x_n} < \left(1+\frac{1}{n_k}\right)^{n_k+1}.$$
(Az alapot és a kitevőt egyszerre becsüljük: kisebb alap és kisebb kitevő balra, nagyobb alap és nagyobb kitevő jobbra.) Jelölje a két oldalt $a_k$ és $b_k$. Ekkor
$$\lim_{k\to\infty} a_k = \lim_{k\to\infty}\left[\left(1+\frac{1}{n_k+1}\right)^{n_k+1}\cdot\left(1+\frac{1}{n_k+1}\right)^{-1}\right] = e\cdot 1 = e,$$
$$\lim_{k\to\infty} b_k = \lim_{k\to\infty}\left[\left(1+\frac{1}{n_k}\right)^{n_k}\cdot\left(1+\frac{1}{n_k}\right)\right] = e\cdot 1 = e.$$
A rendőrelv szerint tehát minden $x_n \to +\infty$ sorozatra $\left(1+\frac{1}{x_n}\right)^{x_n} \to e$, azaz az átviteli elv szerint $\left(1+\frac{1}{x}\right)^x \to e$, ha $x \to +\infty$.

A $-\infty$ esethez vegyük észre, hogy
$$\left(1 - \frac{1}{n}\right)^{-n} = \left(\frac{n-1}{n}\right)^{-n} = \left(\frac{n}{n-1}\right)^n = \left(1 + \frac{1}{n-1}\right)^{n-1}\cdot\left(1+\frac{1}{n-1}\right) \to e,$$
és ezt felhasználva az előzőhöz hasonlóan adódik az állítás. $\blacksquare$

**Tétel.** Minden $b \in \mathbb{R}$-re
$$\lim_{x\to\pm\infty}\left(1+\frac{b}{x}\right)^x = e^b.$$

*Bizonyítás.* $b = 0$ triviális. Ha $b > 0$ és $x \to +\infty$, akkor az összetett függvény határértékére vonatkozó tétellel, $u = \frac{x}{b} \to +\infty$ helyettesítéssel:
$$\lim_{x\to+\infty}\left(1+\frac{b}{x}\right)^x = \lim_{x\to+\infty}\left[\left(1+\frac{b}{x}\right)^{x/b}\right]^b = \lim_{u\to+\infty}\left[\left(1+\frac{1}{u}\right)^u\right]^b = e^b. \qquad \blacksquare$$

**Tétel.** $\displaystyle \lim_{t\to 0}(1+t)^{1/t} = e$.

*Bizonyítás.* Az $x = \frac{1}{t}$ helyettesítéssel: ha $t \to 0+0$, akkor $x \to +\infty$, tehát
$$\lim_{t\to 0+0}(1+t)^{1/t} = \lim_{x\to+\infty}\left(1+\frac{1}{x}\right)^x = e;$$
a $t \to 0-0$ eset hasonlóan, az $x \to -\infty$ határértékből. $\blacksquare$

## 72. A logaritmus és az exponenciális függvény deriváltja

**Tétel.**
$$\lim_{h\to 0}\frac{\log_a(1+h) - \log_a 1}{h} = \log_a e = \log_a'(1).$$

*Bizonyítás.* Mivel $\log_a 1 = 0$, az azonosságokat és a logaritmus folytonosságát felhasználva:
$$\lim_{h\to 0}\frac{\log_a(1+h)}{h} = \lim_{h\to 0}\log_a\left((1+h)^{1/h}\right) = \log_a\left(\lim_{h\to 0}(1+h)^{1/h}\right) = \log_a e. \qquad \blacksquare$$

**Tétel.** Ha $a > 0$, $a \neq 1$, akkor $\log_a x$ differenciálható minden $x > 0$-ra, és
$$(\log_a x)' = \frac{\log_a e}{x}.$$

*Bizonyítás.* Alakítsuk a differenciahányadost úgy, hogy az $1$-beli deriváltra vezessük vissza:
$$\frac{\log_a y - \log_a x}{y-x} = \frac{1}{x}\cdot\frac{\log_a\!\left(\frac{y}{x}\right) - \log_a 1}{\frac{y}{x} - 1}.$$
Ha $y \to x$, akkor $\frac{y}{x} \to 1$; a $h = \frac{y}{x} - 1 \to 0$ helyettesítéssel a jobb oldali tört éppen az előző tétel differenciahányadosa, tehát $\log_a e$-hez tart. Így a határérték $\frac{\log_a e}{x}$. $\blacksquare$

**Következmény.**
$$(\ln x)' = \frac{1}{x}, \qquad (\log_a x)' = \frac{1}{(\ln a)\,x},$$
hiszen $\log_e e = 1$, és az áttérési képlet szerint $\log_a e = \frac{\ln e}{\ln a} = \frac{1}{\ln a}$.

A természetes logaritmus tehát éppen az a logaritmus, amelynek deriváltja a lehető legegyszerűbb — ez magyarázza a „természetes" elnevezést.

**Tétel.** Ha $a > 0$, akkor $a^x$ differenciálható $\mathbb{R}$-en, és
$$(a^x)' = (\ln a)\,a^x. \qquad \text{Nevezetesen} \qquad (e^x)' = e^x.$$

*Bizonyítás.* $a = 1$ triviális, a $0 < a < 1$ eset hasonló; legyen $a > 1$. Ekkor $a^x$ szigorúan monoton növekedő és folytonos, inverze $\log_a x$, amely differenciálható és deriváltja nem nulla. Az inverz deriválási szabályával, $f(x) = \log_a x$ és $\varphi(x) = a^x$ jelöléssel:
$$\varphi'(x) = \frac{1}{f'(\varphi(x))} = \frac{1}{\frac{1}{(\ln a)\,a^x}} = (\ln a)\,a^x. \qquad \blacksquare$$

Az $e^x$ tehát az az exponenciális függvény, amely **megegyezik a saját deriváltjával** — ez a tulajdonság teszi az analízis legfontosabb függvényévé.

**Tétel.** Minden $a \in \mathbb{R}$-re és $x > 0$-ra $x^a$ differenciálható, és
$$(x^a)' = a x^{a-1}.$$

*Bizonyítás.* Írjuk át exponenciális alakba, és alkalmazzuk a láncszabályt:
$$(x^a)' = \left(e^{a\ln x}\right)' = e^{a\ln x}\cdot\frac{a}{x} = x^a\cdot\frac{a}{x} = a x^{a-1}. \qquad \blacksquare$$

Ezzel a hatványfüggvény deriválási szabálya **tetszőleges valós kitevőre** igazolva van — nem csak természetes vagy racionális kitevőkre, ahogy korábban.

**Példa (a „kettős" hatvány).**
$$(x^x)' = \left(e^{x\ln x}\right)' = e^{x\ln x}\left(\ln x + x\cdot\frac{1}{x}\right) = x^x(\ln x + 1).$$

---

# XIII. RÉSZ: A DIFFERENCIÁLSZÁMÍTÁS ALKALMAZÁSAI

## 73. Lokális növekedés és szélsőérték

**Definíció.** Az $f$ **(szigorúan) lokálisan növekedő** az $a \in \mathbb{R}$ helyen, ha létezik $\delta > 0$ úgy, hogy $(a-\delta, a+\delta) \subset D(f)$, és
- minden $x \in (a-\delta, a)$-ra $f(x) \le f(a)$ (illetve $f(x) < f(a)$),
- minden $x \in (a, a+\delta)$-ra $f(a) \le f(x)$ (illetve $f(a) < f(x)$).

Hasonlóan definiáljuk a (szigorúan) lokálisan csökkenő fogalmat.

**Megjegyzés.** Ha $f$ (szigorúan) monoton növekedő a $(c,d)$ intervallumon, akkor minden $a \in (c,d)$ pontban (szigorúan) lokálisan növekedő (a $\delta = \min(a-c, d-a) > 0$ választás megfelelő).

**Fontos figyelmeztetés: a lokális növekedés gyengébb, mint bármely környezetbeli monotonitás.** Két példa:

**a)** Legyen
$$f(x) = \begin{cases} \frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ez szigorúan lokálisan nő a $0$-ban (balról minden érték negatív, jobbról minden érték pozitív), holott a $0$ semmilyen környezetében nem monoton.

**b)** Legyen
$$f(x) = \begin{cases} x\sin^2\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ez lokálisan nő a $0$-ban, de a $0$ egyetlen környezetében sem monoton (a $\sin^2$ faktor végtelen sokszor „megáll").

**Tétel (a szélsőérték szükséges feltétele).** Tegyük fel, hogy $f$ differenciálható $a$-ban. Ekkor
1. ha $f$ lokálisan nő $a$-ban, akkor $f'(a) \ge 0$;
2. ha $f$ lokálisan csökken $a$-ban, akkor $f'(a) \le 0$;
3. ha $f$-nek lokális szélsőértéke van $a$-ban, akkor $f'(a) = 0$.

*Bizonyítás.*
1. Minden $x \in \dot{B}(a,\delta)$-ra a differenciahányados nemnegatív: ha $x > a$, akkor a számláló és a nevező is nemnegatív; ha $x < a$, akkor mindkettő nempozitív. Határértéket véve $f'(a) \ge 0$.
2. Ugyanígy, fordított előjelekkel.
3. Tegyük fel, hogy $a$-ban lokális maximum van. Ekkor minden $x \in (a, a+\delta)$-ra
$$\frac{f(x)-f(a)}{x-a} \le 0 \implies f'(a) \le 0,$$
és minden $x \in (a-\delta, a)$-ra
$$\frac{f(x)-f(a)}{x-a} \ge 0 \implies f'(a) \ge 0.$$
A kettőből $f'(a) = 0$. $\blacksquare$

A 3. pont a szélsőérték-keresés alapja: **a lehetséges helyeket a $f'(x) = 0$ egyenlet megoldásai között kell keresni.**

**A megfordítások hamisak.**
- Az 1. és 2. ponthoz: $f(x) = x^2$ esetén $f'(0) = 0$, de $f$ nem lokálisan növekedő a $0$-ban.
- A 3. ponthoz: $f(x) = x^3$ esetén $f'(0) = 0$, de $f$-nek nincs szélsőértéke a $0$-ban.

A $f'(a) = 0$ feltétel tehát **szükséges, de nem elégséges**.

**Tétel (elégséges feltétel a szigorú lokális monotonitásra).** Ha $f$ differenciálható $a$-ban és
1. $f'(a) > 0$, akkor $f$ szigorúan lokálisan nő $a$-ban;
2. $f'(a) < 0$, akkor $f$ szigorúan lokálisan csökken $a$-ban.

*Bizonyítás (az 1. pont).* Ha
$$f'(a) = \lim_{x\to a}\frac{f(x)-f(a)}{x-a} > 0,$$
akkor az előjeltartás miatt létezik $\delta > 0$ úgy, hogy minden $x \in \dot{B}(a,\delta)$-ra
$$\frac{f(x)-f(a)}{x-a} > 0.$$
Ez pedig pontosan azt jelenti, hogy $x > a$ esetén $f(x) > f(a)$, és $x < a$ esetén $f(x) < f(a)$. $\blacksquare$

**Ez sem fordítható meg:** $f(x) = x^3$ szigorúan lokálisan nő a $0$-ban, mégis $f'(0) = 0$.

## 74. Középértéktételek

Ez a három tétel a differenciálszámítás gerince: a **lokális** információt (a derivált értékét egyetlen pontban) **globális** információvá alakítják (a függvény viselkedése egy egész intervallumon).

**Tétel (Rolle).** Ha $f \in C[a,b]$, $f$ differenciálható $(a,b)$-ben, és $f(a) = f(b)$, akkor létezik $c \in (a,b)$ úgy, hogy
$$f'(c) = 0.$$

*Bizonyítás.* Ha $f$ azonosan $f(a)$, akkor $f'(c) = 0$ minden $c \in (a,b)$-re. Ellenkező esetben van olyan $x \in (a,b)$, amelyre $f(x) > f(a)$ (az $f(x) < f(a)$ eset hasonló). Mivel $f \in C[a,b]$, a Weierstrass-tétel szerint $f$ felveszi a maximumát valamely pontban; ez a pont nem lehet $a$ vagy $b$ (hiszen ott az érték $f(a)$, ami kisebb $f(x)$-nél), tehát egy $c \in (a,b)$ belső pontban van. Ott lokális maximum van, így az előző szakasz tétele szerint $f'(c) = 0$. $\blacksquare$

Figyeljük meg, hogy a bizonyítás lényegében a Weierstrass-tételre, tehát végső soron a Bolzano–Weierstrass-tételre és a teljességi axiómára támaszkodik.

**Tétel (Lagrange-féle középértéktétel).** Ha $f \in C[a,b]$ és $f$ differenciálható $(a,b)$-ben, akkor létezik $c \in (a,b)$ úgy, hogy
$$f'(c) = \frac{f(b)-f(a)}{b-a}.$$

Szemléletesen: van olyan belső pont, ahol az **érintő párhuzamos a végpontokat összekötő húrral**.

*Bizonyítás.* A Rolle-tétel speciális esetét használjuk fel, miután „kiegyenesítjük" a függvényt. Legyen
$$g(x) = f(x) - (x-a)\frac{f(b)-f(a)}{b-a}.$$
Ekkor $g \in C[a,b]$, differenciálható $(a,b)$-ben, és
$$g(a) = f(a), \qquad g(b) = f(b) - (b-a)\frac{f(b)-f(a)}{b-a} = f(b) - (f(b)-f(a)) = f(a),$$
tehát $g(a) = g(b)$. A Rolle-tétel szerint van olyan $c \in (a,b)$, amelyre $g'(c) = 0$, azaz
$$f'(c) - \frac{f(b)-f(a)}{b-a} = 0. \qquad \blacksquare$$

**Tétel (Cauchy-féle középértéktétel).** Ha $f, g \in C[a,b]$, mindkettő differenciálható $(a,b)$-n, és minden $x \in (a,b)$-re $g'(x) \neq 0$, akkor létezik $c \in (a,b)$, amelyre
$$\frac{f'(c)}{g'(c)} = \frac{f(b)-f(a)}{g(b)-g(a)}.$$

**Megjegyzés.** A $g(x) = x$ választással a Lagrange-tételt kapjuk vissza; az pedig $f(a) = f(b)$ esetén a Rolle-tételt. A három tétel tehát egyre általánosabb.

*Bizonyítás.* Először vegyük észre, hogy $g(b) - g(a) \neq 0$: ellenkező esetben a Rolle-tétel szerint volna olyan $c \in (a,b)$, amelyre $g'(c) = 0$, szemben a feltevéssel. Tekintsük most a
$$h(x) = f(x) - \big(g(x) - g(a)\big)\frac{f(b)-f(a)}{g(b)-g(a)}$$
segédfüggvényt. Erre $h(a) = f(a)$ és $h(b) = f(a)$, tehát a Rolle-tétel alkalmazható. $\blacksquare$

## 75. A Darboux-tulajdonság

**Definíció.** A $g : I \to \mathbb{R}$ függvény **Darboux-tulajdonságú** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén minden, $g(a)$ és $g(b)$ közötti $d$ értékhez létezik $c \in (a,b)$, amelyre $g(c) = d$.

**Megjegyzés.** A Bolzano–Darboux-tétel szerint $f \in C(I) \implies f$ Darboux-tulajdonságú. **A megfordítás azonban nem igaz** — és éppen ez teszi a következő tételt meglepővé.

**Definíció.** Az $f$ **differenciálható $[a,b]$-n**, ha léteznek az $f'_+(a)$ és $f'_-(b)$ féloldali deriváltak, és minden $c \in (a,b)$-re létezik $f'(c)$.

**Tétel (Darboux).** Ha $f$ differenciálható $[a,b]$-ben, akkor $f'$ minden értéket felvesz $f'_+(a)$ és $f'_-(b)$ között. Következésképpen: **ha $f$ differenciálható $I$-n, akkor $f'$ Darboux-tulajdonságú $I$-n** — akkor is, ha $f'$ nem folytonos.

*Bizonyítás.* Tegyük fel, hogy $f'_+(a) < d < f'_-(b)$. Legyen
$$g(x) = f(x) - dx.$$
Ekkor $g \in C[a,b]$ (hiszen differenciálható), tehát a Weierstrass-tétel szerint felveszi a minimumát valamely $c \in [a,b]$ pontban. Megmutatjuk, hogy $c$ belső pont.

Egyrészt $g'_+(a) = f'_+(a) - d < 0$, tehát létezik $\delta > 0$ úgy, hogy minden $x \in (a, a+\delta)$-ra
$$\frac{g(x)-g(a)}{x-a} < 0 \implies g(x) < g(a),$$
vagyis $a$ nem lehet minimumhely: $c \neq a$.

Másrészt $g'_-(b) = f'_-(b) - d > 0$, amiből hasonlóan $c \neq b$.

Tehát $c \in (a,b)$, ahol $g$-nek lokális minimuma van, így $g'(c) = 0$, azaz
$$f'(c) - d = 0 \implies f'(c) = d. \qquad \blacksquare$$

**Példa (derivált, amely nem folytonos, mégis Darboux-tulajdonságú).** Legyen
$$f(x) = \begin{cases} x^2\sin\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ekkor
$$f'(x) = \begin{cases} 2x\sin\frac{1}{x} - \cos\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0, \end{cases}$$
és $f' \notin C(\mathbb{R})$ (a $\cos\frac{1}{x}$ tag miatt a $0$-ban nincs határértéke), a Darboux-tétel szerint mégis Darboux-tulajdonságú.

**Megjegyzés.** Ha történetesen $f' \in C[a,b]$, akkor a Darboux-tételre nem volna szükség: az $f'$-re közvetlenül alkalmazhatnánk a Bolzano–Darboux-tételt. A Darboux-tétel értéke éppen abban áll, hogy **a folytonosság feltevése nélkül** működik.

**Alkalmazás.** Létezik-e olyan $f$, amelyre $f'(x) = \operatorname{sgn} x$? **Nem** — mert a $\operatorname{sgn}$ függvény nem Darboux-tulajdonságú (a $(-1,1)$ intervallumban a $\frac{1}{2}$ értéket nem veszi fel), márpedig minden derivált az.

## 76. Monotonitási feltételek

**Tétel.** Legyen $f \in C[a,b]$, differenciálható $(a,b)$-n. Ekkor
$$f \ \text{monoton nő (csökken) } [a,b]\text{-n} \iff \forall x \in (a,b): f'(x) \ge 0 \ (\le 0).$$

*Bizonyítás (a növekedő eset).*

**($\Rightarrow$)** Ha $f$ monoton nő, akkor minden $c \in (a,b)$-ben lokálisan nő, tehát a 73. szakasz szerint $f'(c) \ge 0$.

**($\Leftarrow$)** Indirekt. Tegyük fel, hogy $a \le x_1 < x_2 \le b$ és $f(x_1) > f(x_2)$. Ekkor
$$\frac{f(x_2)-f(x_1)}{x_2-x_1} < 0,$$
és a Lagrange-féle középértéktétel szerint van olyan $c \in (x_1, x_2)$, amelyre $f'(c) < 0$ — ellentmondás. $\blacksquare$

**Tétel.** Ha $f \in C[a,b]$, differenciálható $(a,b)$-n, és $f' \equiv 0$, akkor $f$ konstans: $f \equiv C$ valamely $C \in \mathbb{R}$-re.

*Bizonyítás.* Az $f' \ge 0$ és $f' \le 0$ feltételek egyszerre teljesülnek, tehát $f$ monoton növekedő **és** monoton csökkenő; ez csak konstans függvényre lehetséges. $\blacksquare$

Ez a látszólag jelentéktelen következmény alapvető: erre épül a határozatlan integrál egyértelműsége, és később a differenciálegyenletek megoldásainak leírása.

**Tétel (szigorú monotonitás elégséges feltétele).** Ha $f \in C[a,b]$, differenciálható $(a,b)$-n, és minden $x \in (a,b)$-re $f'(x) > 0$ (illetve $f'(x) < 0$), akkor $f$ szigorúan monoton növekedő (illetve csökkenő) $[a,b]$-n.

*Bizonyítás.* A Lagrange-tétel szerint bármely $x_1 < x_2$ esetén
$$\frac{f(x_2)-f(x_1)}{x_2-x_1} = f'(c) > 0. \qquad \blacksquare$$

**Ez nem fordítható meg:** $f(x) = x^3$ szigorúan monoton növekedő $\mathbb{R}$-en, mégis $f'(0) = 0$.

**Tétel (pontos jellemzés).** Legyen $f \in C[a,b]$, differenciálható $(a,b)$-n. Ekkor $f$ szigorúan monoton növekedő $[a,b]$-n akkor és csak akkor, ha
- minden $x \in (a,b)$-re $f'(x) \ge 0$, **és**
- nincs olyan $[c,d] \subset [a,b]$, $c < d$ részintervallum, amelyen $f' \equiv 0$.

*Bizonyítás.* $f$ szigorúan monoton nő $\iff$ $f$ monoton nő **és** nincs olyan intervallum, amelyen konstans; ez a két feltétel pedig az előző tételek szerint pontosan a fenti kettőnek felel meg. $\blacksquare$

Az $x^3$ példa tanulsága tehát az, hogy a derivált **izolált** zérushelyei megengedettek; csak egész intervallumon nem tűnhet el.

## 77. Szélsőérték-feladatok

**Feladat.** Írjunk az egységsugarú gömbbe maximális térfogatú hengert.

*Megoldás.* Legyen a henger magasságának fele $h$, alapkörének sugara $r$. A gömbbe írás feltétele Pitagorasz tétele szerint
$$h^2 + r^2 = 1 \implies r^2 = 1 - h^2.$$
A térfogat tehát
$$V(h) = r^2\pi\cdot 2h = 2\pi h(1-h^2) = 2\pi(h - h^3), \qquad h \in [0,1].$$
Keressük $V$ abszolút maximumát a $[0,1]$ intervallumon. A derivált
$$V'(h) = 2\pi(1 - 3h^2), \qquad V'(h) = 0 \iff h = \pm\frac{1}{\sqrt{3}}.$$
Mivel $h \in [0,1]$, egyetlen belső kritikus pont van: $h = \frac{1}{\sqrt{3}}$. A végpontokban $V(0) = V(1) = 0$. Mivel $V$ folytonos (sőt differenciálható) a $[0,1]$ zárt intervallumon, a Weierstrass-tétel szerint felveszi a maximumát, és mivel $V\!\left(\frac{1}{\sqrt{3}}\right) > 0$, a maximumhely csak $h = \frac{1}{\sqrt{3}}$ lehet. $\blacksquare$

**Állítás (az eljárás általánosan).** Ha $f \in C[a,b]$, differenciálható $(a,b)$-n, és $f'(x) = 0$ éppen az $x_1, \dots, x_n \in (a,b)$ pontokban, akkor
$$\max_{[a,b]} f = \max\{f(a),\ f(b),\ f(x_1),\ \dots,\ f(x_n)\},$$
és hasonlóan a minimumra.

**A végpontokról soha nem szabad megfeledkezni!** Példa: legyen $f(h) = h - h^3$ a $[-10,10]$ intervallumon. Itt $f'(h) = 1 - 3h^2 = 0$, azaz $h_{1,2} = \pm\frac{1}{\sqrt{3}}$, és
$$f\!\left(\tfrac{1}{\sqrt{3}}\right) = \tfrac{1}{\sqrt 3} - \tfrac{1}{3\sqrt 3} \approx 0{,}385, \qquad f(-10) = -10 + 1000 = 990, \qquad f(10) = 10 - 1000 = -990.$$
A maximum tehát a **végpontban** van, körülbelül $990$; a minimum a másik végpontban, körülbelül $-990$. A belső kritikus pontok itt gyakorlatilag jelentéktelenek.

**Mi a teendő, ha az intervallum nem korlátos és zárt?** Ekkor az abszolút szélsőérték nem feltétlenül létezik, és a monotonitási tételeket, illetve a „végpontokban" vett határértékeket kell vizsgálni.

**Példa.** Legyen $f(h) = h - h^3$ a $[-1, +\infty)$ intervallumon. A derivált $f'(h) = 1 - 3h^2$, egy lefelé nyíló parabola, amelynek gyökei $\pm\frac{1}{\sqrt 3}$. Készítsünk **előjeltáblázatot** (jogosan: $f'$ Darboux-tulajdonságú, tehát nem „ugorhat át" az előjelváltáson):

| $h$ | $h < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < h < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3} < h$ |
|---|---|---|---|---|---|
| $f'(h)$ | $-$ | $0$ | $+$ | $0$ | $-$ |
| $f$ | csökken | lok. min. | nő | lok. max. | csökken |

Mivel $f(-1) = 0$ és $f\!\left(\frac{1}{\sqrt3}\right) > 0$, a $\frac{1}{\sqrt3}$ pontban van a $[-1,+\infty)$-re vonatkozó **abszolút maximumhely** (a $[-1, -\frac{1}{\sqrt3}]$ szakaszon ugyanis $f(x) \le f(-1) = 0$). A $-\frac{1}{\sqrt3}$ pontban viszont csak **lokális** minimum van, hiszen
$$\lim_{x\to+\infty} f(x) = -\infty,$$
tehát abszolút minimum nem létezik.

**Tétel (elsőrendű elégséges feltétel).** Tegyük fel, hogy $f$ differenciálható $B(a,\delta)$-ban, és
$$f'(x) \le 0 \ \text{ha } a-\delta < x < a, \qquad f'(x) \ge 0 \ \text{ha } a < x < a + \delta.$$
Ekkor $f$-nek **lokális minimuma** van $a$-ban. (Szigorú egyenlőtlenségek esetén szigorú lokális minimum; a $\ge, \le$ sorrend esetén lokális maximum; $>, <$ esetén szigorú lokális maximum.)

Vagyis: a derivált **előjelváltása** dönt.

## 78. Magasabb rendű deriváltak és a Leibniz-szabály

**Definíció.** Ha $f'$ differenciálható $a$-ban, akkor $(f')'(a)$-t az $f$ $a$-beli **második deriváltjának** nevezzük; jelölése $f''(a)$, $f^{(2)}(a)$, $\ddot{f}(a)$, $\left.\frac{d^2f}{dx^2}\right|_{x=a}$, $y''(a)$.

Indukcióval: ha $f$ $k$-adik deriváltját $f^{(k)}$ jelöli, és $f^{(k)}$ differenciálható $a$-ban, akkor $(f^{(k)})'(a)$ az $f$ $a$-beli **$(k+1)$-edik deriváltja**, jelölése $f^{(k+1)}(a)$, illetve $\left.\frac{d^{k+1}f}{dx^{k+1}}\right|_{x=a}$.

**Tétel (másodrendű elégséges feltétel).** Legyen $f$ differenciálható az $a$ egy környezetében, és tegyük fel, hogy létezik $f''(a)$. Ekkor
1. ha $f'(a) = 0$ és $f''(a) > 0$, akkor $a$ az $f$ **szigorú lokális minimumhelye**;
2. ha $f'(a) = 0$ és $f''(a) < 0$, akkor $a$ az $f$ **szigorú lokális maximumhelye**.

*Bizonyítás (az 1. pont).* Ha $f''(a) > 0$, akkor a 73. szakasz tétele szerint (az $f'$ függvényre alkalmazva) $f'$ szigorúan lokálisan nő $a$-ban. Tehát létezik $\delta > 0$ úgy, hogy
$$f'(x) < f'(a) = 0 \ \text{ha } x \in (a-\delta, a), \qquad f'(x) > f'(a) = 0 \ \text{ha } x \in (a, a+\delta).$$
Az előző szakasz elsőrendű feltétele szerint tehát $a$ szigorú lokális minimumhely. $\blacksquare$

**Általánosítás.** Ha $f$ $2k$-szor differenciálható, $f'(a) = f''(a) = \dots = f^{(2k-1)}(a) = 0$ és $f^{(2k)}(a) > 0$, akkor $a$ az $f$ szigorú lokális minimumhelye.

**Megjegyzés (a tétel nem dönt $f''(a)=0$ esetén).** Mindhárom eset előfordulhat:
$$f_1(x) = x^3 \ (\text{nincs szélsőérték}), \qquad f_2(x) = x^4 \ (\text{minimum}), \qquad f_3(x) = -x^4 \ (\text{maximum}),$$
és mindháromra $f'(0) = f''(0) = 0$.

**Tétel (magasabb rendű deriválási szabályok).** Ha $f$ és $g$ is $n$-szer differenciálható $a$-ban, akkor $f+g$ és $f\cdot g$ is az, és
1. $(f+g)^{(n)} = f^{(n)} + g^{(n)}$;
2. **(Leibniz-szabály)**
$$(f\cdot g)^{(n)} = \sum_{k=0}^{n}\binom{n}{k} f^{(k)} g^{(n-k)}, \qquad \text{ahol } f^{(0)} \stackrel{\text{def}}{=} f.$$

*Bizonyítás (a Leibniz-szabály, teljes indukcióval).* $n = 1$ esetén ez a szorzatszabály: $(fg)' = f'g + fg'$. Tegyük fel, hogy $n$-re igaz, és deriváljunk:
$$(f\cdot g)^{(n+1)} = \left(\sum_{k=0}^{n}\binom{n}{k} f^{(k)} g^{(n-k)}\right)' = \sum_{k=0}^{n}\binom{n}{k}\left(f^{(k+1)}g^{(n-k)} + f^{(k)}g^{(n-k+1)}\right).$$
Gyűjtsük össze az azonos $f^{(k)}g^{(n+1-k)}$ alakú tagokat: mindegyik kétszer keletkezik, $\binom{n}{k-1}$ és $\binom{n}{k}$ együtthatóval. A Pascal-azonosság szerint
$$\binom{n}{k-1} + \binom{n}{k} = \binom{n+1}{k},$$
tehát megkapjuk a kívánt
$$(f\cdot g)^{(n+1)} = \sum_{k=0}^{n+1}\binom{n+1}{k} f^{(k)} g^{(n+1-k)}$$
alakot. $\blacksquare$

A Leibniz-szabály szerkezete tehát pontosan a **binomiális tétel** szerkezete — csak a hatványok helyén deriváltak állnak.

**Példák magasabb rendű deriváltakra.** Legyen $f(x) = x^n$. Ekkor
$$f'(x) = nx^{n-1}, \qquad f''(x) = n(n-1)x^{n-2}, \qquad \dots$$
és indukcióval
$$f^{(k)}(x) = n(n-1)\cdots(n-k+1)\,x^{n-k} \qquad (k \le n).$$
Speciálisan $f^{(n)}(x) = n!$, és $f^{(k)}(x) \equiv 0$, ha $k > n$.

**Példa (a második derivált nem mindig létezik).** Legyen $f(x) = x\cdot|x|$. Ekkor
$$\lim_{h\to 0}\frac{f(h)-f(0)}{h} = \lim_{h\to 0}\frac{h|h|}{h} = 0 \implies f'(0) = 0,$$
és mivel
$$f(x) = \begin{cases} x^2 & \text{ha } x \ge 0, \\ -x^2 & \text{ha } x < 0, \end{cases} \qquad f'(x) = 2|x|,$$
a második derivált
$$f''(x) = \begin{cases} 2 & \text{ha } x > 0, \\ -2 & \text{ha } x < 0, \end{cases}$$
és $f''(0)$ **nem létezik**.

## 79. Konvexitás és a derivált

**Tétel.** Tegyük fel, hogy $f$ differenciálható az $I$ intervallumon. Ekkor
1. **(i)** $f$ akkor és csak akkor konvex (illetve konkáv) $I$-n, ha $f'$ monoton növekedő (illetve csökkenő) $I$-n;
2. **(ii)** $f$ akkor és csak akkor szigorúan konvex (illetve szigorúan konkáv) $I$-n, ha $f'$ szigorúan monoton növekedő (illetve csökkenő) $I$-n.

*Bizonyítás (az (i) állítás).*

**($\Rightarrow$)** Tegyük fel, hogy $f$ konvex $I$-n, és legyen $a, b \in I$, $a < b$. A 44. szakasz szerint az
$$F(x) = \frac{f(x)-f(a)}{x-a}$$
függvény monoton növekedő $I\setminus\{a\}$-n. Ezért $x < b$, $x \neq a$ esetén
$$(\otimes) \qquad \frac{f(x)-f(a)}{x-a} = F(x) \le F(b) = \frac{f(b)-f(a)}{b-a}.$$
Ha most $x \to a$, a bal oldal $f'(a)$-hoz tart, tehát
$$f'(a) \le \frac{f(b)-f(a)}{b-a}.$$
Hasonlóan, a $b$ pont körüli differenciahányadost, $G(x) = \frac{f(x)-f(b)}{x-b}$-t tekintve
$$(\otimes\otimes) \qquad \frac{f(b)-f(a)}{b-a} = G(a) \le G(x) = \frac{f(x)-f(b)}{x-b},$$
és $x \to b$ határátmenettel
$$\frac{f(b)-f(a)}{b-a} \le f'(b).$$
A kettőt összerakva: $a < b \implies f'(a) \le f'(b)$, azaz $f'$ monoton növekedő.

**($\Leftarrow$)** Tegyük fel, hogy $f'$ monoton növekedő $I$-n, és legyen $a < x < b$ tetszőleges $I$-beli pontok. A Lagrange-féle középértéktétel szerint léteznek $u \in (a,x)$ és $v \in (x,b)$ úgy, hogy
$$f'(u) = \frac{f(x)-f(a)}{x-a}, \qquad f'(v) = \frac{f(b)-f(x)}{b-x}.$$
Mivel $u < v$ és $f'$ monoton nő, $f'(u) \le f'(v)$, azaz
$$\frac{f(x)-f(a)}{x-a} \le \frac{f(b)-f(x)}{b-x}.$$
Szorozzuk fel a (pozitív) nevezőkkel és rendezzük:
$$f(x)(b-x) + f(x)(x-a) \le f(a)(b-x) + f(b)(x-a),$$
azaz $f(x)(b-a) \le f(a)(b-x) + f(b)(x-a)$, amiből
$$f(x) \le f(a) + \frac{f(b)-f(a)}{b-a}(x-a),$$
ami éppen a konvexitás definíciója. $\blacksquare$

**Tétel (a második derivált próbája).** Tegyük fel, hogy $f$ kétszer differenciálható az $I$ intervallumon. Ekkor
$$f \ \text{konvex} \iff f'' \ge 0, \qquad f \ \text{konkáv} \iff f'' \le 0,$$
$$f'' > 0 \implies f \ \text{szigorúan konvex}, \qquad f'' < 0 \implies f \ \text{szigorúan konkáv}.$$

*Bizonyítás.* Az előző tételt kombináljuk a monotonitási feltételekkel ($f'$ monotonitását $f''$ előjele jellemzi). $\blacksquare$

**Megjegyzés (a szigorú esetben nincs megfordítás).** $f$ szigorúan konvex $\not\Rightarrow f'' > 0$. Ellenpélda: $f(x) = x^4$, ahol $f'(x) = 4x^3$ szigorúan monoton növekedő (tehát $f$ szigorúan konvex), mégis $f''(0) = 0$.

**Példák.**
- $f(x) = \sin x$: $f'(x) = \cos x$, $f''(x) = -\sin x$. Tehát $\sin$ szigorúan konkáv a $[0,\pi] + 2k\pi$ intervallumokon, és szigorúan konvex a $[\pi, 2\pi] + 2k\pi$ intervallumokon.
- $f(x) = \ln x$: $f'(x) = \frac{1}{x}$, $f''(x) = -\frac{1}{x^2} < 0$, tehát $\ln$ **szigorúan konkáv** $(0,+\infty)$-en.

## 80. A Young-, a Hölder- és a Cauchy–Bunyakovszkij-egyenlőtlenség

A logaritmus konkávitása egyetlen lépésben elvezet két nevezetes egyenlőtlenséghez.

**Tétel (Young-egyenlőtlenség).** Ha $a, b, p, q > 0$ és $\frac{1}{p} + \frac{1}{q} = 1$, akkor
$$ab \le \frac{a^p}{p} + \frac{b^q}{q}.$$

*Bizonyítás.* Alkalmazzuk a Jensen-egyenlőtlenséget a **konkáv** $\ln$ függvényre, az $\frac{1}{p}$ és $\frac{1}{q}$ súlyokkal (amelyek összege $1$), az $a^p$ és $b^q$ pontokban:
$$\ln\!\left(\frac{1}{p}a^p + \frac{1}{q}b^q\right) \ge \frac{1}{p}\ln a^p + \frac{1}{q}\ln b^q = \ln a + \ln b = \ln(ab).$$
Mivel $\ln$ szigorúan monoton növekedő, a logaritmusok elhagyhatók. $\blacksquare$

**Tétel (Hölder-egyenlőtlenség).** Ha $p, q > 0$, $\frac{1}{p}+\frac{1}{q} = 1$, és $a_k \ge 0$, $b_k \ge 0$ ($k = 1, \dots, n$), akkor
$$a_1 b_1 + \dots + a_n b_n \le \underbrace{\sqrt[p]{a_1^p + \dots + a_n^p}}_{A}\cdot\underbrace{\sqrt[q]{b_1^q + \dots + b_n^q}}_{B}.$$

*Bizonyítás.* Normáljuk a számokat: alkalmazzuk a Young-egyenlőtlenséget az $\frac{a_k}{A}$ és $\frac{b_k}{B}$ párokra:
$$\frac{a_k}{A}\cdot\frac{b_k}{B} \le \frac{1}{p}\cdot\frac{a_k^p}{A^p} + \frac{1}{q}\cdot\frac{b_k^q}{B^q}.$$
Összegezzük $k = 1, \dots, n$-re:
$$\frac{1}{AB}(a_1b_1 + \dots + a_nb_n) \le \frac{1}{p}\cdot\frac{a_1^p + \dots + a_n^p}{A^p} + \frac{1}{q}\cdot\frac{b_1^q + \dots + b_n^q}{B^q} = \frac{1}{p} + \frac{1}{q} = 1,$$
hiszen $A^p = a_1^p + \dots + a_n^p$ és $B^q = b_1^q + \dots + b_n^q$. Beszorozva $AB$-vel kapjuk az állítást. $\blacksquare$

Figyeljük meg a bizonyítás szépségét: a normálás után a jobb oldal **pontosan $1$** lesz — ez az, amiért a $\frac{1}{p}+\frac{1}{q}=1$ feltétel éppen így szól.

**Speciális eset ($p = q = 2$): a Cauchy–Bunyakovszkij-egyenlőtlenség.** Ha $a_k, b_k \ge 0$, akkor
$$a_1b_1 + \dots + a_nb_n \le \sqrt{a_1^2 + \dots + a_n^2}\cdot\sqrt{b_1^2 + \dots + b_n^2}.$$
Vektoros alakban ez azt mondja, hogy a **skaláris szorzat legfeljebb akkora, mint a hosszak szorzata**:
$$\underline{a}\circ\underline{b} \le \|\underline{a}\|\cdot\|\underline{b}\|.$$

## 81. Érintő és inflexiós pontok

**Tétel (az érintő jellemzése).** Tegyük fel, hogy $f$ differenciálható az $I$ intervallumon. Ekkor $f$ akkor és csak akkor konvex, ha bármely $I$-beli pontban húzott érintő az $f$ grafikonja **alatt** halad.

*Bizonyítás.*

**($\Rightarrow$)** Ha $f$ konvex és differenciálható, akkor az előző szakasz $(\otimes)$ és $(\otimes\otimes)$ becslései szerint $a < b$ esetén
$$f'(a) \le \frac{f(b)-f(a)}{b-a} \le f'(b).$$
Ha $a < x$, akkor a $b = x$ választással $f'(a)(x-a) + f(a) \le f(x)$. Ha $x < a$, akkor a másik becslésből
$$\frac{f(a)-f(x)}{a-x} \le f'(a) \implies f(a) - f(x) \le f'(a)(a-x) \implies f(a) + f'(a)(x-a) \le f(x).$$
Mindkét esetben az érintő a grafikon alatt van.

**($\Leftarrow$)** Tegyük fel, hogy $a, b \in I$, $a < b$. A feltételből
$$f(b) \ge f(a) + f'(a)(b-a) \implies \frac{f(b)-f(a)}{b-a} \ge f'(a),$$
$$f(a) \ge f(b) + f'(b)(a-b) \implies \frac{f(b)-f(a)}{b-a} \le f'(b).$$
Tehát $f'(a) \le f'(b)$, azaz $f'$ monoton növekedő, és az előző szakasz tétele szerint $f$ konvex. $\blacksquare$

**Definíció (inflexiós pont).** Az $a$ pont az $f$ függvény **inflexiós helye**, ha $f$-nek létezik (véges vagy végtelen) deriváltja $a$-ban, és létezik $\delta > 0$ úgy, hogy $f$ konvex az $(a-\delta, a]$ intervallumon és konkáv az $[a, a+\delta)$ intervallumon, vagy fordítva.

Az inflexiós pont tehát a **görbületváltás** helye.

**Példák.** A $0$ inflexiós pontja az $f(x) = x^3$ függvénynek és a $g(x) = \sqrt[3]{x}$ függvénynek is — az utóbbi esetben a derivált a $0$-ban végtelen. (Az inflexiós pont definíciója a szakirodalomban nem teljesen egységes; egyes szerzők nem engedik meg a végtelen deriváltat.)

**Tétel (szükséges feltétel).** Ha $f$ kétszer differenciálható $a$-ban, és $a$ az $f$ inflexiós pontja, akkor $f''(a) = 0$.

*Bizonyítás.* Az egyik esetben: $f$ konvex $(a-\delta, a]$-n, tehát ott $f'$ monoton növekedő; és $f$ konkáv $[a, a+\delta)$-n, tehát ott $f'$ monoton csökkenő. Eszerint $a$ az $f'$ függvénynek **lokális maximumhelye**, így a 73. szakasz szerint $(f')'(a) = f''(a) = 0$. A másik eset hasonló. $\blacksquare$

**Tétel (elégséges feltétel előjelváltással).** Ha $f$ kétszer differenciálható $a$-ban, $f''(a) = 0$, és $f''$ **előjelet vált** $a$-ban (azaz $f''$ lokálisan nő vagy csökken $a$-ban), akkor $a$-ban $f$-nek inflexiós pontja van.

*Bizonyítás (a lokálisan növekedő eset).* Ekkor $f'' \le 0$ az $(a-\delta, a]$ intervallumon, tehát $f$ ott konkáv; és $f'' \ge 0$ az $[a, a+\delta)$-n, tehát $f$ ott konvex; továbbá $f'(a)$ létezik. $\blacksquare$

**Tétel (harmadik derivált próbája).** Ha $f$ háromszor differenciálható $a$-ban, $f''(a) = 0$ és $f'''(a) \neq 0$, akkor $f$-nek $a$-ban inflexiós pontja van.

*Bizonyítás.* Ha $f'''(a) > 0$, akkor $f''$ szigorúan lokálisan nő $a$-ban, tehát az előző tétel alkalmazható; a $f'''(a) < 0$ eset hasonló. $\blacksquare$

**Megjegyzés.** Az $f(x) = x^5$ függvénynek a $0$ inflexiós pontja, holott $f''(0) = f'''(0) = f^{(4)}(0) = 0$; itt csak $f^{(5)}(0) \neq 0$. Ez vezet az általános tételhez.

**Tétel (általános, magasabb rendű próba).** Tegyük fel, hogy $f$ $(2k+1)$-szer differenciálható $a$-ban ($k \ge 1$).
- **i)** Ha $f''(a) = \dots = f^{(2k)}(a) = 0$ és $f^{(2k+1)}(a) \neq 0$, akkor $a$ az $f$ inflexiós pontja.
- **ii)** Ha $f''(a) = \dots = f^{(2k-1)}(a) = 0$ és $f^{(2k)}(a) \neq 0$, akkor $f$ az $a$ egy környezetében szigorúan konvex (illetve konkáv).

Vagyis: **az első el nem tűnő derivált rendjének paritása dönt** — páratlan rend inflexiót, páros rend görbületi „tisztaságot" jelent.

## 82. Teljes függvényvizsgálat

Az eddigi eszközök összefoglalásaként rögzítsük a teljes függvényvizsgálat menetét:

1. **$D(f)$**, az értelmezési tartomány meghatározása.
2. Az $f$ **folytonossági** pontjainak halmaza.
3. Az $f$ **határértékei** a szakadási pontokban és a $\pm\infty$-ben.
4. **Monotonitási intervallumok** ($f'$ előjele).
5. **Lokális és globális szélsőértékhelyek**, a szélsőértékek.
6. **Konvexitási intervallumok** ($f''$ előjele).
7. **Inflexiós pontok**.
8. **További tulajdonságok**: párosság/páratlanság, periodikusság, **aszimptoták** (függőleges és „ferde").

**Definíció (ferde aszimptota).** Ha
$$\lim_{x\to+\infty}\big(f(x) - (ax+b)\big) = 0,$$
akkor az $ax+b$ lineáris függvényt az $f$ **aszimptotájának** nevezzük a $+\infty$-ben. Hasonlóan a $-\infty$-ben.

**Példák.**
- $f(x) = e^{-x} + x + 5$: itt $\lim_{x\to+\infty}(f(x) - x - 5) = 0$, tehát $y = x+5$ aszimptota a $+\infty$-ben.
- $f(x) = \arctan x$: az $y = -\frac{\pi}{2}$ egyenes aszimptota a $-\infty$-ben, az $y = \frac{\pi}{2}$ pedig a $+\infty$-ben.

### Kidolgozott példa: az Agnesi-görbe

**Történeti megjegyzés.** A vizsgált görbe neve angolul *witch of Agnesi* (Agnesi boszorkánya), és a név egy fordítási félreértésből származik: az olasz *la versiera di (Maria) Agnesi* („Agnesi fordulata") kifejezést összekeverték az *avversiera* („ördöngös asszony") szóval. Franciául így lett belőle *la sorcière d'Agnesi*.

Legyen
$$f(x) = \frac{1}{1+x^2}.$$

**1–3. Alapadatok.** $D(f) = \mathbb{R}$, $f \in C(\mathbb{R})$ (racionális törtfüggvény, a nevező sehol sem nulla), és
$$\lim_{x\to+\infty} f(x) = \lim_{x\to-\infty} f(x) = 0,$$
tehát az $y = 0$ egyenes aszimptota mindkét irányban. A függvény **páros**, és mindenütt $f(x) > 0$.

**4–7. Deriváltak.**
$$f'(x) = \frac{-2x}{(1+x^2)^2},$$
$$f''(x) = \frac{-2(1+x^2)^2 + 2x\cdot 2(1+x^2)\cdot 2x}{(1+x^2)^4} = \frac{-2(1+x^2) + 8x^2}{(1+x^2)^3} = \frac{6x^2 - 2}{(1+x^2)^3}.$$
Zérushelyek:
$$f'(x) = 0 \iff x = 0, \qquad f''(x) = 0 \iff 6x^2 = 2 \iff x = \pm\frac{1}{\sqrt3}.$$

**Vizsgálati táblázat.**

| | $x < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < x < 0$ | $0$ | $0 < x < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3} < x$ |
|---|---|---|---|---|---|---|---|
| $f'$ | $+$ | $+$ | $+$ | $0$ | $-$ | $-$ | $-$ |
| $f''$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f$ | nő, konvex | **infl.** | nő, konkáv | **lok. max.** | csökken, konkáv | **infl.** | csökken, konvex |

**Összefoglalás.**
- $f$ szigorúan monoton növekedő $(-\infty, 0]$-n, és szigorúan monoton csökkenő $[0,+\infty)$-en.
- $f$ szigorúan konvex a $\left(-\infty, -\frac{1}{\sqrt3}\right]$ és $\left[\frac{1}{\sqrt3}, +\infty\right)$ intervallumokon, és szigorúan konkáv a $\left[-\frac{1}{\sqrt3}, \frac{1}{\sqrt3}\right]$ intervallumon.
- A maximumát a $0$-ban veszi fel: $f(0) = 1$. Abszolút minimuma **nincs** (az infimum $0$, de nem vétetik fel).
- Inflexiós pontok: $-\frac{1}{\sqrt3}$ és $\frac{1}{\sqrt3}$.

## 83. A L'Hospital-szabály

**Történeti megjegyzés.** A szabály névadója Guillaume-François-Antoine, Marquis de l'Hôpital, Marquis de Sainte-Mesme, Comte d'Entremont, Seigneur d'Ouques-la-Chaise. A szabályt valójában tanára, Johann Bernoulli fedezte fel, aki szerződésben átengedte matematikai eredményei közlésének jogát l'Hôpitalnak. Bernoulli később a saját fiával, Daniellel is féltékenységi viszonyba került: amikor a Párizsi Egyetem tudományos versenyén holtversenyben végeztek, apja kitiltotta őt otthonról.

**Tétel (L'Hospital-szabály).** Legyen $f$ és $g$ differenciálható az $a$ egy $\dot{U}(a)$ pontozott környezetében, ahol $g \neq 0$ és $g' \neq 0$, továbbá teljesüljön az alábbiak közül **valamelyik**:
- **(1)** $\displaystyle \lim_{x\to a} f(x) = \lim_{x\to a} g(x) = 0$ (a $\frac{0}{0}$ eset), vagy
- **(2)** $\displaystyle \lim_{x\to a}|g(x)| = \infty$ (a $\frac{\ast}{\infty}$ eset).

Ekkor, ha
$$\lim_{x\to a}\frac{f'(x)}{g'(x)} = A,$$
akkor
$$\lim_{x\to a}\frac{f(x)}{g(x)} = A.$$

**Megjegyzés.** A tétel mind a tizenöt határérték-típusra érvényes: $a$ lehet $-\infty$, $a-0$, $a$, $a+0$, $+\infty$, és $A$ lehet $-\infty$, $b \in \mathbb{R}$, $+\infty$.

*Bizonyítás (az $a+0$, $A = b \in \mathbb{R}$, (1) esetben).* Legyen $\varepsilon > 0$. A feltevés szerint létezik $\delta > 0$ úgy, hogy minden $x \in (a, a+\delta)$-ra
$$\left|\frac{f'(x)}{g'(x)} - b\right| < \frac{\varepsilon}{2}.$$
Legyen $a < y < x < a+\delta$. A **Cauchy-féle középértéktétel** szerint van olyan $c \in (y, x)$, amelyre
$$\frac{f(x)-f(y)}{g(x)-g(y)} = \frac{f'(c)}{g'(c)} \in \left(b - \frac{\varepsilon}{2},\ b+\frac{\varepsilon}{2}\right).$$
Most rögzítsük $x$-et, és tartsunk $y \to a+0$-hoz. Az (1) feltevés szerint $f(y) \to 0$ és $g(y) \to 0$, tehát a bal oldal $\frac{f(x)}{g(x)}$-hez tart, és mivel a zárt intervallumba eső értékek határértéke is abban marad:
$$\frac{f(x)}{g(x)} \in \left[b-\frac{\varepsilon}{2},\ b+\frac{\varepsilon}{2}\right].$$
Ez minden $x \in (a, a+\delta)$-ra igaz, tehát $\frac{f(x)}{g(x)} \to b$. $\blacksquare$

Vegyük észre, hogy a bizonyítás a Cauchy-féle középértéktételen áll vagy bukik — ezért volt szükség rá a 74. szakaszban.

**Példák.**

**1.** A $0\cdot\infty$ típusú kifejezést először tört alakra hozzuk:
$$\lim_{x\to 0+0} x\ln x = \lim_{x\to 0+0}\frac{\ln x}{\frac{1}{x}} = \lim_{x\to 0+0}\frac{\frac{1}{x}}{-\frac{1}{x^2}} = \lim_{x\to 0+0}(-x) = 0.$$

**2.** Az $1^\infty$ és $0^0$ típusú kifejezéseket exponenciális alakra hozzuk:
$$\lim_{x\to 0+0} x^x = \lim_{x\to 0+0} e^{x\ln x} = e^0 = 1,$$
felhasználva az előző eredményt és az $e^x$ folytonosságát.

**3.** Kétszeri alkalmazás helyett néha ismert határértéket használunk:
$$\lim_{x\to 0}\frac{\cos x - 1}{x^2} = \lim_{x\to 0}\frac{-\sin x}{2x} = -\frac{1}{2},$$
ahol az utolsó lépésben a $\frac{\sin x}{x} \to 1$ határértéket alkalmaztuk (bár egy újabb L'Hospital-lépéssel is célhoz érnénk).

## 84. Taylor-polinomok és a Taylor-formula

Ha $f$ differenciálható $a$-ban, akkor az
$$T_1(x) = f(a) + f'(a)(x-a)$$
érintővel közelítjük $f$-et. Az érintő az az elsőfokú polinom, amely $a$-ban ugyanazt az értéket és ugyanazt a deriváltat veszi fel, mint $f$. Kézenfekvő a kérdés: mi történik, ha **több** deriváltban is megköveteljük az egyezést?

**Definíció (Taylor-polinom).** Ha $f$ $n$-szer differenciálható az $a$ pontban, akkor az
$$T_n(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x-a)^n = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k$$
polinomot az $f$ $a$ körüli **$n$-edik Taylor-polinomjának** nevezzük.

Erre a polinomra teljesül, hogy
$$T_n^{(k)}(a) = f^{(k)}(a) \qquad \text{minden } k \le n\text{-re}$$
(a $\frac{1}{k!}$ nevezők pontosan ezt biztosítják, hiszen $\left((x-a)^k\right)^{(k)} = k!$).

**Az egyértelműség.** Sőt, ha egy legfeljebb $n$-edfokú $p(x)$ polinomra
$$\lim_{x\to a}\frac{f(x)-p(x)}{(x-a)^n} = 0,$$
akkor szükségképpen $p(x) = T_n(x)$. A Taylor-polinom tehát a lehető **legjobb** ilyen közelítés.

**Tétel (Taylor-formula).** Tegyük fel, hogy $f$ $(n+1)$-szer differenciálható az $[a,x]$ intervallumon. Ekkor létezik $c \in (a,x)$ úgy, hogy
$$(\otimes) \qquad f(x) = \underbrace{\sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k}_{T_n(x)} + \underbrace{\frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1}}_{\text{Lagrange-féle maradéktag}},$$
és létezik $d \in (a,x)$ úgy, hogy
$$(\otimes\otimes) \qquad f(x) = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k + \underbrace{\frac{f^{(n+1)}(d)}{n!}(x-d)^n(x-a)}_{\text{Cauchy-féle maradéktag}}.$$
Hasonló érvényes az $(x, a]$ intervallumon is.

*Bizonyítás (a Lagrange-féle maradéktag).* Rögzítsük $x$-et, és tekintsük a következő segédfüggvényt a $t \in [a,x]$ változóban:
$$R(t) = \left[ f(t) + \frac{f'(t)}{1!}(x-t) + \dots + \frac{f^{(n)}(t)}{n!}(x-t)^n \right] - f(x).$$
Két megfigyelés: $R(x) = f(x) - f(x) = 0$, és $R(a) = T_n(x) - f(x)$ — vagyis $-R(a)$ éppen a keresett maradék.

Deriváljuk $R$-t $t$ szerint, a szorzatszabállyal. Minden tagból két rész keletkezik, és ezek **teleszkopikusan** kiesnek a szomszédjukkal:
$$R'(t) = f'(t) + \left[\frac{f''(t)}{1!}(x-t) - f'(t)\right] + \dots + \left[\frac{f^{(n+1)}(t)}{n!}(x-t)^n - \frac{f^{(n)}(t)}{(n-1)!}(x-t)^{n-1}\right] = \frac{f^{(n+1)}(t)}{n!}(x-t)^n.$$

Válasszuk most a
$$h(t) = (x-t)^{n+1}$$
segédfüggvényt, amelyre $h(x) = 0$ és $h'(t) = -(n+1)(x-t)^n$. Alkalmazzuk a **Cauchy-féle középértéktételt** az $R$ és $h$ függvényekre az $[a,x]$ intervallumon: létezik $c \in (a,x)$ úgy, hogy
$$\frac{R(x)-R(a)}{h(x)-h(a)} = \frac{R'(c)}{h'(c)}.$$
A bal oldal $\frac{-R(a)}{-(x-a)^{n+1}} = \frac{R(a)}{(x-a)^{n+1}}$, a jobb oldal pedig
$$\frac{\frac{f^{(n+1)}(c)}{n!}(x-c)^n}{-(n+1)(x-c)^n} = -\frac{f^{(n+1)}(c)}{(n+1)!},$$
ahol az $(x-c)^n$ tényezővel egyszerűsítettünk. Innen
$$R(a) = -\frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1},$$
és mivel $R(a) = T_n(x) - f(x)$, éppen a $(\otimes)$ alakot kapjuk. $\blacksquare$

**Speciális eset ($n = 1$).**
$$f(x) = f(a) + f'(a)(x-a) + \frac{f''(c)}{2!}(x-a)^2.$$
Ez a Lagrange-féle középértéktétel „másodrendű" változata.

**Definíció (differenciál).** Ha $f$ differenciálható az $a$ helyen, akkor a lineáris
$$df(h) = f'(a)\cdot h$$
függvényt az $f$ **differenciáljának** nevezzük. Ez a megváltozás **lineáris főrésze**; a fizikában a
$$f(a+h) - f(a) \approx f'(a)h$$
becslés formájában használjuk.

**Példa.** $\sin x \approx x$, ha $x$ kicsi — hiszen $\sin x - \sin 0 \approx \cos(0)\cdot x = x$.

## 85. Taylor-sorok és hatványsorok

Kézenfekvő a kérdés: ha $n \to \infty$, vajon a Taylor-polinomok „elérik-e" a függvényt? A válasz nem mindig igen — de van egy egyszerű elégséges feltétel.

**Lemma (Taylor-sorba fejthetőség).** Legyen $a, x \in \mathbb{R}$, és jelölje $I$ az $a$ és $x$ által határolt zárt intervallumot. Tegyük fel, hogy $f$ az $I$ minden pontjában akárhányszor differenciálható, és létezik olyan $M$, amelyre
$$|f^{(n)}(y)| \le M \qquad \text{minden } y \in I, \ n \in \mathbb{N} \text{ esetén}.$$
Ekkor
$$f(x) = \sum_{n=0}^{\infty}\frac{f^{(n)}(a)}{n!}(x-a)^n.$$

*Bizonyítás.* A Taylor-formula szerint minden $n$-re
$$f(x) = T_n(x) + \frac{f^{(n+1)}(c_n)}{(n+1)!}(x-a)^{n+1}, \qquad c_n \in I.$$
A maradéktagot becsülve:
$$|f(x) - T_n(x)| = \left|\frac{f^{(n+1)}(c_n)}{(n+1)!}(x-a)^{n+1}\right| \le M\cdot\frac{|x-a|^{n+1}}{(n+1)!} \to 0 \qquad (n\to\infty).$$

A határátmenethez arra van szükség, hogy tetszőleges rögzített $k \in \mathbb{R}$-re
$$\lim_{n\to\infty}\frac{k^n}{n!} = 0,$$
azaz a faktoriális **gyorsabban nő bármely exponenciálisnál**. Ez például abból következik, hogy elég nagy $n$-re $n! > n^{n/2}$, és így
$$\frac{k^n}{n!} < \frac{k^n}{n^{n/2}} = \left(\frac{k}{\sqrt n}\right)^n \to 0. \qquad \blacksquare$$

**Következmény: az exponenciális sor.** Ha $I$ az $x$ és $a$ által határolt intervallum, akkor $\left|(e^x)^{(n)}\right| = e^x \le \max(e^0, e^x) = M$ az $I$-n. Az előző tétel szerint tehát ($a = 0$-val)
$$e^x = \sum_{n=0}^{\infty}\frac{e^0}{n!}x^n = 1 + \frac{x}{1!} + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$$
Speciálisan $x = 1$-re
$$e = \sum_{n=0}^{\infty}\frac{1}{n!},$$
és ez a sor **jól konvergál** — sokkal gyorsabban, mint az $\left(1+\frac{1}{n}\right)^n$ sorozat, amellyel az $e$-t definiáltuk.

**Következmény: a trigonometrikus sorok.** Mivel $\left|(\sin x)^{(n)}\right| \le 1$ és $\left|(\cos x)^{(n)}\right| \le 1$ minden $x \in \mathbb{R}$-re (hiszen minden derivált $\pm\sin$ vagy $\pm\cos$), a lemma alkalmazható $M = 1$-gyel:
$$\sin x = \frac{\sin 0}{0!} + \frac{\cos 0}{1!}x + \frac{-\sin 0}{2!}x^2 + \frac{-\cos 0}{3!}x^3 + \dots = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^n x^{2n+1}}{(2n+1)!},$$
$$\cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^n x^{2n}}{(2n)!}.$$

**A hiperbolikus sorok.** Ugyanezzel a módszerrel (vagy az $e^x$ sorából közvetlenül):
$$\operatorname{sh} x = x + \frac{x^3}{3!} + \frac{x^5}{5!} + \dots, \qquad \operatorname{ch} x = 1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \dots$$
Figyeljük meg: ugyanazok a tagok, mint a $\sin$ és $\cos$ soraiban, csak **váltakozó előjelek nélkül**. Ez a legmélyebb magyarázata a trigonometrikus és a hiperbolikus függvények párhuzamának.

**Definíció (hatványsor).** Ha $x_0 \in \mathbb{R}$ és $a_n \in \mathbb{R}$ ($n = 0, 1, \dots$), akkor a
$$\sum_{n=0}^{\infty} a_n (x-x_0)^n$$
függvénysort **$x_0$ körüli hatványsornak** nevezzük. Ha $x_0 = 0$, akkor **Maclaurin-sorról** beszélünk.

A hatványsor tehát a polinom „végtelen fokú" általánosítása.

**Példák.**
$$\sum_{n=0}^{\infty}\frac{x^n}{n!} = e^x \quad (\forall x \in \mathbb{R}), \qquad \sum_{n=0}^{\infty}x^n = \frac{1}{1-x} \quad (-1 < x < 1).$$
Az utóbbi éppen a mértani sor, amelyet a 37. szakaszban tárgyaltunk — most azonban **függvényként**, nem pusztán számként olvassuk.

## 86. Differenciálegyenletek

### A szabadesés

A $t_0 = 0$ időpillanatban $h_0$ magasságból, nyugalomból induló, szabadon eső test sebességét a $v(t) = -gt$ egyenlet adja meg. Milyen magasan van a test a $t_1$ időpillanatban?

Mivel a sebesség a magasság deriváltja:
$$\frac{dh(t)}{dt} = \dot h(t) = h'(t) = -gt.$$
Ez egy **differenciálegyenlet**: olyan egyenlet, amely egy ismeretlen **függvény** és annak deriváltjai közötti összefüggést ír le. Keressük azokat a differenciálható $h$ függvényeket, amelyek eleget tesznek neki.

Próbálgatással (a következő félévben: integrálással) találunk egy megoldást:
$$h_1(t) = -\frac{gt^2}{2}, \qquad \text{hiszen} \qquad \left(-\frac{gt^2}{2}\right)' = -gt.$$
Mivel $C' = 0$ minden konstansra, a $-\frac{gt^2}{2} + C$ alakú függvények is megoldások, tetszőleges $C \in \mathbb{R}$ esetén. **De vajon vannak-e más megoldások?**

**Állítás.** A $h'(t) = -gt$ egyenlet **összes** megoldása $h(t) = -\frac{gt^2}{2} + C$ alakú, $C \in \mathbb{R}$.

*Bizonyítás.* Legyen $f(t)$ egy tetszőleges megoldás. Tekintsük a különbségfüggvényt:
$$\big(f(t) - h_1(t)\big)' = f'(t) - h_1'(t) = -gt - (-gt) = 0 \qquad \text{minden } t\text{-re}.$$
A 76. szakasz tétele szerint (azonosan nulla deriváltú függvény egy intervallumon konstans) ebből
$$f(t) - h_1(t) = C \implies f(t) = h_1(t) + C. \qquad \blacksquare$$

Itt látszik, miért volt fontos az a látszólag jelentéktelen tétel: **ez garantálja a megoldás egyértelműségét.**

**A kezdetiérték-probléma.** A $C$ konstanst a kezdeti feltétel rögzíti. Mivel $h(0) = h_0$:
$$h(0) = -\frac{g\cdot 0^2}{2} + C = C = h_0,$$
tehát az egyértelmű megoldás
$$h(t) = -\frac{gt^2}{2} + h_0.$$

### Exponenciális növekedés és bomlás

Gyakran — például népességnövekedési modellekben vagy radioaktív bomlásnál — a **változás sebessége arányos a jelenlévő „anyag" mennyiségével**. Ha $f(t)$ az anyagmennyiség a $t$ időpillanatban, akkor a differenciálegyenlet
$$f' = k\cdot f, \qquad k \in \mathbb{R} \ \text{konstans}.$$

**Állítás.** Ha $f$ differenciálható az $I$ intervallumon és minden $t \in I$-re $f'(t) = k f(t)$, akkor
$$f(t) = C_0 e^{kt}, \qquad C_0 \in \mathbb{R}.$$

*Bizonyítás.* **Ezek megoldások:** $\left(C_0 e^{kt}\right)' = C_0 \cdot k \cdot e^{kt} = k f(t)$.

**Csak ezek a megoldások:** legyen $f$ tetszőleges megoldás, és vezessük be a
$$g(t) = f(t)e^{-kt}$$
segédfüggvényt („integráló szorzó"). Ekkor a szorzatszabállyal
$$g'(t) = \underbrace{f'(t)}_{= k f(t)}e^{-kt} + f(t)\cdot(-k)e^{-kt} = kf(t)e^{-kt} - kf(t)e^{-kt} = 0 \qquad \text{minden } t \in I\text{-re}.$$
Tehát $g$ konstans: létezik $C_0 \in \mathbb{R}$, amelyre
$$C_0 = g(t) = f(t)e^{-kt} \implies f(t) = C_0 e^{kt}. \qquad \blacksquare$$

A $k > 0$ eset a **növekedés**, a $k < 0$ a **csökkenés (bomlás)**.

### Alkalmazás: radioaktív kormeghatározás

A $C_{14}$ izotóp $C_{12}$-vé bomlik; felezési ideje $T = 5700$ év. Mennyi a $k$ együttható?

Legyen $f(t)$ a $C_{14}$ mennyisége. A felezési idő definíciója szerint
$$\frac{1}{2}f(t_0) = f(t_0 + 5700).$$
Behelyettesítve $f(t) = C_0 e^{kt}$-t (feltéve $C_0 \neq 0$):
$$\frac{1}{2}C_0 e^{kt_0} = C_0 e^{k(t_0 + 5700)} \implies \frac{1}{2} = e^{5700k},$$
amiből
$$k = \frac{\ln\frac{1}{2}}{5700} = \frac{-\ln 2}{T}.$$

**Kérdés: hány százalék $C_{14}$ bomlik el 2000 év alatt?**
$$\frac{f(t_0 + 2000)}{f(t_0)} = \frac{C_0 e^{-\frac{\ln 2}{5700}(t_0+2000)}}{C_0 e^{-\frac{\ln 2}{5700}t_0}} = e^{-\frac{2000\ln 2}{5700}} = 0{,}784\dots$$
Tehát körülbelül $21{,}6\%$ bomlik el.

### Alkalmazás: Newton fűtési/hűtési törvénye

Egy állandó $T_\infty$ hőmérsékletű szobába helyezett, $T_0$ hőmérsékletű tárgy hőmérséklet-változásának sebessége arányos a hőmérséklet-különbséggel:
$$T'(t) = k\big(T(t) - T_\infty\big).$$
Vezessük be az $f(t) = T(t) - T_\infty$ függvényt; ekkor $f'(t) = T'(t) = kf(t)$, tehát az előző állítás szerint $f(t) = C_0 e^{kt}$, ahol
$$C_0 = f(0) = T(0) - T_\infty = T_0 - T_\infty.$$
Így
$$T(t) = T_\infty + \big(T(0) - T_\infty\big)e^{kt}, \qquad k < 0.$$

**Példa.** Egy $100\,^\circ\mathrm{C}$-os forró leves áll egy $20\,^\circ\mathrm{C}$-os szobában. Egy perc múlva $95\,^\circ\mathrm{C}$-os. Milyen meleg $10$ perc múlva? Mikor lesz $45\,^\circ\mathrm{C}$-os?

Itt $T_0 = T(0) = 100$ és $T_\infty = 20$, tehát
$$T(t) = 20 + 80 e^{kt}.$$
A $k$ meghatározása az első perc adatából:
$$T(1) = 20 + 80e^k = 95 \implies e^k = \frac{75}{80} \implies k = \ln\frac{75}{80} \approx -0{,}0645385\dots$$

**10 perc múlva:**
$$T(10) = 20 + 80e^{10k} \approx 61{,}55\,^\circ\mathrm{C}.$$

**Mikor lesz $45\,^\circ\mathrm{C}$?**
$$45 = 20 + 80e^{kt} \implies e^{kt} = \frac{25}{80} \implies t = \frac{\ln\frac{25}{80}}{k} \approx 18{,}02 \ \text{perc}.$$

---

## Utószó

Ezzel bezárult a kör. Az első oldalon két kérdést tettünk fel: mekkora a kör területe, és mekkora egy test pillanatnyi sebessége. A másodikra most már pontos választ tudunk adni — a derivált fogalma, a középértéktételek és a Taylor-formula révén nemcsak kiszámolni tudjuk, hanem meg is tudjuk indokolni, miért helyes, amit csinálunk.

Az első kérdés — a területszámítás — a következő félévre marad: ott az **integrálszámítás** ugyanezt az utat járja be még egyszer, a közelítő összegektől a határértéken át a szigorú fogalomig. Az alapok azonban már készen állnak: a teljességi axióma, a Bolzano–Weierstrass-tétel, a folytonosság és a differenciálhatóság.

Érdemes még egyszer végigfutni a gondolatmenet gerincén:

$$\text{Teljességi axióma} \to \sup/\inf \to \text{monoton korlátos sorozat konvergens} \to \text{Bolzano–Weierstrass}$$
$$\to \text{Cauchy-kritérium},\ \text{Weierstrass-féle maximumtétel} \to \text{Rolle} \to \text{Lagrange} \to \text{Cauchy}$$
$$\to \text{monotonitás},\ \text{konvexitás},\ \text{L'Hospital},\ \text{Taylor-formula} \to \text{differenciálegyenletek}.$$

Egyetlen axiómából, amely azt mondja ki, hogy a számegyenesen nincsenek lyukak.
