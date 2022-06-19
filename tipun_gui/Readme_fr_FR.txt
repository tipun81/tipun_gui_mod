Tipun's User Interface for Enhanced Edition Games(SoD, BG2EE, EET)
				   Version v2.1.2
			   http://www.arcanecoast.ru


Sommaire :

1. Introduction
2. Installation
2.1. Ordre d'installation
3. Credits
4. Historique des Versions
5. Legal Information

----------------
1. Introduction
----------------

Ce mod modifie l'interface utilisateur pour Baldur's Gate Siege of Dragonspear, Baldur's Gate II Enhanced Edition et Enhanced Edition Trilogy.

Changements principaux de l'interface :

1.1. Archives des personnages (Écran Statistique)
	-Les barres de progression d'expérience recommencent au début après la montée de niveau.
	-Les statistiques du personnage sont maintenant divisées en groupes pouvant être développé ou réduit avec les boutons +/- .
	-En cliquant sur le nom d'une caractéristique (par exemple la force), vous afficherez sa description et les avantages qu'elle procure au personnage.
	-Cliquer sur le panneau indiquant la race, la classe et l'alignement permet d'afficher une description de la race du personnage.
	-La partie description de la classe contient maintenant une description complète. Si le personnage dispose d'un kit, alors , la description de la classe de base sera affichée après la description du kit. Pour les multiclasses, une description de chaque classe et, le cas échéant, de chaque kit, sera disponible après la description de base.
	-Suite au jumelage d'un personnage pour une seconde classe, lors de la sélection des compétences d'armes (création, montée de niveau), les points de compétences déjà pourvus par la première classe apparaîtront en gris.

1.2. Écran principal du jeu :
	1.2.1. Portraits de personnages
	-Lorsque vous passez au niveau supérieur, un bouton "+" apparaît à côté du portrait du personnage. En cliquant dessus avec le bouton gauche de la souris, vous ouvrirez directement la fenêtre de montée de niveau, en cliquant avec le bouton droit de la souris vous ouvrirez l'écran d'archives (Statistique) du personnage.
	1.2.2. Fenêtre de dialogue et barre d'action.
	-Vous pouvez maintenant redimensionner la fenêtre de dialogue non seulement en hauteur, mais aussi en largeur (En cliquant sur le bord de la fenêtre et en étirant horizontalement ou verticalement).
	-Pour les dialogue, le texte s'affiche à gauche du portrait comme d'habitude. Mais si le personnage n'a pas de portrait, le texte s'étend désormais sur toute la largeur.
	-Un bouton "Butin rapide" (QuickLoot) a été ajouté à côté du bouton "Butin automatique" (AutoLoot). Similaire au mod de bubb avec quelques changements.

1.3. Création de personnage
	-Possibilité de générer un personnage aléatoire.
	-La sélection des portraits est désormais disponible à partir d'une liste des portraits. Le nom du fichier apparaîtra à côté du portrait. Et sa description, si disponible (peut être configurée dans le fichier m_zZport.lua).
	-Sauvegarde des caractéristiques. Toutes les caractéristiques sauvegardées sont maintenant disponible, proposant le total des scores, ainsi qu'une comparaison avec les jets de caractéristiques sauvegardées.
	-Pour les rôdeurs, en plus de la description de la race ennemie, une illustration a été ajoutée.

1.4. Inventaire
	-Ajout d'un "Inventaire Général" du groupe. Il est accessible par le biais d'un bouton spécifique en bas à droite de l’écran d'inventaire des personnages du groupe. Pour quitter cet écran, utilisez la touche Echap ou cliquez sur l'œil de dragon dans le coin supérieur droit.
	-Ajout d'une option "Butin Rapide" qui permet de ramasser des objets rapidement. 
Remarque : en raison des limitations du moteur de jeu, lorsque vous collectez des objets, ils sont placés dans l'inventaire du personnage ouvert en dernier. Mais cela peut faciliter la collecte des objets dans l'inventaire général du groupe.
	-Ajout d'un écran d'identification. Sa description détaillée peut être trouvée dans le jeu dans les Options Additionnelles.

1.5. Journal
	-Le Journal dispose désormais de deux options d'affichage. Un standard pour Baldur's Gate (II) Enhanced Edition, et un autre "Grand journal", plus proche des jeux originaux.
	-Lorsqu'une nouvelle entrée est ajoutée au journal, la section à laquelle elle est ajoutée est marquée d'une petite coche rouge a droite du texte.
	-Ajout d'un bouton permettant de visualiser les événements récents.
	-Ajout d'un bouton permettant de visualiser les quêtes dans une seule liste. A gauche, la liste de quêtes sera affichée et à droite, les entrées du journal liées aux quêtes en questions, avec la référence du chapitre pendant lequel elles ont été ajoutées. Un double clic sur une entrée l'agrandit ou la réduit.
	-Les "événements importants" sont désormais affichés en permanence dans les quêtes en cours.
	-Pour EET les entrées du journal des  "événements importants" sont combinées en un seul groupe.

1.6. Magasins/Temples
	-Lors d'une transaction, les objets de l'inventaire du personnage sont organisés par ordre. Les contenants apparaissent en premier, suivis des objets pouvant être vendus dans le magasin ou vous vous trouvez, et en dernier, les objets qui ne peuvent pas être vendus.
	-Grâce à une fonctionnalité spéciale, vous pouvez voir les articles que le personnage possède sans quitter le magasin.
	-Il est possible de sélectionner tous les objets pour les vendre en même temps.
	-Il est possible de voler plusieurs objets à la fois.
	-Les objets trop chers pour être achetés ne peuvent pas être sélectionnés (sauf si le personnage peut les voler). 
	-Les objets sont filtrés de deux façons. Par nom et par type.
	-La fenêtre d'identification n'affiche que les objets qui nécessitent d'être identifiés.
   	-Dans l'écran des dons, vous pouvez choisir d'augmenter/diminuer le montant du don en cliquant sur les boutons +/-.
	-Les sorts trop chers pour être achetés ne sont plus disponibles dans l'écran Soins.
	-Ajout d'icônes pour les boissons au comptoir et de l'impossibilité de les sélectionner sans suffisamment d'or.

1.7. Livres de sorts de mage/prêtre
	-Dispose désormais de deux options d'affichage. Un standard pour Baldur's Gate (II) Enhanced Edition, et un autre, plus proche des jeux originaux. Vous pouvez changer l'apparence dans le menu Options Additionnelles ou cliquer sur l'œil du dragon dans le coin supérieur droit.

1.8. Carte du monde
	-En cliquant sur le bouton en forme de flèche en haut à droite, l'écran se recentrera sur la zone où votre groupe se trouve actuellement.

1.9. Épilogues
	-Le nom du personnage est affiché au-dessus du portrait.

1.10. Sauvegarde/Chargement
	-Ajout d'un filtre pour les affichées par nom, par chapitre et par personnage joueur.

1.11. Console de triche (CLUAConsole)
	-Les commandes CLUA répétées ne sont plus ajoutées à la liste des commandes CLUA récentes. Un double-clic sur une commande de la liste l'exécute directement. Un clic droit permet de la supprimer de la liste.

1.12. Menu principal du jeu (Écran d’accueil)
	-Tous les boutons sont désormais disponibles sur un même écran pour la sélection des jeux, plus besoin de passer de l'un à l'autre.
	-Dans le menu Options de l'écran d’accueil, vous pouvez voir une liste des PNJ joignables disponible (y compris les PNJ provenant de mods) avec leurs caractéristiques et leur biographie.

1.13. Réalisations
	-Le bouton "Réalisations" a été ajouté à droite de l'interface sous la quantité d'or du groupe. En appuyant dessus, vous ouvrez le menu des réalisations. En outre, lorsqu'une Réalisation est accomplie, une fenêtre temporaire s'affiche, comme pour les entrées du journal.

Remarques : Nombres de ces nouvelles fonctionnalités sont désactivées par défaut. Vous pouvez les activer dans le menu Options Additionnelles.

----------------
2. Installation
----------------
Windows:
--------

Il s'agit d'un mod WeiDU, ce qui signifie qu'il est très facile à installer. Il suffit de décompresser l'archive téléchargée dans le répertoire d'installation de votre jeu (celui où se trouve le fichier "chitin.key") et d'exécuter "setup-tipun_gui.exe". Suivez les instructions de la fenêtre DOS et vous êtes prêt à commencer.

Pour désinstaller le mod, exécutez de nouveau "setup-tipun_gui.exe" et suivez les instructions.

-------------------------
2.1. Ordre d'installation
-------------------------
Ce mod contient deux composants.

	Premier composant : Interface utilisateur de Tipun (composant principal). "Tipun's User Interface (main component)"
Il est préférable de l'installer au tout début, juste après EET si vous installez la Trilogie.

	Deuxième composant : Interface utilisateur de Tipun (création de tableaux de données). "Tipun's User Interface (create data tables)"
Il doit être installé après le premier composant et les autres mods (cela s'applique aux mods qui ajoutent des objets, des kits et des PNJ). Ce composant doit être installé à la toute fin de votre installation.


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


--------------------------
5. Historique des Versions
--------------------------
Version v2.1.2
- reduced the gold icon on the main screen
- achievements button moved to the right side
- added the ability to disable the checkmark that marks the last entry in the journal
- changed the portrait frame in the dialogue window
- icons for displaying stars in weapon proficiencies are replaced with "+"

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
