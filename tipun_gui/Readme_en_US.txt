Tipun's User Interface for Enhanced Edition Games(SoD, BG2EE, EET)
				   Version v2.1.1
			   http://www.arcanecoast.ru


Contents

1. Introduction
2. Installation
2.1. Installation order
3. Credits
4. Version History
5. Legal Information

----------------
1. Introduction
----------------

The mod changes the user interface in Baldur's Gate Siedge of Dragonspear, Baldur's Gate II Enhanced Edition and Enhanced Edition Trilogy.

Main interface changes:
1.1. Character record
	XP progressbars now start from the beginning when leveling up
	Character stats are now divided into groups and each group can be hidden or shown. +/- buttons collapse/expand all groups
	Clicking on an attribute's name (eg Strength) displays its description and the benefits it gives the character.
	Clicking on the field containing the name of the race, class, alignment displays a description of the character's race.
	The class description now contains the full description. If the character has a kit, then after the kit description there will be a description of the pure class. For multiclasses, after its description, descriptions of individual classes and, if necessary, a kit are displayed.
	When adding a second class to a character, when choosing Weapon Skills, skills that have stars in the first class are grayed out.

1.2. Main game screen:
	1.2.1. Character portraits
	When you level up, a button with a "+" sign will appear next to the character's portrait. Clicking on it with the left mouse button will open the level up window. When you right-click - Character record.
	1.2.2. Dialog window, message box and action bar.
	You can now resize the message box not only in height, but also in width
	In the dialog box, the text is displayed to the left of the portrait as usual. But if the character does not have a portrait, the text now stretches to the full width of the window.
	An Quick Loot toggle has been added next to the Autoloot toggle. This is bubb's mod with some changes.

1.3. Character Creation
	Added the ability to create a Random character.
	Portrait selection is now made from the list of portraits. The file name will be displayed next to the portrait. And its description, if any (the description can be configured in the m_zZport.lua file).
	Saving attributes. All saved attribute values are now displayed, as well as the total score of the current and saved attributes and the difference between them.
	For rangers, in addition to the description of the racial enemy, its image has been added.

1.4. Inventory
	Added shared inventory. It can be accessed through a special button. To exit, press the Esc button or click on the dragon's eye in the upper right corner.
	Added quick loot collection to inventory. Note: Due to game engine limitations, when collecting trophies, they will end up in the backpack of the character for which the inventory was opened. But at the same time, it can make it easier to collect trophies in the General Inventory.
	Added identification menu. Its detailed description can be found in the game.

1.5. Journal
	The Journal now has two display options. Small, standard for Baldur's Gate (II) Enhanced Edition, and Large, similar to the Journal from older versions of the game.
	When a new entry is added to the Journal, the section to which it is added is marked with a checkmark.
	Added a menu for viewing recent events.
	Added a menu to view all quests in one list. On the left, a list of quests will be shown, on the right, the journal entries related to this quest, with the designation of the chapter in which it was added. Double clicking on an entry expands/collapses it.
	"Important events" are now always displayed in active tasks.
	For the "Important Events" in Trilogy, the entries from first and second parts are combined into one group.

1.6. Stores/Temples
	When trading, the items in the character's inventory are sorted. Containers appear first, followed by items that can be sold in this store, and last, items that cannot be sold.
	Through special toggle, you can view the items that the character is wearing without leaving the store.
	It is possible to select all items for sale at once.
	It is possible to steal several items at once.
	Items that lack gold cannot be allocated for purchase (they can be allocated if the character can steal).
	Items are filtered in two ways. By searching for characters in the name of item, and by type of items.
	The identification window displays only those items that need to be identified.
	In the Donations menu, you can choose how much to increase/decrease the donation amount by clicking on the +/- buttons.
	Spells that do not have enough gold are no longer available in the Healing menu.
	Added icons for drinks in the Drinks menu and the inability to select them when there is a lack of gold.

1.7. Spellbook/Priest Scroll
	Now has two display options. The standard for Baldur's Gate (II) Enhanced Edition, and the second, more similar to the original games.
	You can switch the appearance in the Settings menu or click on the dragon's eye in the upper right corner.

1.8. World map
	Clicking on the arrow button on the right will center the screen on the current location.

1.9. Epilogues
	The character's name is displayed above the character's portrait.

1.10. Save/Load
	Added filtering by save name, character name and chapter.

1.11. Cheat Console
	Duplicates commands are no longer added to the list of recent commands.
	Double-clicking on a command in the list immediately executes it. Right click - removes from the list.

1.12. Game loading menu
	All buttons are now available on the same screen and there will no longer be switching between screens. On the same screen, you can select a game.
	In the Settings menu on this screen, you can see a list of joinable NPC (including NPC from mods) with their characteristics and biography.

1.13. Achievements
	The "Achievements" button has been added to the left panel of the main game screen. Pressing it opens the Achievements menu.
	Also, when completing an achievement, a pop-up window is displayed, as with Journal entries.

Notes: Many new features are disabled by default. You can enable them in the Options menu.

----------------
2. Installation
----------------
Windows:
--------

This is a WeiDU mod, that means it is very easy to install. Simply unpack the downloaded archive into your game's installation directory (where you can find the file "chitin.key") and run "setup-tipun_gui.exe". Follow the instructions and you are ready to start.

To uninstall, run "setup-tipun_gui.exe" again and follow the prompts.

----------------
2.1. Installation order
----------------
The mod contains two components.
First component: Tipun's User Interface (main component).
It is better to install it at the very beginning of the installation. After EET when installing on the Trilogy.
Second component: Tipun's User Interface (create data tables)
It must be installed if you installed other mods after the first component (this applies to mods that add items, whales, NPCs). This component must be installed at the very end of the installation.


-----------
3. Credits
-----------

Coding & testing: tipun
English Translation: tipun
Proofreading Russian text klichko86, yota13

Tipun's User Interface MOD was created with the following software:

Near Infinity       https://github.com/Argent77/NearInfinity/releases
WeiDU               http://www.weidu.org
AkelPad             http://akelpad.sourceforge.net/ru/index.php


-------------------
5. Version History
-------------------
Version v2.1.1
- Fixed bug with Achievements. Messages about some completed Achievements appeared constantly due to exceeding the length of the name of the generated variables.

Version v2.1
- added filters to Achievements
- jewelry was added to the autoloot, regardless of the price
- gold is collected even if the inventory is full
- Added general thieving button. Useful for clerics/thieves who have the steal button in their special abilities. Also, if there is a thief in the first slot (portrait), then for theft there is no need to deselect the other characters (in the future I plan to make it possible to steal regardless of which slot the thief is in)
- completely fixed a bug during the identification of items in stores when changing a character
- fixed bug with level indicators near portraits (problema in v2.0).
- display of weapon skills for an inactive dual class and the ability to change them before the class is activated is disabled. You can turn on the ability to change in the settings. In the case when there is nowhere to put points, the possibility of changing is turned on automatically.
- display of all classes/kits, alignments, skills when creating a character (even those that are not available). Just like in the original game. Disabled/enabled in the settings. You can temporarily enable/disable by clicking on the eye of the right dragon on the current screen.
- small minor fixes and changes.

Version v2.0
- when buying / selling, added the ability to see the number of points in weapon skills
- fixed a bug during the identification of items in shops when changing character
- removed stretching of the text to the full width of the window in the dialogue window in the absence of a portrait of the interlocutor (due to the problem of "collapse" of the text, which has not yet been resolved)
- added level up indicators to the left of the portraits on the main game screen (enabled in Options)
- some small fixes
Second component:
- fixing the position of the SCS interface elements and Hidden Gameplay Options in the Options menu
- if the Infinity Colors mod is installed, then the level-up indicators near the portraits will be the same color as the portrait frame (only if a certain fragment in the Baldur.exe file has not changed)
Problems:
- if you load a save made before installing the mod and one or some of the characters can level up, sometimes the experience indicators are displayed incorrectly. After leveling up, everything stabilizes. So far I haven't found a reason why this is happening.

Version v1.1
- English translation added
- added readme files
- recolored Achievements button
- fixed Credits button in SoD

Version v1.0
- Initial release

---------------------
6. Legal Information
---------------------

================================================================================
BALDUR'S GATE II: SHADOWS OF AMN Developed and © 2000 BioWare Corp. All Rights
Reserved. BALDUR'S GATE II: THRONE OF BHAAL Developed and © 2001 BioWare
Corp. All Rights Reserved. Baldur's Gate, Shadows of Amn, Tales of the Sword
Coast, Forgotten Realms, the Forgotten Realms logo, Advanced Dungeons & Dragons,
the AD&D logo, TSR and the TSR logo, and the Wizards of the Coast logo, are
trademarks of the Wizards of the Coast, Inc., a subsidiary of Hasbro, Inc., and
are used by Interplay Entertainment Corp. under license. All Rights Reserved.
BioWare, the BioWare Infinity Engine and the BioWare logo are the trademarks of
BioWare Corp. All Rights Reserved. Black Isle Studios and the Black Isle Studios
logo are trademarks of Interplay Entertainment Corp. All Rights Reserved.
Exclusively licensed and distributed by Interplay Entertainment Corp. All other
trademarks and copyrights are property of their respective owners.
================================================================================
