#set text(lang: "ru", size: 14pt)
#set par(justify: true)
#import "@preview/mannot:0.2.2": *
#import "./utils.typ": *





#align(center, text(22pt)[
  *Уравнения математической физики*
])

#align(center)[
  Дальневосточный Федеральный Университет\
  Институт математики и компьютерных технологий.\
  6-й семестр, 2024-2025 учебный год.\
  Лектор: Алексеев Геннадий Валентинович.
]

Литература:
Г.Б. Алексеев. Классические модели и методы математической физики.

= Сущность метода математического моделирования (МММ)

#align(right)[`2025-02-19`]

Важную роль играет МММ, с помощью которого можно исследовать
различные процессы, явления и объекты математическим методом.
Этот метод возник сразу после великой отечественной войны. (???)
Это было связано с тем, что в СССР была необходимость решения важнейшей государственной задачи, сформулированной АП и КП (атом-проект и космический проект).

+ 1945 г. --- сброс двух атомных бомб на Японию.
+ 1945 г. август, 20 --- создан специальный коммитет по созданию атомных бомб. Во главе с Лаврентием Берией.
+ 1948 г. февраль.
+ 1949 г. август, 29 --- успешное испытание первой атомной бомбы.
+ 1951 г. октябрь --- успешное испытание второый атомной бомбы.
+ 1953 г. --- успешной испытание первой водородной бомбы.
+ 1954 г. февраль, 19, --- роковое решение. Передан Крым в Украину.
+ 1957 г. октябрь, 4 --- запуск первого искусственного спутника Земли.
+ 1961 г. апрель, 12 --- полет Ю.А. Гагарина, 108 минут.
+ 1961 г. октябрь, 10 --- 58.6 мегатонн.

За 16 лет основные задачи атомного и космического проектов были решены. В этом заслуга физиков, химиков, инженеров, а также математиков. Почему? Потому что при создании этих высокотехнологичных изделий необходимо было решить огромное количество прикладных задач, возникающих при создании разных компонент этих изделий.

+ Выбираются причины $u, v, dots$ которые характеризуют изучаемый процесс.
+ На основании законов управляющих рассматриваемым процессом выводится система математических соотношений.
+ Добавляются некоторые условия (краевые, начальные).
+ Исследуется корректность краевой или начально задачи. Корректность это:
  - существование решения,
  - единственность решения,
  - устойчивость решения.
  Устойчивость относительно возмущений исходных данных.
+ Нахождение аналитически или численно решения.
+ Анализ полученных результатов.

Применениее МММ в задаче распространения вирусов. Использую модели в виде ОДУ.

== Модель SIR

3 группы. $S "(чувствительные к вирусу)", I "(infected)", R "(recovered)".$

$ (dif S) / (dif t) = -beta (S I)/(N), wide
  (dif I)/(dif t) = beta (S I)/N - gamma I, wide
  (dif R)/(dif t) = gamma I
$

Коэффициенты всегда положительны.

Рассмотрим теперь модель, в которой инфицированные могут опять заболеть.

$ dif/(dif t) (S + I + R) = 0 $

То есть количество всех особей не меняется (если конечно смертности нет))).

$ S + I + R = "const" = N  - "первый интеграл" $

== модель SIRS

$ (dif S)/(dif t) = -beta (S I)/N mark(+ alpha R), wide
  (dif I)/(dif t) = beta (S I)/N - gamma I, wide
  (dif R)/(dif t) = gamma I mark(- alpha R)
$

== модель WIRiv

$W$ --- wild (здоровые),\
$R$ --- recovered, $I, nu, i$

$ (dif W)/(dif t) = alpha_1 nu W - alpha_2 i W, wide
  (dif I)/(dif t) = alpha_1 nu W - mu_1 I, wide
  (dif R)/(dif t) = alpha_2 i W,
$

$ (dif nu) / (dif t) = -mu_nu nu + alpha_nu I - alpha_mu nu W, quad
  (dif i)/(dif t) = mu_i i + alpha_i I - alpha_3 i W 
 $

(с коэффициентыми я что-то напутал)

#align(right)[`2025-02-26`]

= математические модели механики материальной точки. второй закон ньютона. законы кеплера

условия задачи:

- камень моделируется точной
- земля плоская
- ускорение свободного падения $g="const"$

при этих условиях работает закон ньютона:

$ m overline(a) = overline(f) $

запишем в виде диффура, чтобы можно было решить. нас интересует траектория движения камня.

вводим $overline(r) = overline(r)(t) = x(t) dot overline(i) + y(t) overline(j) $

выразим $overline(a)$ через $overline(r)$

$ overline(a) = der2(overline(r)) = der2(x)(t) overline(i) + der2(y) overline(j) $

сила тяжести:

$ overline(f) = m overline(g) => der2(r) = der2(x)(t) overline(t) + der2(y)(t) overline(j) = overline(g) = -g overline(i) $

$ der2(x)(t), quad der2(y)(t) =-g, quad x(0)=0, quad y(0)=0 $

начальная скорость $v_0$, бросаем под углом $alpha$

#figure(image("image.png", width: 30%))
$ overline(v)_0, space v_0 cos alpha, space v_0 sin alpha $

условия на проивзодные:

$ der(x)(0) = v_0 cos alpha, wide der(y)(t) = v_0 sin alpha  $

= матмодели гравитационного и электростатического поля. уравнение лапласа


#bbox[закон всемирного тяготения (ньютон)][
между любыми двумя телами в пространстве действует сила притяжения, пропорцианальная их массе и обратно пропорциональная квадрту расстояния между ними
]

но почему? все думали почему? и больше всего думал лаплас. итак:

#bbox[гипотеза дальнодействия лапласа][
  наличие любого притягивающего (то есть с положительной массой) тела влечёт за собой возникновение во всём пространстве некоторой субстанции, интенсивность $u(x)$ которой в точке пространства определяется формулой

  $ u(overline(x)) = gamma m/abs(overline(x) - overline(x)_0) $

  гравитационная постоянная $gamma = 6.6732 dot 10^(-11) (Н dot м^2)/"кг"^2$
]

зная эту субстанцию, что можно определить? оказывается с помощью этой субстанции можно определить силу тяжести.

смысл субстанции $u$ заключается в том, что её знание позволяет вычислить вектор силы притяжения, действующий со стороны тело на тело единичной массы по формуле:

$ overline(f) = gradient u wide (3.3) $

$ gradient u = (diff u)/(diff x) overline(i) + (diff u)/(diff y) overline(j) + (diff u)/(diff z) overline(k) wide (3.4) $

ну это в декартовой системе координат. конечно, можно и в других системах рассматривать координаты.

для силы притяжения справебыдло принцип суперпозиции.

#bbbox[принцип суперпозиции][
  сила, создававаемая несколькими источниками

  $ (overline(x)_1, m), (overline(x)_2, m_2), dots, (overline(x)_N, m_N) $

  равна сумме сил, создаваемых этими источниками.
  $ u(x) = gamma sum_(j=1)^N m_j / abs(overline(x) - overline(x)_j) wide (3.5) $
]

обычно $u(x)$ называют #mark[потенциалом гравитационного поля].

чтобы найти диффур, надо дифференцировать $u$.

$ u_i (x) = gamma m_i 1/abs(overline(x)-overline(x)_i) $

$ r_i (x) := abs(overline(x) - overline(x)_i) $

$ (diff r_i) /(diff x) = (x - x_i) / r_i $

$ (1/r_i)_x = -1/ r_i^2 dot (diff r_i)/(diff x) = -1/r_i^3 (x-x_i) $

теперь найдём вторую производную:

$ (1/r_i)_(x x) = (-1/ r_i^3 (x - x_i))_x = -1/r_i^3 + 3/r_i^4 (diff r_i)/(diff x) (x-x_i) = -1/r_i^3 + (3(x-x_i)^2)/r_i^5 quad (3.7) $

складывая эту и аналогичные вторые производные по $y$ и $z$, мы получим:

$ laplace u = (diff^2 u)/ (diff x^2) + (diff^2 u)/(diff y^2) + (diff^2 u)/(diff z^2) = 0 wide (3.10) $

это #mark[математическая модель гравитационного поля]. это уравнение выполняется всюду, кроме той точки, где находится источник гравитационного поля.

применим схему матмоделирования.

#figure(image("image-1.png", width: 30%))

$ Omega_i, laplace u_i, overline(x)_i $

$ u_i(x) = gamma (rho(x_i) laplace V_i) / abs(x - x_i) $

поле, создаваемое всеми кусочками:

$ u(x) = gamma sum_(i=1)^N (rho(x_i) laplace V_i) / abs(x-x_i) $

предельный переход:

$ u(x) = gamma integral_Omega (rho(overline(x)) dif overline(x)) / abs(x- x_i) $

= электростатика

$phi$ потенциал электростатического поля

$ E = - gradient phi $
$ laplace phi = - rho_epsilon/(epsilon_0 epsilon) $

электрическа проницаемость

$ laplace u = -4 pi rho $

#mark[уравнение пуассона]

$ "div" overline(E) = (diff E_1)/(diff x) + (diff E_2)/(diff y) + (diff E_3)/(diff z) $

$ "rot" overline(E) = ((diff E_3)/(diff y) - (diff E_2)/(diff z)) overline(i) + ((diff E_1)/(diff z) - (diff E_3)/(diff x)) overline(j) + ((diff E_2)/(diff x) - (diff E_1)/(diff y))overline(k) $
