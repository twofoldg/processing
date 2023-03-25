- Агент - система, която може да оперира автономно в някаква околна среда (недетерминирани);
- Интелигентен агент - система, която може да оперира гъвкаво(реактивност, проактивност, социалност) и автономно (някакъв контрол в/у действията си/ върешните си състояния) в някаква околна среда за постигане на набелязани цели.
  - Реактивност - Агентите възприемат околната си среда и поддържат непрекъсната връзка.(Физическия свят, gui, интернет, други агенти, всичко от това). Реагират на промените, които настъпват в средата.
  - Проактивност - поведение посредством поемане на инициетива. Генериране и опитване да се постигнат цели.
- Дефиниция за агент
  - Слаба дефиниция: Автономност, реактивност, проактивност, социалност.
  - Строга дефиниция: Авотномост, реактивност, проактивност, социалност, мобилност, правдивост, доброжелателност, рационалност.
- Два вида разсъждения: Теоритични (вяра), Практически (действия).
- Разсъжения: Обмисляне и планиране
- BDI - Beliefs/Desires/Intentions - Michael Georgeff
- PRS - Procedural Reasoning System  - M.G & A. Lansky - първата агентна архитектура.

- Агенти с цели - имат в предвид бъдещи действия
- АРП - Агент за разрешаване на проблеми - използват атомарни представяния.
- ПА - Планиращи агенти - Агенти с цели, които използват разширени факторизирани или структурирани представяния на състоянията
- Допускания за средата:
  - Наблюдаема - агентът винаги знае актуалното състояние
  - Дискретна - всяко състояние има краен брой действия
  - Позната - агентът знае кои състояния се достигат при извършване на действията
  - Детерминирана - всяко действие поражда един и същ резултат
- Отворен цикъл - По време на изпълнение на последователността от действия, предписани в решението, един АРП игнорира възприятията
- Проблем - компоненти
  - Начално състояние (НС) - състоянието в което започва търсенето
  - Възможни действия (ВД) - Actions - Операции, които извърша един АРП
  - Модел на преходите (МП) - Results - Описание на това, което предизвиква всяко действие
  - Целеви тест (ЦТ) - Решава дали едно актуално състояние е целево
    - Явно - множество от целеви състояния - Проверява дали актуалното е елемент от това множество
    - Неявно - като абстрактно свойство
  - Функция на разходите за път (ФРП) - c(s,a,s`)
  - Пространство на състоянията (ПС) - Дефинира се от НС, ВД, МП - насочена мрежа или граф:
    - Възли - състояния
    - Ребра - действия
    - Път - последователност от състояния, свързани с последователност от действия
- Решение на проблем - Последователност от действия водещи от НС до целевото състояние. Измерва се на основата на функцията за разходи на път. Избира се решението с най-малко разходи.
- Формулиране на проблем - Абстракция
- Проблеми с комплексността:
  - Недостатъчна памет за пространството на състоянията
  - Разходи за разпознаване на повторенията

- Обща характеристика на търсене:
  - Започва от началното състояние
  - Разширяване на актуалното състояние
    - прилагане на всяко възможно действие
    - генериране на множество състояния
    - въвеждаме нови ребра в дървото на търсене
  - Същност на търсенето - една опция се проследява по-нататък, докато другите се оставят за следващо проследяване, ако първото не доведе до решение
- Гранични възли - Множеството на всички възли, налични за разширение в определен момент от процеса на търсене. Разширяването на граничните възли продължава дотогава, докато е намерено решение или няма повече състояние за разширяване.
- Tree-search - Това е обща генетична структура за всички алгоритми за търсене.
  - Циклични пътища - Цикличните пътища правят пълното дърво на търсене безкрайно. Цикличните пътища са специален случай на общата концепция за излишни пътища - съществуват, когато има повече от един път.
- Graph-search - Конструираното дърво на търсене съдържа максимално по един екземпляр за всяко състояние. 
  - границата е един разделител:
    - Изследвани състояния
    - Неизследвани състояни
  - Структура:
    - n.State: състояние в ПС, кореспондиращо на възела;
    - n.Parent: възел в ПС, генерирал актуалния възел;
    - n.Action: действие, приложено в родителския възел за генериране на настоящия;
    - n.Path-Cost: разходи от началното състояние до възела, даден чрез указателя на родителския възел (обикновено означаваме с g(n))
- Възли и състояния:
  - Възел: управляваща структура за представяне дървото на търсене. Възлите са разположени в/у определени пътища.
  - Състояние: Кореспондира с конфигурации в света. Не се разполагат в/у пътища.
  - Два различни възела могат да съдържат едно и също състояние, когато това състояние е генерирано през два различни пътя за търсене.
- Критерии за оценяване на стратегиите
  - Коректност - Ако съществува решение ще го намери
  - Времева комплексност - изразходвано време за намиране на решение
  - Пространствена комплексност - Необходима памет за намиране на решение
  - Оптималност - намира най-доброто от възможните решения
- Евристично (Информирано) търсене
  - Търсенето, използващо оценъчна функция се нарича първо най-добро търсене
  - Подходи:
    - Лакомо търсене - Опитва да разшири възела, който е най-близко до целта
    - “Евристично търсене на най-добрия път A* - питва да разшири възела, лежащ на пътя в най-малко разходи 
- Лакомо търсене 
  - Един от най-простите методи
  - Възелът, който е оценен като най-близък до целта се разширява първо
  - Оценъчната функция се нарича евристична или евристика
  - прави най-голямата възможна стъпка за достигане целта без да се безпокои дали това е най-доброто
  - Недостатъци:
    - Податлив на грешен старт
    - Не винаги оптимален
    - Може да доведе до безкраен цикъл
- Да предположим, че съществуват две евристични функции h1 и h2  - h1 <= h2 - h2 е по-ефективна
- Локално търсене - когато не ни интересува пътя
  - Един единствен актуален възел
  - Движи се само към съседите на този възел
  - Не съхранява пътя
  - Не е систематичен:
    - необходима е малко памет
    - може да намери смислени решения в големи(безкрайни) пространства
  - Използват се за решаване на оптимизационни проблеми
  - Основни такива алгоритми:
    - "катерача" - само нагоре(никой съсед няма по-голяма стойност). Гарантирано непълен метод
       - стохастичен - избира случайно движение нагоре
       - с първи избор - случайно генериране, докато се генерира по-добър
       - случаен нов старт
    - симулирано закаляване - пълен метод, но неефективен. За пълнота и ефективност. Комбиниране на 2 метода.
    - локално търсене в лъчи - използва k състояния, вместо 1. На всяка стъпка се генерират всичките k наследници.
    - генетични алгоритми

208
