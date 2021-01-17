How-to:

- priority nicht 3400 oder höher
- in jeder datei "import crafttweaker.item.IItemStack;" (ohne "")
- je nach dem was benutzt wird, "import scripts.functions.extended_crafting." + combination/compression/ender/table (; nicht vergessen)
- bei mehreren arrays pro Datei müssen die Namen der Arrays geändert werden
- Beispiele zeigen immer ein Rezept, bei mehreren Rezepten ein , an Entsprechender Stelle setzen, bsp kann nach dem input eines Rezepten ein , wonach ein neues Input Array deklariert werden kann. Selbes geht auch nach Output oder Strom.
- vorlagen:

	combination:

		static add as ItemStack[][IItemStack][IItemStack][[int]] = {
			[1000, 100]:{		//RfCost, RfRate -> cost gesamte rf, rate rf/t; rate optional, wenn nicht bestimmt wird das default der Config verwendet
				<minecraft:diamond>:{		//Output item, für mehrere <item> * Anzahl verwenden
					<minecraft:coal_block>:[		//Center input, <item> * Anzahl nicht möglich, muss in die Mitte des Altars
						[<minecraft:coal>, <minecraft:coal>]		//Pedestal Items, <item> * Anzahl nicht möglich, kann bis zu 48 Einträge haben
					]
				}
			}
		};

		static remove as IItemStack[] = [
			<minecraft:dirt>		//Items deren Rezepte für Combination-Crafting entfernt werden sollen.
		];

		//Funktions-Calls, damit die Rezepte des Arrays verarbeitet werden
		combination.remove(remove);
		combination.add(add);


		compression(Quantum Compressor): 

		static add as int[IItemStack][IItemStack][IItemStack][[int]] = {
			[1000, 100]:{		//RfCost, RfRate -> cost gesamte rf, rate rf/t; rate optional, wenn nicht bestimmt wird das default der Config verwendet
				<extendedcrafting:material:14>:{		//Catalyst im Compressor; material 14 - 19 sind die Catalysten der Mod, aber jedes Item sollte gehen
					<minecraft:diamond>:[		//Output item, für mehrere <item> * Anzahl verwenden
						<minecraft:coal>:10		//Input Item und Anzahl, item * Anzahl wäre technisch möglich würde aber mehr Rechenleistung beim Laden des Packs brauchen, wodurch dies länger dauern würde.
					]
				}
			}
		};

		static remove as IItemStack[] = [
			<minecraft:dirt>		//Items deren Rezepte für Combination-Crafting entfernt werden sollen.
		];

		compression.remove(remove);
		compression.add(add);


		ender:

		static shaped as IItemStack[][][IItemStack][int] = {
			120:{		//Zeit, wie lange das Rezept braucht, in sec
				<minecraft:diamond>:[		//Output item, geht wie sonst auch
					[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],
					[<minecraft:coal>, <minecraft:coal_block>, <minecraft:coal>],
					[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]
					//Input Array, 3x3 Feld des Ender Crafter
				]
			}
		};

		static shapeless as IItemStack[][IItemStack][int] = {
			120:{		//Zeit, wie lange das Rezept braucht, in sec
				<minecraft:diamond>:[		//Output item, geht wie sonst auch
					<minecraft:coal_block>, <minecraft:coal>, <minecraft:coal>
					//Input Array
				]
			}
		};

		static remove as IItemStack[] = [
			<minecraft:dirt>
		];

		ender.remove(remove);
		ender.addShaped(shaped);
		ender.addShapeless(shapeless);


		table:

		static shaped as IItemStack[][][IItemStack][int] = {
			0:{		//Table Tier, 1 = Basic, 2 = Advanded, 3 = Elite, 4 = Ultimate; 0 für alle Tische in die das Rezept passt
				<minecraft:diamond>:{		//Output
					[<minecraft:coal_block>, <minecraft:coal>],
					[<minecraft:coal>, null]		//Input Array, bis zu 9 [] mit jeweils 9 Items
				}
			}
		};

		static shapeless as IItemStack[][IItemStack][int] = {
			0:{		//Table Tier, 1 = Basic, 2 = Advanded, 3 = Elite, 4 = Ultimate; 0 für alle Tische in die das Rezept passt
				<minecraft:diamond>:[		//Output
					<minecraft:coal_block>, <minecraft:coal>		//Input Array, bis zu 81 Items
				]
			}
		};

		static remove as IItemStack[] = {
			<minecraft:dirt>
		};

		table.remove(remove);
		table.addShaped(shaped);
		table.addShapeless(shapeless);
