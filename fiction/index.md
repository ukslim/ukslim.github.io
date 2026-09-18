---
layout: page
title: Fiction
permalink: /fiction/
description: Short stories co-written with AI — fiction by JH and Claude.
---

These stories were written as a collaboration between Artificial Intelligence Large Language Models agents and me. I don't want to claim I wrote them, because I very much didn't. I suppose I commissioned them, and moulded them. I enjoyed reading them, so you might too.

My process is to have a long brainstorm with the agent about the subject matter. This helps me decide what I want, but also fills the agent's context with source material. Sometimes I rig that context by copying material between agents.

Then I dictate a structure, in as much or as little detail as I like, and let it write a draft. Then I read it, ask for changes, make manual changes, and keep moulding until I'm happy with it.

I make some attempts to avoid a grating AI tone of voice, through a combination of hand-editing, providing examples, and prompting for tone. Otherwise,
fooling the reader into believing AI had no hand in it, is not a goal.

In some stories I share some of my workings - partial transcripts or descriptions of the chats that produced the story. The wider terms for that practice are in [The Kladde 26 Manifesto](https://kladde26.org/).

{% assign stories = site.fiction | sort: 'date' | reverse %}

<ul class="post-list">
  {% for story in stories %}
  {% unless story.path contains '.src.md' %}
  <li>
    <span class="post-meta">{{ story.date | date: "%-d %B %Y" }}</span>
    <h3>
      <a href="{{ story.url }}">{{ story.title }}</a>
      {% assign source_path = story.path | replace: '.md', '.src.md' %}
      {% assign source = site.fiction | where: 'path', source_path | first %}
      {% if source %}
      <span class="fiction-workings"><a href="{{ source.url }}">(workings)</a></span>
      {% endif %}
    </h3>
  </li>
  {% endunless %}
  {% endfor %}
</ul>
