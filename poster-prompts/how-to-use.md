---
layout: page
title: How to use these prompts
permalink: /poster-prompts/how-to-use/
description: "Tips for using the poster prompt catalogue — editing prompts, avoiding AI image-generation quirks, and managing image generation quotas."
---

[&larr; Back to all poster prompts](/poster-prompts/)

Each style page has a ready-made prompt for two example events — a village fête and a music gig. They are starting points, not finished recipes. The general process:

1. Open [ChatGPT](https://chatgpt.com) and start a **new conversation** (so previous instructions don't bleed in)
2. Copy a prompt and paste it into the chat
3. Replace the event details at the top — name, date, venue, what's on — with your own
4. Generate, review, and iterate

Each prompt has two parts, separated by a line of three dashes. **Above the dashes is the event copy: change all of it.** Below the dashes is the style description and a design brief telling the AI how to build a poster — which line to make biggest, how many things to draw, what not to invent. That part is doing a lot of work, so leave it alone unless you have a reason not to.

## Read what it says before it draws

The prompt asks the AI to state its decisions in a short paragraph before generating. Read that paragraph. It is the cheapest moment in the whole process to change your mind.

It will tell you which line it picked as the headline, and — where the style lets the event choose the picture — which things it considered drawing and which one it went with:

> Possible picture-carriers are the ferret race, homemade preserves, the bouncy castle and the quieter plant-and-produce stall; I'll commit to one monumental cabbage whose leaves subtly become a fête rosette.

You do not need any design vocabulary to have an opinion about that. If the ferrets are the whole reason anyone turns up, say so:

> Do the ferret instead.

That shortlist is worth more than it looks. It means you get offered the alternatives every time, rather than hoping a different one turns up on the next attempt.

It will also tell you if something is missing. The prompt forbids inventing a date, a time or a fact that isn't in your copy, so if you have left the year off it will say so rather than guessing — which is a good reason to read the paragraph even when you are happy with the picture.

**Check your event description before generating.** The example events — a village fête and a music gig — are deliberately written with everything a poster reader needs: what, where, when (including the day of the week), and any other key information. Before you generate, ask the AI to review your own event details:

> Does this event description include all the information someone would need? Is anything missing or ambiguous?

It's good at catching omissions: a missing day of the week, a vague venue name, a time that's implied but not stated.

## Asking for something specific

If you already know what you want the picture to be — a heroic knight, your church, a particular animal — there are two places to say so, and only one of them is obvious.

**The one that doesn't work** is adding it to your event description at the top. The AI reads everything above the dashes as facts about your event, not as instructions to the artist. Asked for a knight that way, it will often politely decline and draw what the style called for instead.

**Either edit the `Subject:` line**, a few lines below the dashes, and replace it with what you want:

> Subject: a heroic knight in armour, rendered in the style's own manner.

**Or just ask afterwards**, once it has told you what it plans to draw:

> Make the central figure a heroic knight in armour instead.

Both work reliably. Editing up front costs you nothing; asking afterwards may cost you a generation if it has already drawn the first one. Either way the style survives — ask Art Nouveau for a knight and you get a knight in flowing whiplash linework with a floral border, not a knight from somewhere else.

Adding a detail is easier than replacing the subject. Colour, mood, and what to leave out can go in a follow-up message at any point.

---

## Sepia, fading, and "antique" effects

Historical styles — Art Nouveau, Art Deco, Constructivist, and so on — can trigger the AI's instinct to make the image look _old_: sepia-tinted, faded, foxed, as if photographed from a century-old original. That's usually not what you want.

If this happens, add one or more of these to your prompt:

> vivid, saturated colours — not faded or sepia  
> clean reproduction quality, as if newly printed  
> high contrast, no aging or distressing  
> bold colour, not washed out

For styles where muted tones are intentional (Arts and Crafts, Cubist, some Surrealist work), tone this down — you just want to avoid unintentional degradation, not banish all subtlety.

---

## Inappropriate or awkward imagery

The AI makes things up. If your prompt mentions a band, a town, or a venue, expect it to _invent_ what those look like — realistic-looking photographs of people who don't exist, plausible-sounding maps of places that aren't real, street scenes of fictional towns.

A few ways to deal with this:

**Make the prompt more abstract.** Instead of letting the AI decide what "Carver & the Flood" looks like, specify that you want no photographs of people, no realistic scenes — graphic elements only.

> No photographs of people. No realistic crowd scenes. Abstract graphic representation only.

Be careful with this one. Some styles exist because of the figure at the centre of them — Art Nouveau, Pre-Raphaelite, the Shanghai calendar posters. Banning figures there removes the reason you picked the style. It is good advice for a container style like Risograph or Swiss, and bad advice for a tradition with a subject of its own.

**Make the prompt more specific.** The AI invents things to fill a vacuum — give it specific instructions and it will do those things instead. Describe the colour scheme, the imagery, the mood, even specific graphic elements you want included.

> Deep red and black only. A silhouette of a single guitar. No text other than the event name and date.

**Supply a reference image.** In ChatGPT you can upload an image alongside your prompt. Upload a photo of your band, your venue, or your town and ask the AI to use it as a reference rather than inventing its own.

**Post-edit.** Generate the poster as a decorative background and graphic treatment, then add your own text, photographs, and real content on top using Canva, Photoshop, or any basic image editor. The AI-generated part becomes the _style_ layer; your real content sits on top.

---

## These prompts work in other AI image tools too

The examples on this site were generated in September 2026 through the OpenAI API, one attempt per style with no cherry-picking. The prompts should work — with varying results and possibly minor tweaks — in any AI image generation service, including:

- **Google Gemini** — usage is more or less identical to ChatGPT; paste the prompt and ask it to generate an image
- **Midjourney** — generally strong on aesthetic styles; add `--ar 2:3` for portrait format
- **Adobe Firefly** — good commercial-use licensing; style adherence varies
- **DALL-E 3** (via API or Bing Image Creator) — the predecessor to GPT-4o image generation; still capable
- **Stable Diffusion / ComfyUI** — more control, more setup; these prompts work but may need shorter, more direct wording

These prompts are long — around a thousand words — and most of that length is instructions rather than description: what to make biggest, how many things to draw, what not to invent. Tools that follow written instructions closely, like ChatGPT and Gemini, use all of it. Tools that expect a list of keywords will ignore most of it and give you something closer to a plain style pastiche.

So if you are using Midjourney or Stable Diffusion, don't strip the prompt down and expect the same poster — you will be dropping the part that does the composition. Better to keep the style description and accept you are getting a different, looser thing.

---

## Try again — and plan for quotas

No two generations are identical. If your first result is disappointing, try again with the same prompt before changing anything. The variation between attempts is often large enough that a second try produces something much better.

How much it varies depends on the style. Where the style has a subject of its own — Art Nouveau's woman among flowers, a Madhubani peacock, a heavy metal skull — you will get that same subject every time, drawn differently. That is the style working as intended, not a fault. Where the style is a container and the picture comes from your event, repeat attempts genuinely do reach for different things. Either way, telling it what you want is quicker than rolling again.

If you're refining a result, keep your changes small — one adjustment at a time — so you know what's working.

**Look at the result carefully.** The examples on this site are mostly the first image that came out of ChatGPT — good enough to illustrate a style, but not necessarily ready to print. For a real poster, zoom in and check: is the text legible and correct? Does anyone have a third arm, a violin bow growing from their elbow, or fingers that don't add up? AI image generation has characteristic failure modes, and they're easy to miss at a glance. Reject and regenerate rather than hoping nobody notices.

**Think about honesty.** Sometimes an illustration is just a pretty picture. But sometimes an illustration makes promises the event can't keep.
If your fête won't have a big striped marquee with bunting, your poster shouldn't show one. If your poster shows someone eating candy floss,
your event had better sell candy floss. If your event takes place in a community library full of modern furniture, your poster shouldn't show a
Harry Potter oak-panelled library. If your event takes place near a church with a steeple, don't depict a church with a square belfry. Even if
your event does feature a big wheel, don't depict a forty metre wheel if the real thing will be small.

AI will invent these falsehoods for you if you don't rein it in.

There is a subtler version. These prompts deliberately pick one thing and make it enormous, because that is what makes a poster work from across a car park. But a poster that is four-fifths ferret does rather suggest the ferrets are the main event. If that isn't true, and the headline above it isn't loud enough to say otherwise, pick something else from the shortlist. That is your call, not the machine's.

**Ask the AI to review the result too.** Before you declare it done, ask:

> Is this ready to print and display in the library or corner shop?

It will flag obvious problems — illegible text, a date that got garbled, a layout that wouldn't survive being scaled up to A3.

**Free-tier users:** AI image generation quotas are real. Free accounts typically allow a small number of image generations per day. If you're making a poster for an actual event, don't leave this to the night before — start a few days ahead in case you need more attempts than your daily allowance allows, or in case you need to wait for your quota to reset.

Paid tiers (ChatGPT Plus, Pro, or equivalents elsewhere) have higher limits but are still not unlimited, particularly for image generation. If you're generating large numbers of images in one session, pace yourself.

---

## Have your own ideas

One hundred styles is not an exhaustive list. It is a starting point and a demonstration that the space is larger than the default. If you know what you want — a style, a reference, an artist, a decade, a vibe — just ask for it directly. You don't need this catalogue to tell you that Saul Bass posters exist, or that you liked the look of something you saw last week, or that you want something that feels like a 1970s Soviet children's book. Describe what you're after and see what happens.

The prompts here are structured to be reliable and transferable. Your own prompt, written for your specific event with your specific taste, will probably be better.

---

## Consider making it yourself

A human-made poster, even a modest one, is almost always more distinctive than an AI-generated one. AI image generation is good at plausible. It is less good at _yours_.

If you have any interest in design tools — Canva, Affinity, even PowerPoint — it is worth spending an afternoon on something handmade. You will be able to use your actual photographs, your actual fonts, your actual colours. You will be able to move things around until they look right rather than hoping the next generation is the one. And the result will be unambiguously, unmistakably yours.

This site exists because AI posters are often ugly and repetitive, and they don't have to be. But the best reason they don't have to be is that you could just make one.

---

## A note on "Version 1"

Each example has a **Version 1** toggle next to it. That is the original prompt this site launched with: a style description and nothing else. Version one yields pretty good results, and you might want to experiment with it. Version 2 has a number of improvements: it takes more care over which text gets prioritised, it's less liable to clutter the page with unwanted detail, it avoids treating every word of the event detail as a reason for an image (Carver and the Flood at the Anchor, getting an anchor, a woodworking tool and a lot of water...)

You might want to look at version 1 prompts for historical interest, or just to experiment.

In some cases I think that by making V2 more rules-bound, we lose the opportunity for happy accidents. V1's [Skateboard fete poster](/poster-prompts/skateboard-graphics/) breaks the V2 rules, but consequently contains some pleasing chaos and some quite good jokes.

---

## Did this help?

If these prompts were useful for a real event, I'd love to hear about it — and see the poster you made. Find me on [Bluesky](https://bsky.app/profile/ere-i-am-jh.bsky.social).

---

[&larr; Back to all poster prompts](/poster-prompts/)

{% include jsonld-how-to.html %}
