---
## Front matter
title: "Лабораторная работа номер 2."
subtitle: "Система контроля версий Git"
author: "Сорокин Кирилл Васильевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Понять суть средств контроля версии и с
полученными знаниями приобрести навыки работы с
системой git.

# Задание

Ознакомиться с идеей контроля версии и научиться
работать с git.

# Теоретическое введение

Системы контроля версий (Version Control System, VCS) применяются при работе нескольких человек над одним проектом. Обычно основное дерево проекта хранится в локальном или удалённом репозитории, к которому настроен доступ для участников проекта. При внесении изменений в содержание проекта система контроля версий позволяет их фиксировать, совмещать изменения, произведённые разными участниками проекта, производить откат к любой более ранней версии проекта, если это требуется.

# Выполнение лабораторной работы

Создаём аккаунт на сайте https://github.com/ (рис. @fig:001).

![Профиль Github](image/2023-10-1214-45-39.png){#fig:001 width=70%}

Сделаем предварительную конфигурацию git, настоим UTF-8, зададим начальное имя ветки параметры autocrlf и safecrlf (рис. @fig:002).

![Команды для настройки git](image/2023-10-1214-45-53.png){#fig:002 width=70%}

Для работы с репозиторием сгенерируем SSH ключ (рис. @fig:003).

![Генерация ключей](image/2023-10-1214-46-08.png){#fig:003 width=70%}

Скопируем ключ командой cat (рис. @fig:004).

![Копирование ключа](image/2023-10-1214-46-18.png){#fig:004 width=70%}

Введём SSH ключ в Github (рис. @fig:005).

![Ключ на Github](image/2023-10-1214-46-31.png){#fig:005 width=70%}

Создадим папки для копирования репозитория (рис. @fig:006).

![Создания папок](image/2023-10-1214-46-46.png){#fig:006 width=70%}

Скопируем репозиторий командой clone (рис. @fig:007).

![Копирование репозитория](image/2023-10-1214-47-01.png){#fig:007 width=70%}

Удалим ненужный файл командой rm (рис. @fig:008).

![Удаление](image/2023-10-1214-47-12.png){#fig:008 width=70%}

Добавим изменения в commit (рис. @fig:009).

![Добавление изменений](image/2023-10-1214-47-23.png){#fig:009 width=70%}

Выгрузим все изменения в наш проект командой push (рис. @fig:010).

![Выгрузка изменений](image/2023-10-1214-47-35.png){#fig:010 width=70%}

# Выводы

В ходе лабораторной работы мы изучили идеологию и применение средств контроля версий и научились работать с git.

# Список литературы{.unnumbered}

1. GDB: The GNU Project Debugger. — URL: https://www.gnu.org/software/gdb/.
2. GNU Bash Manual. — 2016. — URL: https://www.gnu.org/software/bash/manual/.
3. Midnight Commander Development Center. — 2021. — URL: https://midnight-commander.org/.
4. NASM Assembly Language Tutorials. — 2021. — URL: https://asmtutor.com/.
5. Newham C. Learning the bash Shell: Unix Shell Programming. — O’Reilly Media, 2005. — 354 с. — (In a Nutshell). — ISBN 0596009658. — URL: http://www.amazon.com/Learningbash- Shell-Programming-Nutshell/dp/0596009658.
6. Robbins A. Bash Pocket Reference. — O’Reilly Media, 2016. — 156 с. — ISBN 978-1491941591.
7. The NASM documentation. — 2021. — URL: https://www.nasm.us/docs.php.
8. Zarrelli G. Mastering Bash. — Packt Publishing, 2017. — 502 с. — ISBN 9781784396879.
9. Колдаев В. Д., Лупин С. А. Архитектура ЭВМ. — М. : Форум, 2018.
10. Куляс О. Л., Никитин К. А. Курс программирования на ASSEMBLER. — М. : Солон-Пресс, 2017.
11. Новожилов О. П. Архитектура ЭВМ и систем. — М. : Юрайт, 2016.
12. Расширенный ассемблер: NASM. — 2021. — URL: https://www.opennet.ru/docs/RUS/nasm/.
13. Робачевский А., Немнюгин С., Стесик О. Операционная система UNIX. — 2-е изд. - БХВПетербург, 2010. — 656 с. — ISBN 978-5-94157-538-1.
14. Столяров А. Программирование на языке ассемблера NASM для ОС Unix. — 2-е изд. — М. : МАКС Пресс, 2011. — URL: http://www.stolyarov.info/books/asm_unix.
15. Таненбаум Э. Архитектура компьютера. — 6-е изд. — СПб. : Питер, 2013. — 874 с. — (Классика Computer Science).
16. Таненбаум Э., Бос Х. Современные операционные системы. — 4-е изд. — СПб. : Питер,
2015. — 1120 с. — (Классика Computer Science).
