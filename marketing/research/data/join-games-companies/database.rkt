#lang racket

(provide table
         id
         company-id
         game-id)

(define id first)
(define company-id second)
(define game-id third)

(define (table)
  (list '(1 Load-Board-Game Vanguard-of-War)
        '(2 KC-Games Era-of-Kingdoms)
        '(3 Third-Eye-Games Reign-Ed)
        '(4 Crimps-Company Adella-The-Game-of-Crimps)
        '(5 Chip-Theory-Games Game-to-Pick-a-Game)
        '(6 Joggles-Games Crown-of-Aragon)
        '(7 Drew-Glass Darkness-Incarnate)
        '(8 Games-for-Aliens Absolutism)
        '(9 Peterson-Games Startropolis)
        '(10 Room-17-Games Miremarsh)
        '(11 Megacon-Games MYTH)
        '(12 PandaSaurus-Games Dinosaur-Island)
        '(13 Ares-Games Galaxy-Defenders)
        '(14 Lucky-Duck-Games Jetpack-Joyride)
        '(15 Studio71 Shady-Agents)
        '(16 Kids-Table-Board-Gaming Wreck-Raiders)
        '(17 Atlas-Games Over-the-Edge)
        '(18 Piecekeeper-Games Rurik-Dawn-of-Kiev)
        '(19 Hyperbole-Games SPQF)
        '(20 Mike-Evans Demon-City)
        '(21 Mage-Hand-Press Dark-Matter) 
        '(22 HeartBeat-Dice HeartBeat-Pride-Dice) 
        '(23 Mystical-Games Bat-Cup) 
        '(24 Jon-Stynes-Design Dragon-Realms)
        '(25 Thomaisse-Mangiok Nunami)
        '(26 Cobblestone-Games The-Acts-Board-Game)
        '(27 Black-Forest-Studio The-Villagers)
        '(28 Dice-Envy Infinity-D4)
        '(29 Horseshoe-Games-LLC Thug-Life)
        '(30 Josh-Jordan John-Silence)
        '(31 SoreLoserGames Rise-of-the-Necromancers)
        '(32 Brian-Suhre Paradox)
        '(33 Eric-A-Martin Exile-Sun)
        '(34 Jeff-Siadeck Monster-Derby)
        '(35 GigaDragon Cosmic-Balance)
        '(36 CMON Guilds-of-Cadwallon)
        '(37 Blackspot-Games Rivet-Wars)
        '(38 CMON 4-the-Birds)
        '(39 Emergent-Games Fireteam-Zero-3)
        '(40 The-North-Star Evolution:CLIMATE-2)
        '(41 Monolith-Board-Games BatmanTM-Gotham-City-Chronicles)
        '(42 CMON Zombicide:-Black-Plague)
        '(43 Flying-Frog-Productions Shadows-of-Brimstone)
        '(44 Academy-Games Tudor)
        '(45 Artipia-Games Kitchen-Rush:-Piece-of-Cake)
        '(46 Kolossal-Games Eclipse:-Second-Dawn-for-the-Galaxy)
        '(47 Uhrwerk-Verlag Space:-1889)
        '(48 Steve-Jackson-Games THE-FANTASY-TRIP)
        '(49 Isaac-Childres Gloomhaven)
        '(50 Jason-Davis Unicorns-and-Zombies)
        '(51 Todd-Kimball Play-Trumps-Politics)
        '(52 Walrus-Ventures Manipulate)
        '(53 Nick-Garel-Jones Drunk-In-The-Trunk)
        '(54 Backspindle-Games MourneQuest)
        '(55 Will-Townshend Ian-Brodys-Quartermaster-General)
        '(56 Druid-City-Games Sorcerer-City)
        '(57 Transit-City-Games Transit-City)
        '(58 Mantic-Games Hellboy)
        '(59 Hiatus-Games Deus-Lo-Vult)
        '(60 Elege-Iberica Soccer-City)
        '(61 MathAndCoding Coding-Farmers)
        '(62 Perry-Clemons Inequality-opoly)
        '(63 Nicki-David-Lloyd Immortality)
        '(64 Daniel-Cunningham Lunarchitects)
        '(65 Daniel-Aronson The-Island-Of-El-Dorado)
        '(66 Homestar-Runner Trogdor)
        '(67 Ares-Games Sword-and-Sorcery)
        '(68 Florian-Oz-Editions Tiki)
        '(69 Storyception-Games Apocalypse-Galactic-Arena)
        '(70 Van-Hammock-Games-llc. Bellum-of-Mutants-and-Men)))