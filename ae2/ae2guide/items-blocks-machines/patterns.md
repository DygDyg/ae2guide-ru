---
navigation:
  parent: items-blocks-machines-index.md
  title: Шаблоны
  icon: crafting_pattern
  position: 410
categories:
- tools
item_ids:
- ae2:blank_pattern
- ae2:crafting_pattern
- ae2:processing_pattern
- ae2:smithing_table_pattern
- ae2:stonecutting_pattern
---

# Шаблоны

<ItemImage id="crafting_pattern" scale="4" />

Шаблоны создаются в <ItemLink id="pattern_encoding_terminal" /> из пустых шаблонов и вставляются в <ItemLink id="pattern_provider" /> или <ItemLink id="molecular_assembler" />.

Существует несколько типов шаблонов для разных целей:

* <ItemLink id="crafting_pattern" /> кодируют рецепты, создаваемые на верстаке. Их можно поместить непосредственно в <ItemLink id="molecular_assembler" />, чтобы он создавал результат при наличии ингредиентов, но основное использование — в <ItemLink id="pattern_provider" /> рядом с молекулярным сборщиком. В этом случае МЭ поставщики шаблонов имеют особое поведение и отправляют соответствующий шаблон вместе с ингредиентами в соседние сборщики. Поскольку сборщики автоматически выталкивают результаты крафта в соседние инвентари, сборщик на МЭ поставщике шаблонов — это всё, что нужно для автоматизации шаблонов крафта.

***

* <ItemLink id="smithing_table_pattern" /> очень похожи на шаблоны крафта, но кодируют рецепты кузнечного стола. Они также автоматизируются с помощью МЭ поставщика шаблонов и молекулярного сборщика и работают точно так же. На самом деле шаблоны крафта, кузнечного стола и камнереза могут использоваться в одной установке.

***

* <ItemLink id="stonecutting_pattern" /> очень похожи на шаблоны крафта, но кодируют рецепты камнереза. Они также автоматизируются с помощью МЭ поставщика шаблонов и молекулярного сборщика и работают точно так же. На самом деле шаблоны крафта, кузнечного стола и камнереза могут использоваться в одной установке.

***

* <ItemLink id="processing_pattern" /> обеспечивают большую гибкость в автокрафте. Это наиболее обобщённый тип, который просто указывает: "если МЭ поставщик шаблонов отправляет эти ингредиенты в соседние инвентари, система МЭ получит эти предметы в ближайшем или далёком будущем". Они используются для автокрафта с большинством модифицированных машин, печей и т.д. Поскольку они очень обобщены и не заботятся о том, что происходит между отправкой ингредиентов и получением результата, с ними можно делать весьма необычные вещи, например, отправлять ингредиенты в целую сложную производственную цепочку, которая сортирует предметы, принимает другие ингредиенты из бесконечно производящих ферм, печатает весь сценарий фильма "Би Муви", — системе МЭ всё равно, главное, чтобы она получила результат, указанный в шаблоне. Более того, ей даже не важно, связаны ли ингредиенты с результатом. Вы можете указать, что "1 доска из вишнёвого дерева = 1 незер-звезда", и если ваша ферма визеров убьёт визера при получении доски, это сработает.

Несколько <ItemLink id="pattern_provider" /> с одинаковыми шаблонами поддерживаются и работают параллельно. Кроме того, вы можете, например, указать в шаблоне, что 8 булыжников = 8 камней вместо 1 булыжник = 1 камень, и МЭ поставщик шаблонов будет вставлять 8 булыжников в вашу плавильную установку за одну операцию вместо одного за раз.

## Рецепт

<RecipeFor id="blank_pattern" />