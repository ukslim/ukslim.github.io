---
title: "Before That, the Hill"
date: 2026-11-17
description: "Nine days before launch, a game that remembered everything was brought down by a midge."
---

For my birthday, my sister gave me a box of four Ardnamurchan whisky miniatures, and a card saying: _"Write one short story inspired by each whisky. Each one must feature either a pirate, a cook, a naturalist or a computer game designer. Happy birthday!"_

This story features a computer game designer and is inspired by Ardnamurchan AD/ The Midgie. 
Ardnamurchan boasts that it is "the first Scottish distillery to adopt the use of blockchain technology 
to provide an incorruptible ledger of its complete supply and production chain". 
The Midgie is a blend in which the same malt whisky is matured in casks previously used for a variety of other wines and spirits. 
Hence, of the four miniatures, it must be the one with the most complex provenance ledger.

---

| Ticket   | DUT-41187                              |
| -------- | -------------------------------------- |
| Severity | A (blocks release)                     |
| Build    | RC3                                    |
| Area     | Tutorial: the inn at Glenbrae          |
| Repro    | 9 of 10                                |
| Summary  | Guard arrested me for eating breakfast |

The ticket was filed at 4.52 on a Tuesday afternoon in June, nine days before _Dùthchas_ was due to go to the console manufacturers for certification. It came from a contract tester in Leeds who had been playing the first hour of the game, over and over, since before Christmas. Her notes were brief. She had sat down in the inn at Glenbrae, as the tutorial tells you to, and eaten the kipper the cook puts in front of you. A guard had stood up from the next table and arrested her for handling stolen goods. She had reloaded and tried again, and it had happened again. "Is this meant to happen?" she wrote. "If so it is very harsh."

It was not meant to happen. Nothing in the tutorial is stolen. The ticket went to the top of the list at Tolbooth Games, a studio of about ninety people in a converted jute warehouse in Dundee. By the next morning it had been assigned to the one person who could explain it: the game's systems director, Iain Gow.

---

_Dùthchas_ is a Gaelic word without a neat English equivalent. It means something like heritage, or inherited nature, or the bond between a people and their land. The publisher wanted the game called _Highland Fate_, and marketing kept raising it until about a month before launch. Inside the studio everyone called it Dutch.

The game is a large open-world role-playing game set in an invented, early-medieval Highlands. It has no dragons and no spells. It has weather, cattle, peat, feuds and trade, all simulated in more detail than most players will ever notice. It was announced with a three-word line that the studio had printed on the warehouse wall, and that Gow had come to read every morning as an instruction: _Every object remembers._

He meant it literally. Every object in _Dùthchas_ carries a record of where it came from. A cloak knows the loom it was woven on, the weaver who worked the loom, the sheep the wool came from and the hill the sheep grazed. Players get at these records through the Telling. You hand an object to one of the game's bards, and the bard recites its descent in the manner of the old Highland genealogists, who recited a chief's ancestry at his inauguration. The idea was that any object could tell you where it had been, as long as you could find somebody to read it.

Gow built the first version alone, at weekends, before Tolbooth existed. The prototype is the reason the publisher signed the studio. In the six years since, the system had grown without anyone deciding that it should. By the spring of release year it covered the buttons on every coat in the game. Each button was horn, each piece of horn came from a named cow, and the cows had mothers. Gow had written most of those records himself, late, after everyone else had gone home.

He has lived with obsessive-compulsive disorder since he was a teenager, and he is matter-of-fact about how it relates to his work. "I couldn't ship a thing that didn't know where it came from," he said. "I tried. I couldn't close the ticket." Colleagues describe him as kind, careful and, by the last year, very tired. He had not taken a holiday in two years. He kept a spreadsheet of the records he had not yet written, and it never got shorter.

---

The midges came from the art team. Three months before launch, an environment artist added them to the summer moors as a particle effect: low clouds of dark specks over the bogs at dusk, there purely for atmosphere. Gow saw them in a build on a Friday evening and could not leave them alone. A particle has no history. Over the next four weekends he turned the midges into creatures.

Each midge became an entity with a record. It hatched from a named stretch of bog, and the females needed a meal of blood before they could lay, as real midges do. Each one fed on whatever warm thing was nearest and laid its eggs back in the wet ground. The change added a great deal to the game's memory use. Gow found the savings elsewhere himself and did not mention it in the weekly meeting.

To trace DUT-41187, he did what a player would do. He loaded the tutorial, took the kipper off the plate and handed it to the bard by the fire.

> _Kipper, son of herring, son of the Minch, taken in the nets of Ruairidh Bàn. Smoked in the inn's own smokehouse, over peat of Blàr Mòr, cut in the spring by Seumas Mac an t-Saoir from the bank above the burn. In that peat were larvae, daughters of a midge of Blàr Mòr. She took blood from Seumas Mac an t-Saoir, and from Mrs Rankin of the manse, and from Seumas Mac an t-Saoir again. She took it unasked._

The last line was the bug. _Dùthchas_ has a crime system, and the crime system has a simple rule: anything taken without consent is stolen, and stolen things pass their status on to whatever is made from them. A midge does not ask. The blood was stolen, so the larvae were descended from stolen goods, and the peat that held them, the smoke from the peat and the fish in the smoke inherited the flag in turn. By the time the kipper reached the player's plate it was stolen property, a few generations removed. Any guard in the room could see it.

The obvious fix was to exempt midges from the theft rule, and Ruth Kerr, the game's producer, proposed it in a ten-minute meeting that afternoon. "A sane person would have stopped there," she said later, and she said it fondly. Gow could have made the change before the end of the day. He did not, partly because an exemption was a lie about the world, and partly because, while reading the kipper's record, he had opened the record of Seumas Mac an t-Saoir and found something worse.

Seumas cut peat for a living, so he was bitten often, and always on the same bank. The midges that bit him laid their eggs in that bank, and he cut it the next spring and burned it on his own fire. He smoked his own fish over that fire and ate them. _Dùthchas_ records what its people eat as part of what they are made of. Of course it did. So, after the two hundred years of history the game simulates before the player arrives, Seumas was descended in part from himself.

So was almost everyone in the game. When Gow ran the job that recalculated the theft flags across the world, it did not finish. Every time it followed a line of descent backwards, the line looped round and brought it back to where it had started.

---

He spent most of the next four days in the studio. He slept in a meeting room on two beanbags and ate when someone put food in front of him. On the Wednesday he wrote a tool to detect loops in the records. It found eleven million of them and then ran out of memory. On the Thursday morning he considered capping how far back any record could go: ten generations, say, and then stop. He rejected it within the hour. In his notes from that day there is a line, underlined twice, that reads: _An arbitrary number is a lie with a number on it._

Ruth Kerr met him that afternoon with the playtest data. Fewer than one tester in twenty had used the Telling more than twice. The provenance records made up a third of the size of a typical save file. One of the two consoles they were shipping on was close to its memory limit, and certification would not wait. Her recommendation was to cut the Telling, ship the records unused and revisit them in a patch that, she accepted, would probably never come. She was not unkind about it, and nobody at Tolbooth thinks she was wrong to raise it. She gave him until Friday.

It was Tomasz Wrona, a gameplay engineer two years out of university, who suggested pooling. His idea was that anything that exists in bulk, such as midges, herring, grass, rain or the larvae in a bank of peat, should stop having individual records and share one: the swarm, the shoal, the bog. Individuals would keep their histories and crowds would not. It would break the loops, because Seumas would be bitten by the swarm and not by any particular midge, and a swarm cannot be anyone's mother. It would also shrink the saves.

Gow refused. "Then the herring came from nowhere," he said. People who were in the room say he argued for most of an hour, quietly and without stopping. The promise had been _every object_, not every object worth the trouble. A herring has a mother. The fact that the mother is one of ten million does not make her imaginary. The others went back to their desks. He stayed in the room.

He was still there at five o'clock, when Peigi MacAulay arrived for a recording session. She was the game's Gaelic consultant, a retired schoolteacher from Harris, and she had recorded most of the bards' lines herself. She found him sitting with the lights off. Over the years Gow had asked her a great many questions about how the old genealogists worked, and he asked her one more: what did they do when they ran out?

She told him they did what everybody does. They went back as far as anyone knew, then through people who had probably existed, then through people who certainly had not, and then they stopped at a story. The MacDonald genealogies ran through Somerled to Conn of the Hundred Battles, and beyond Conn it was nobody you could have met. Nobody minded. Nobody ever thought the point of reciting it was to get to the end. She added something about her grandmother. When she didn't know where a thing had come from, whether a stray ewe, a plank on the shore or a word a child had picked up, she would say it had come from the hill.

---

He wrote the line that evening. Anything held in a pool now ends its Telling the same way: _and before that, it came from the hill._ Then he ran the recalculation again. It finished in forty seconds. The kipper was no longer stolen, because the swarm cannot be a thief. Save files shrank by a little over a third.

Before he went home he deleted the midge entities and switched the artists' particle effect back on. He loaded the moor above Glenbrae at dusk and watched it for some time: a few thousand identical dark specks over the bog, none of them with a name, coming from nowhere and going nowhere. He said it was the first thing in six years that he did not have to know about. He described the feeling as like putting down something heavy that he had stopped noticing he was carrying. Then he went home and, by his own account, slept for fourteen hours.

| Ticket     | DUT-41187               |
| ---------- | ----------------------- |
| Status     | Closed                  |
| Resolution | Came from the hill      |

---

_Dùthchas_ was released in August, under that name. Within a few weeks a forum had formed around the Telling, and its members called themselves hillwalkers.

The forum keeps a leaderboard. A kipper reaches the hill in four lines and a cloak in about seven, so neither is worth posting. What the hillwalkers look for are objects that were made and handled only by named people, because those objects can go a very long way before anything ends them. At the time of writing, the longest Telling on record belongs to a silver brooch made in the twelfth year of the game's simulated history. It was given as a dowry, taken in a feud, used to pay a ransom, melted down and remade by a smith's granddaughter, and lost in a river. It passed through fifty-eight named hands before the bard reached the hill, and the recitation runs to eleven minutes.

The players most likely to break records have learned to engineer them. They give objects away, buy them back and have them reforged until the chains grow longer, and the forum argues about whether such chains count. One thread, pinned to the top, is from a computer science student. It explains that finding the longest chain that never doubles back on itself is a problem with no efficient solution, so no record on the leaderboard can ever be proven to be the longest. The hillwalkers took this as good news.

Another long-running thread argues about the herring, which is a sea fish, and which the bards say came from the hill. Gow has been asked about this more than once. He has declined to change it.

Clips of bards reciting are now among the most shared material from the game. Ruth Kerr has been asked whether she regrets wanting to cut the Telling. "I was right about the numbers," she said. "I was wrong about what they were counting."

There is one more thread on the forum, smaller than the others. A handful of players have noticed that for a few objects, and only a few, the bard pauses for about half a second before saying _the hill_. Nobody on the forum has established which objects cause the pause. The list so far includes kippers from the inn at Glenbrae and peat cut from Blàr Mòr, and some people are confident it is a clue to something.

Gow says it is an audio edit. Peigi MacAulay recorded the line in a single take, and he says he has never listened to it closely. Asked whether he might look into it, he said he would rather not.
