# Better poster prompts

I've made a version 2 of my [hundred poster prompts](/poster-prompts/).

| before                                                                                                                                                                                            | after                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <a href="/poster-prompts/expressionist-woodcut/"><img src="/images/poster-v1-expressionist-woodcut-fete.webp" width="100%" alt="Expressionist Woodcut fête poster from the version 1 prompt"></a> | <a href="/poster-prompts/expressionist-woodcut/"><img src="/images/poster-v2-expressionist-woodcut-fete.webp" width="100%" alt="Expressionist Woodcut fête poster from the version 2 prompt"></a> |

_Expressionist Woodcut, the same fête, version 1 and version 2._

Back in June I
[wrote about why AI posters don't have to be horrible](/2026/06/07/ai-event-posters.html) and allowed
my experiments to sprawl into a website with
[a hundred poster prompts](/poster-prompts/).
I was pretty pleased with them.

But having these examples made me fussier, and I
began to notice flaws.

Then, after essentially nobody had paid any attention to the page, I shared it on [Hacker News](https://news.ycombinator.com/item?id=49764791) - where lots of people commented, many of whom noticed the same flaws as I had:

The text layout was usually pretty good - it would
emphasise the headline, and put other details where
they belonged - but it could have been better.

The fete example highlighted a common AI problem -
if a word is in the prompt, it'll put it in the image. So the image for the fete at the cricket ground for the village church restoration fund, would contain cricket, a church, fete tents, as well as imagery representing every attraction listed.

(By the way, you'd get a better poster by just listing fewer attractions -- but our hypothetical client wants them all on the poster, so that would be cheating)

This was just one contributor to clutter. The model
often seems to want to fill every space with stuff.

The fictional band highlighted another problem:
AI had invented "Carver and the Flood" as the band,
playing a gig at "The Anchor", so many of the posters
featured a woodworking tool, a lot of water, and an
anchor. Sometimes these were lovely images. But it's
very literal - and for a real band, "The Flood" would
have ceased to be associated with water, in the fans' minds, years ago.

The ferrets. My fictional fete had ferret racing as
an attraction. So many of the posters highlight ferrets.
This is understandable - it's the most interesting thing about the event, so the model picks it out.
But you don't want it every time. You want the user to have the opportunity to pick a try where the
ferret isn't the star.

Often the model would invent logos. So the church repair fund suddenly has a crest. That's not acceptable.

## How version 2 was built

I put all these issues to the Claude chatbot, and it
suggested a number of ways to improve the prompt. This
went back and forth quite a lot, because it would come
up with rules that work for some styles but not others.

Eventually I had it write a handover, so I could move into Claude Code.

When I wrote v1, after assembling the code to produce the prompts, I spent a couple of evenings on the part-developed site, copy-pasting prompts into ChatGPT, saving the results to my project, as fast as the rate-limiter would allow me.

This time I paid for some OpenAI API credit, and automated it. All I intended to do was make the generation less laborious.

But as soon as Claude Code realised I had the API, it suggested doing an evaluation exercise. So that's what we did.

Producing an image is two steps: the first is prompt expansion. We submit the prompt to a LLM, and it generates the text explaining what it's going to do. You can review that before sending it to the image model.

So, to avoid spending too much money on image generation, we evaluated that first step. I was able to leave a lot of this to Claude Code. The criteria were pretty clear, so Claude could be the judge, Claude adjust the prompts, Claude could decide when to stop.

```
while results aren't quite right {
   amend prompt
   submit prompts
   judge results
}
```

I just had to keep an eye on spend. And to my surprise
it was iterating by making hundreds of requests, but costing me pennies. But we were having to firm up the prompt to tell the model things it should have worked out. Claude had picked five styles to test against, one for each way a poster can
decide what to draw, plus a deliberately awkward one:

- **Polish Poster School**, where the event chooses the subject, so the ferret problem shows up here first
- **Art Nouveau**, where the tradition insists on its own subject — a woman among flowers — whatever the event says
- **Suprematism**, which is abstract, and should draw no subject at all
- **Factory Records**, where the typography _is_ the image
- **Madhubani**, which fills every square centimetre, and would tell us whether the new rules about restraint had flattened a style that is supposed to be dense

Then we realised we were testing with gpt-5.4-mini - very cheap, but not very clever. Switching up to gpt-5.6-sol -- what ChatGPT would use on Medium -- started behaving much better, and we could remove many of the adjustments we'd made trying to make the mini model work.

<div class="image-pair">
{% include image path="/assets/poster-examples/japonisme-gig-v2.webp" w="400" link="/poster-prompts/japonisme/" caption="Japonisme — the gig, with no anchor, no flood and no chisel in sight" %}
{% include image path="/assets/poster-examples/cut_paper_matisse-gig-v2.webp" w="400" link="/poster-prompts/cut-paper-matisse/" caption="Cut Paper / Matisse — the same gig: a sweeping cut-paper current, not a literal flood" %}
</div>

All this meant that with about $10 worth of tokens, we'd evaluated and improved our prompts until they met the goals.

The biggest sticking point was ferrets. I wanted it to choose a ferret about 20% of the time. It's a
striking image, many users would choose it, but we want it to use other options when you retry. The
problem was that it's unusual so the LLM finds it
compelling.

## Where the subject comes from

For some styles, the event dictates the subject. A fete in Letterpress, gets some fete-related image.

For other styles, the style dictates the subject.
Art Nouveau is a woman with flowers. You can only
override that by asking.

Other styles are explicitly abstract.

<div class="image-pair">
{% include image path="/assets/poster-examples/wayfinding_signage-fete-v2.webp" w="400" link="/poster-prompts/wayfinding-signage/" caption="Wayfinding / Signage — the event chose the subject. It shortlisted a ferret, a cake and a potted plant, and took the quiet one" %}
{% include image path="/assets/poster-examples/mexican_calavera-fete-v2.webp" w="400" link="/poster-prompts/mexican-calavera/" caption="Mexican Calavera — the style chose the subject; the event supplied the words and the cricket ground" %}
</div>

# Cost

This cost me $28 in OpenAI tokens. Around $10 in text-only evaluation runs, then another $18 doing multi-run image tests on four styles, followed by generating all 200 images.

Oh well.

# Outcome

I think in general the posters are better. They're more striking. The hierarchy of text is clearer. The subject matter is wrong less often.

<div class="image-pair">
{% include image path="/assets/poster-examples/cobra-gig-v2.webp" w="400" link="/poster-prompts/cobra/" caption="CoBrA — a mythic animal-mask figure, which is the tradition's own subject, not the event's" %}
{% include image path="/assets/poster-examples/mid_century_modern_graphic-gig-v2.webp" w="400" link="/poster-prompts/mid-century-modern-graphic/" caption="Mid-century Modern Graphic — echoing “The Flood” without drawing one" %}
</div>

You still need to tweak the prompt, or just roll the dice a few times. The website shows the first shot for each prompt, warts and all. A second try might have been better, or might have been worse.

The new prompts are _way_ longer than V1, and perhaps take some control away from the user. Used as intended - copy-pasted into ChatGPT - it can of course be tweaked. But the audience that would tweak it is possibly an audience that doesn't need the hand-holding these prompts do.

# Ferrets?

It still chooses to use ferrets a lot of the time.
Well, the ferrets _are_ good. But, by design now,
in ChatGPT it's going to show the user what it's
chosen, before producing the image. It offers a
shortlist of other subjects, and the user can ask
for any of the alternatives.

# Other stuff

It's been pointed out that you might be able to get better results by letting AI generate a code-based format like Postscript or SVG. Here it could lay out real fonts, give you elements you could adjust yourself. This is all true, and something that's either already available in tools like Photoshop or Canva, or with a skill and a code agent.

But here we're trying to demonstrate what a harried
PTA parent can achieve in a chatbot.

[One hundred poster prompts](/poster-prompts/).
