---
layout: page
title: Fiction
permalink: /fiction/
description: Short stories co-written with AI — fiction by JH and Claude.
---

These stories were written as a collaboration between AI LLMs and me. I don't want to claim I wrote them, because I very much didn't. I suppose I commissioned them, and moulded them. I enjoyed reading them, so you might too.

My process is to have a long brainstorm with the LLM about the subject matter. This helps me decide what I want, but also fill's the LLM's context with source material.

Then I dictate a structure, in as much or as little detail as I like, and let it write a draft. Then I read it, ask for changes, make manual changes, and keep moulding until I'm happy with it.

I make some attempts to avoid a grating AI tone of voice, through a combination of hand-editing, providing examples, and prompting for tone. Otherwise,
fooling the reader into believing AI had no hand in it, is not a goal.

{% assign stories = site.fiction | sort: 'date' | reverse %}

<ul class="post-list">
  {% for story in stories %}
  {% unless story.path contains '.src.md' %}
  <li>
    <span class="post-meta">{{ story.date | date: "%-d %B %Y" }}</span>
    <h3><a href="{{ story.url }}">{{ story.title }}</a></h3>
  </li>
  {% endunless %}
  {% endfor %}
</ul>
