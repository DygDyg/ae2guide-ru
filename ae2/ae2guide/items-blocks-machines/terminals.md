---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Терминалы
  icon: crafting_terminal
  position: 210
categories:
- devices
item_ids:
- ae2:terminal
- ae2:crafting_terminal
- ae2:pattern_encoding_terminal
- ae2:pattern_access_terminal
---

# Терминалы

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminals.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Если <ItemLink id="pattern_provider" /> (МЭ поставщик шаблонов), <ItemLink id="import_bus" /> (МЭ шина импорта), <ItemLink id="storage_bus" /> (МЭ шина хранения) и другие устройства являются основным способом взаимодействия сети AE2 с миром, то терминалы — это основной способ взаимодействия сети AE2 с *вами*. Существует несколько вариантов терминалов с различными функциями.

Терминалы наследуют цвет [кабеля](cables.md), к которому они подключены.

Они являются [подчастями кабеля](../ae2-mechanics/cable-subparts.md).

## Размещение терминалов

Поскольку терминал часто является первой [подчастью](../ae2-mechanics/cable-subparts.md), которую игрок устанавливает, нередко его размещают неправильно, например, задом наперёд. Вот пример правильного и неправильного размещения:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminal_placement.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <LineAnnotation color="#ff3333" from="2.5 .5 .5" to="4.5 2.5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="2.5 2.5 .5" to="4.5 .5 .5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="-.5 2.5 .5" to="1 .5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1 .5 .5" to="1.5 1 .5" alwaysOnTop={true} thickness="0.05"/>
</GameScene>

Теперь у вас есть терминал и приёмщик энергии, но терминал установлен правильно и подключён к сети, при этом занимает меньше места.

<a name="terminal-ui"></a>

# Терминал

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

Базовый терминал, позволяющий просматривать и получать доступ к содержимому [сетевого хранилища](../ae2-mechanics/import-export-storage.md) и запрашивать предметы из вашей системы [автоматического изготовления](../ae2-mechanics/autocrafting.md).

## Интерфейс

Интерфейс базового терминала состоит из нескольких секций:

Центральная секция предоставляет доступ к сетевому хранилищу. Вы можете помещать и забирать предметы. Доступны следующие сочетания клавиш и мыши:

* ЛКМ забирает полный стак, ПКМ — половину стака.
* Если предмет, жидкость или что-то ещё может быть [автоматически изготовлено](../ae2-mechanics/autocrafting.md), нажатие клавиши, привязанной к "выбор блока" (обычно средняя кнопка мыши), открывает интерфейс для указания количества для изготовления. Можно вводить формулы, например, `3*64/2`, или `=32`, чтобы изготовить ровно столько предметов, чтобы в хранилище было 32.
* Удержание Shift фиксирует отображаемые предметы, предотвращая их переупорядочивание при изменении количества или добавлении новых предметов.
* ПКМ с вёдрами или другими контейнерами для жидкостей вносит жидкость в хранилище, ЛКМ на жидкости в терминале с пустым контейнером извлекает её.

Левая секция содержит кнопки настроек для:

* Сортировки по различным атрибутам: название, мод, количество.
* Отображения хранимых, изготавливаемых или обоих видов предметов.
* Отображения предметов, жидкостей или обоих.
* Изменения порядка сортировки.
* Открытия окна подробных настроек терминала.
* Изменения высоты интерфейса терминала.

Справа расположены слоты для <ItemLink id="view_cell" /> (Ячейка просмотра).

В правом верхнем углу центральной секции (кнопка с молотком) открывается интерфейс статуса [автоматического изготовления](../ae2-mechanics/autocrafting.md), позволяющий видеть прогресс заданий и действия каждого [ЦП изготовления](crafting_cpu_multiblock.md).

## Рецепт

<RecipeFor id="terminal" />

<a name="crafting-terminal-ui"></a>

# Терминал изготовления

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/crafting_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

Терминал изготовления похож на обычный терминал, с теми же настройками и секциями, но с добавленной сеткой для крафта, которая автоматически заполняется из [сетевого хранилища](../ae2-mechanics/import-export-storage.md). Будьте осторожны при использовании Shift+ЛКМ на результате крафта!

Рекомендуется как можно скорее улучшить ваш терминал до терминала изготовления.

## Интерфейс

Интерфейс терминала изготовления аналогичен обычному терминалу, но включает сетку для крафта в центре.

Добавлены две дополнительные кнопки для очистки сетки крафта, перемещая предметы в сетевое хранилище или в инвентарь игрока.

## Рецепт

<RecipeFor id="crafting_terminal" />

<a name="pattern-encoding-terminal-ui"></a>

# Терминал для закодированных шаблонов

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_encoding_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

Терминал для закодированных шаблонов похож на обычный терминал, с теми же настройками и секциями, но с добавленным интерфейсом для кодирования [шаблонов](patterns.md). Он выглядит похожим на интерфейс терминала изготовления, но сетка крафта не выполняет изготовление.

Рекомендуется иметь такой терминал в дополнение к терминалу изготовления.

## Интерфейс

Интерфейс терминала для закодированных шаблонов включает те же элементы, что и обычный терминал, плюс интерфейс кодирования [шаблонов](patterns.md).

Интерфейс кодирования состоит из нескольких секций:

* Слот для вставки <ItemLink id="blank_pattern" /> (Пустой шаблон).
* Большая стрелка для кодирования шаблона.
* Слот для закодированных шаблонов. Поместите уже закодированный шаблон в этот слот для редактирования, затем нажмите на стрелку "закодировать".
* Четыре вкладки справа для переключения типа кодируемого шаблона:
  * Изготовление
  * Обработка
  * Кузнечный стол
  * Камнерезный станок

Центральный интерфейс изменяется в зависимости от типа кодируемого шаблона:

* В режиме изготовления:
  * ЛКМ или перетаскивание из JEI/REI добавляет ингредиенты для рецепта. ПКМ удаляет ингредиент.
  * Включение замещений позволяет использовать, например, палки из любого типа досок. Используйте только при необходимости.
  * Замещение жидкостей позволяет использовать хранимые жидкости вместо вёдер.
  * Можно напрямую закодировать шаблон из экрана рецепта JEI/REI.

* В режиме обработки:
  * ЛКМ или ПКМ, а также перетаскивание из JEI/REI задают входные и выходные данные рецепта.
  * ПКМ с контейнером для жидкостей (например, ведро или резервуар) задаёт жидкость как ингредиент вместо самого контейнера.
  * При удержании стака ЛКМ размещает весь стак, ПКМ — один предмет. ЛКМ на существующем ингредиенте удаляет весь стак, ПКМ уменьшает его на 1. Клавиша "выбор блока" (обычно средняя кнопка мыши) позволяет точно указать количество предмета или жидкости.
  * Слоты выхода имеют основной выход и место для дополнительных вторичных выходов, которые учитываются алгоритмом автоматического изготовления.
  * Слоты входа и выхода прокручиваются, поддерживая до 81 ингредиента и 26 вторичных выходов.
  * Можно напрямую закодировать шаблон из экрана рецепта JEI/REI.

* Режимы кузнечного стола и камнерезного станка работают аналогично соответствующим столам.

## Рецепт

<RecipeFor id="pattern_encoding_terminal" />

<a name="pattern-access-terminal-ui"></a>

# Терминал доступа к шаблонам

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_access_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

Терминал доступа к шаблонам решает конкретную проблему: в плотной башне из <ItemLink id="pattern_provider" /> (МЭ поставщик шаблонов) и <ItemLink id="molecular_assembler" /> (Молекулярный сборщик) физически невозможно получить доступ к поставщикам для вставки новых шаблонов. Кроме того, возможно, вы не хотите ходить через всю базу для добавления [шаблона](patterns.md). Этот терминал позволяет получить доступ ко всем поставщикам шаблонов в сети.

## Интерфейс

Интерфейс этого терминала отличается от остальных.

Он включает настройки высоты терминала и выбора отображаемых поставщиков шаблонов.

Каждая строка в терминале соответствует конкретному поставщику шаблонов.

Поставщики шаблонов сортируются по блокам, к которым они подключены, или по имени, заданному в наковальне или с помощью <ItemLink id="name_press" /> (Именующий печать для вырезателя).

## Рецепт

<RecipeFor id="pattern_access_terminal" />