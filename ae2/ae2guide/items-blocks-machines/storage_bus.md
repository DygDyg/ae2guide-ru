---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: МЭ шина хранения
  icon: storage_bus
  position: 220
categories:
- devices
item_ids:
- ae2:storage_bus
---

# МЭ шина хранения

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/storage_bus.snbt" />
</GameScene>

Хотите сохранить свой "сундук-монстр" вместо замены на что-то более разумное? Представляем МЭ шину хранения!

Шина хранения превращает инвентарь, к которому она подключена, в [сетевое хранилище](../ae2-mechanics/import-export-storage.md). Она позволяет сети видеть содержимое этого инвентаря и перемещать предметы в него или из него для выполнения операций [устройств](../ae2-mechanics/devices.md), работающих с сетевым хранилищем.

Благодаря философии AE2, основанной на взаимодействии функций [устройств](../ae2-mechanics/devices.md), шину хранения можно использовать не только для хранения. Используя [подсети](../ae2-mechanics/subnetworks.md), можно сделать шину хранения (или несколько шин) единственным хранилищем в сети, используя её как источник или пункт назначения для передачи предметов (см. ["Подсеть труб"](../example-setups/pipe-subnet.md)).

Они являются [подчастями кабеля](../ae2-mechanics/cable-subparts.md).

## Фильтрация

По умолчанию шина хранит всё. Предметы, помещённые в слоты фильтра, действуют как белый список, позволяя хранить только указанные предметы.

Предметы и жидкости можно перетаскивать в слоты из JEI/REI, даже если у вас нет этих предметов.

ПКМ с контейнером для жидкостей (например, ведро или резервуар) задаёт жидкость как фильтр вместо самого контейнера.

## Приоритет

Приоритеты устанавливаются нажатием на гаечный ключ в правом верхнем углу интерфейса. Предметы, поступающие в сеть, сначала направляются в хранилище с наивысшим приоритетом. Если два хранилища имеют одинаковый приоритет, предметы предпочтут хранилище, уже содержащее этот предмет. Отфильтрованные хранилища считаются содержащими предмет при одинаковом приоритете. При извлечении предметы забираются из хранилища с наименьшим приоритетом. Эта система приоритетов означает, что при добавлении и удалении предметов из сетевого хранилища высокоприоритетные хранилища заполняются, а низкоприоритетные опустошаются.

## Настройки

* Шину можно разделить (отфильтровать) по текущему содержимому соседнего инвентаря.
* Сеть можно настроить так, чтобы она видела или не видела предметы в соседнем инвентаре, которые шина не может извлечь (например, шина не может извлечь предметы из центрального входного слота <ItemLink id="inscriber" /> (Вырезатель)).
* Шина может фильтровать как при вставке, так и при извлечении или только при вставке.
* Шина может быть двунаправленной, только для вставки или только для извлечения.

## Улучшения

Шина хранения поддерживает следующие [улучшения](upgrade_cards.md):

* <ItemLink id="capacity_card" /> (Карта вместимости) увеличивает количество слотов фильтра.
* <ItemLink id="fuzzy_card" /> (Карта размытости) позволяет фильтровать по уровню повреждений и/или игнорировать NBT предметов.
* <ItemLink id="inverter_card" /> (Карта-инвертер) переключает фильтр с белого списка на чёрный.
* <ItemLink id="void_card" /> (Пустотная карта) уничтожает предметы, если подключённый инвентарь заполнен. Полезно для предотвращения переполнения ферм. Обязательно настройте разделение!

## Рецепт

<RecipeFor id="storage_bus" />