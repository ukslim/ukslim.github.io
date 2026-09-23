---
title: Kerning by Eye.src
description: Edited transcript of the conversation that produced Kerning by Eye — a two-shot research-then-build, followed by my own hand-tuned kerning numbers.
---

# Kerning by Eye.src

_What follows is an edited transcript of the conversation that produced [Kerning by Eye](/kerning-by-eye/), between a writer (J) and an AI assistant (C, Claude Sonnet 5) on 23 September 2026. It is published in line with [The Kladde 26 Manifesto](https://kladde26.org/)._

_The conversation happened in three turns. C's first reply, a piece of web research, is condensed to its main categories and sources here; the original ran considerably longer, with a citation attached to nearly every sentence. Tool calls, searches, and the mechanics of publishing and re-publishing the page are not reproduced. The third turn is reproduced in full: it is J's own hand-tuned kerning values, replacing every number C had guessed._

---

## The research

**J:** Find out about the kind of situation where a graphic designer might choose to improve upon the layout a font engine has chosen for a word.

That is, the designer types text (probably a large title) on a poster or advertisement, the font's hints and the layout engine conspire to kern or space it a certain way. The designer perceives that for this particular word and context, their human judgement says spacing should be different.

Research examples, with the aim of later making a demonstration.

**C:** _[Searches the web and returns eight recurring situations where a designer overrides the engine's own spacing, each with real-world sourcing:]_

1. **Scale** — spacing tuned for reading sizes goes slack once blown up to headline size.
2. **Pairs the font never anticipated** — kerning tables only cover combinations the type designer foresaw; a style change, roman running into italic, is often invisible to them.
3. **The whole word, not a pair** — kerning is pairwise, but rhythm is a property of the whole word. Okavango, and any word with AV or VA, is a known hard case.
4. **Punctuation, quotes and figures** — a lowercase r before a full stop, tabular figures in a date, a hung opening quote.
5. **All caps** — capitals are designed to sit beside lowercase, and need tracking to breathe on their own.
6. **Keming** — spacing that changes which word you read: rn collapsing into m, click into clck.
7. **Deliberately expressive spacing** — 1960s–70s "tight but not touching" display setting, craft rather than correction.
8. **Logos and lockups** — spacing that has to hold at every size a logo appears, the FedEx hidden arrow being the standard example.

_[Proposes a demo built around this: a toggle between the browser's own layout and a hand-respaced version, each gap labelled by how many thousandths of an em it moved — the unit InDesign and Illustrator use for kerning.]_

## The build

**J:** Turn this into an explainer with interactive examples, as an HTML artifact. In all the examples, have the text as laid out by the HTML engine, compared with the text as re-spaced for effect. Have a button to toggle between a side-by-side comparison and a hover-to-flip comparison. There should be an 'original'/'respaced' label that indicates the hover state.

**C:** _[Builds and publishes the page, with eight examples drawn directly from the research categories above: scale ("Harvest Fair"), whole-word rhythm ("OKAVANGO"), tabular figures ("SINCE 1911"), a hung quote ("Yes, sir."), keming ("kerning"), a roman/italic pair ("Cry (Wolf)"), tight-but-not-touching ("together"), and all-caps tracking ("NIGHT MARKET"). Logos are dropped — no example is built for that category.]_

For the Respaced side, the page measures where the browser placed each letter and redraws it there, offset by an adjustment. In flip mode the resting state is exactly the browser's own spacing; hovering slides each letter to its hand-picked position. Blue figures under each gap give the adjustment.

_[Flags that the adjustment values themselves are unchecked — the Google Fonts didn't load where it previewed the page, so only the layout, not the exact numbers, could be checked.]_

## The tuning

**J:** _[Pastes a full rewrite of the example data: new adjustment numbers for every gap, and in most cases new title copy and body text to go with them.]_

**C:** _[Applies the pasted values exactly as sent — J's numbers, J's rewritten copy — and republishes at the same link. Switches the share link to "Anyone with the link".]_

---

_Every adjustment value on the published page is J's, not C's. C's numbers were a first-pass guess, flagged as unchecked in the same turn they were written; the tuning pass replaced all of them with J's own hand-kerned distances._
