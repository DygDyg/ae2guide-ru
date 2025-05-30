---
navigation:
  title: Начало работы (1.20+)
  position: 10
---

<div class="notification is-info">
  Следующая информация применима только к Applied Energistics 2 в Minecraft 1.20 и новее.
</div>

# Начало работы

## Получение начальных материалов

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/meteor_interior.snbt" />
</GameScene>

Чтобы начать использовать Applied Energistics 2, сначала нужно найти [метеорит](ae2-mechanics/meteorites.md). Они довольно распространены и оставляют огромные кратеры в земле, так что, возможно, вы уже сталкивались с одним во время путешествий. Если нет, вы можете изготовить <ItemLink id="meteorite_compass" />, который укажет на ближайший <ItemLink id="mysterious_cube" />.

Найдя метеорит, проберитесь к его центру. Там вы найдёте друзы истинного кварца, бутоны истинного кварца, [цветущие блоки истинного кварца](items-blocks-machines/budding_certus.md) различных типов и таинственный куб в центре.

Добывайте друзы истинного кварца и любые блоки истинного кварца, которые найдёте. Вы также можете забрать цветущие блоки истинного кварца, но без зачарования "Шёлковое касание" они понизятся на один уровень.

Не разрушайте безупречные цветущие блоки истинного кварца, так как даже с "Шёлковым касанием" они понизятся до потрескавшихся, и восстановить их до безупречных невозможно.

Также добудьте таинственный куб в центре метеорита, чтобы получить все 4 печати для вырезателя.

## Выращивание истинного кварца

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_1.snbt" />
</GameScene>

Бутоны истинного кварца растут на [цветущих блоках истинного кварца](items-blocks-machines/budding_certus.md), подобно аметисту. Если вы разрушите бутон, который ещё не полностью вырос, он даст одну <ItemLink id="certus_quartz_dust" />, и зачарование "Удача" на это не влияет. Если вы разрушите полностью выросшую друзу, она даст четыре <ItemLink id="certus_quartz_crystal" />, и зачарование "Удача" увеличит это количество.

Существует 4 уровня цветущих блоков истинного кварца: безупречный, потрескавшийся, треснувший и повреждённый.

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_blocks.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Каждый раз, когда бутон вырастает на следующую стадию, цветущий блок может понизиться на один уровень, в конечном итоге превращаясь в обычный блок истинного кварца. Их можно восстановить (или создать новые цветущие блоки), поместив цветущий блок (или блок истинного кварца) в воду с одним или несколькими <ItemLink id="charged_certus_quartz_crystal" />.

<RecipeFor id="damaged_budding_quartz" />

Безупречные цветущие блоки истинного кварца не портятся и будут бесконечно производить истинный кварц. Однако их нельзя изготовить или переместить с помощью кирки, даже с "Шёлковым касанием". (Но их *можно* переместить с помощью [пространственного хранилища](ae2-mechanics/spatial-io.md).)

Сами по себе бутоны истинного кварца растут очень медленно. К счастью, <ItemLink id="growth_accelerator" /> значительно ускоряет этот процесс, если разместить его рядом с цветущим блоком. Создание нескольких таких ускорителей должно быть вашим первым приоритетом.

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_2.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Если у вас недостаточно кварца для создания <ItemLink id="energy_acceptor" /> или <ItemLink id="vibration_chamber" />, вы можете изготовить <ItemLink id="crank" /> и установить его на конец ускорителя.

Автоматический сбор истинного кварца [описан здесь](example-setups/simple-certus-farm.md).

## Кратко о флюисе

Ещё один материал, который вам понадобится, — это флюис, с которым вы уже столкнулись при создании ускорителей роста. Его получают, бросая заряженный истинный кварц, редстоун и незер-кварц в воду. Автоматизация этого процесса "оставлена в качестве упражнения для читателя".

Для создания <ItemLink id="charged_certus_quartz_crystal" /> требуется <ItemLink id="charger" />, если вы ещё не изготовили его.

## Изготовление процессоров

Во время добычи метеорита вы нашли четыре "печати" из таинственного куба. Они используются в <ItemLink id="inscriber" /> для создания трёх типов процессоров.

<ItemGrid>
  <ItemIcon id="silicon_press" />
  <ItemIcon id="logic_processor_press" />
  <ItemIcon id="calculation_processor_press" />
  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

Вырезатель — это машина с разделёнными сторонами, подобно ванильной печи. Вставка сверху или снизу помещает предметы в верхний или нижний слот, а вставка сбоку или сзади — в центральный слот. Результаты можно извлечь сбоку или сзади.

Для упрощения автоматизации с воронками (и, возможно, уменьшения путаницы с трубами) вырезатели можно поворачивать с помощью <ItemLink id="certus_quartz_wrench" />.

Создайте несколько процессоров каждого типа, чтобы подготовиться к следующему шагу — созданию базовой МЭ-системы. Автоматизация производства процессоров "оставлена в качестве упражнения для читателя".

## Технология материи и энергии: МЭ-сети и хранилища

### Что такое МЭ-хранилище?

Оно произносится как "Эм-Эй" и расшифровывается как "Материя и Энергия".

Материя и Энергия — это основная составляющая Applied Energistics 2, это как безумная научная версия многоблочного сундука, которая может кардинально изменить ситуацию с хранением. МЭ сильно отличается от других систем хранения в Minecraft, и может потребоваться немного нестандартного мышления, чтобы привыкнуть к ней. Но как только вы начнёте, огромное количество хранилища в компактном пространстве и несколько терминалов доступа — это лишь вершина айсберга возможностей.

### Что нужно знать для начала?

Во-первых, МЭ хранит предметы внутри других предметов, называемых [МЭ камеры хранения](items-blocks-machines/storage_cells.md). Существует 5 уровней с увеличивающимся объёмом хранения. Чтобы использовать камеру хранения, её нужно поместить либо в <ItemLink id="chest" />, либо в <ItemLink id="drive" />.

<ItemLink id="chest" /> показывает содержимое камеры, как только она помещена внутрь, и вы можете добавлять и извлекать предметы, как если бы это был <ItemLink id="minecraft:chest" />, с той разницей, что предметы хранятся в камерах хранения, а не в самом <ItemLink id="chest" />.

Хотя <ItemLink id="chest" /> — отличный способ познакомиться с концепцией МЭ, чтобы по-настоящему использовать её преимущества, нужно настроить [МЭ-сеть](ae2-mechanics/me-network-connections.md).

## Ваша первая МЭ-система

Теперь, когда у вас есть все базовые материалы и машины для Applied Energistics 2, вы можете создать свою первую МЭ (Материя и Энергия) систему. Это будет очень простая система, без автокрафта и логистики, просто удобное, доступное для поиска хранилище.

<GameScene zoom="6" interactive={true}>
<ImportStructure src="assets/assemblies/tiny_me_system.snbt" />
</GameScene>

* Список ингредиентов:
    * 1x <ItemLink id="drive" />
    * 1x <ItemLink id="terminal" /> или <ItemLink id="crafting_terminal" />
    * 1x <ItemLink id="energy_acceptor" />
    * Несколько [кабелей](items-blocks-machines/cables.md), стеклянных, покрытых или умных, но не плотных.
    * Несколько [МЭ камер хранения](items-blocks-machines/storage_cells.md), рекомендуется 4К для хорошего баланса вместимости и типов (было бы эффективнее [разделить](items-blocks-machines/cell_workbench.md) смесь 4К и 1К, но это сложность, в которую мы сейчас не будем углубляться).
---
1. Установите МЭ-дисковод.
2. Приёмщик энергии (и некоторые другие [устройства](ae2-mechanics/devices.md) AE2) имеет два режима: куб и плоский. Их можно переключать в сетке крафта. Если ваш приёмщик энергии — куб, установите его рядом с дисководом. Если это плоский квадрат, установите кабель на дисковод и поместите приёмщик на него.
3. Подведите энергию к приёмщику энергии с помощью кабеля/трубы/провода от вашего любимого мода генерации энергии.
4. Установите кабель на верхнюю часть дисковода (или на уровне глаз) и поместите на него терминал или терминал изготовления.
5. Вставьте МЭ камеры хранения в дисковод.
6. Получайте выгоду.
7. Поэкспериментируйте с настройками терминала.
8. Наслаждайтесь своей невероятной мощью и возможностями.
9. Осознайте, что эта сеть, в общем масштабе, довольно мала.

### Расширение вашей сети

Итак, у вас есть базовое хранилище и доступ к нему, это хороший старт, но, вероятно, вы захотите автоматизировать некоторые процессы.

Отличный пример — установить <ItemLink id="export_bus" /> на верхнюю часть печи, чтобы загружать руды, и <ItemLink id="import_bus" /> на нижнюю часть печи, чтобы извлекать переплавленные руды.

<ItemLink id="export_bus" /> позволяет экспортировать предметы из сети в присоединённый инвентарь, а <ItemLink id="import_bus" /> импортирует предметы из присоединённого инвентаря в сеть.

### Преодоление ограничений

На этом этапе у вас, вероятно, около 8 [устройств](ae2-mechanics/devices.md). Как только их станет 9, вам придётся начать управлять [каналами](ae2-mechanics/channels.md). Многие, но не все устройства требуют канал для работы.

По умолчанию сеть поддерживает 8 каналов. Как только вы превысите этот лимит, вам нужно будет добавить <ItemLink id="controller" /> в вашу сеть. Это значительно расширит вашу сеть. [Умные кабели](items-blocks-machines/cables.md) позволят вам видеть, как распределяются каналы в вашей сети. Используйте их активно на начальном этапе, чтобы понять, как работают каналы, или если у вас много редстоуна и светопыли.