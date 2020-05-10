---
title: "Signald Tui"
date: 2020-05-09T02:28:48+02:00
draft: true
description: "A Signal client with a terminal interface written in Rust."
preview: "/img/signal/chat.png"
---

This program is a terminal client that interfaces with [signald](https://gitlab.com/thefinn93/signald) to communicate
with the signal protocol. I wrote it to improve my skills with the [Rust programming language](https://www.rust-lang.org).

There were no existing crates (Rust libraries) to interface with signald, so I decided to write my [own](https://crates.io/crates/signald-rust).
This way anyone else should be able to create his own library/chatbot in Rust.

The client itself is capable of retrieving al your Signal contacts, retrieving all messages you might have missed and sending messages to your contacts.
You can also navigate between panes using the alt key and vim bindings.

I learned a lot of Rust concepts from watching other similar projects, definitely check out [spotify-tui](https://github.com/Rigellute/spotify-tui)!

![signald-tui](/img/signal/chat.png)
[Github](https://github.com/angelocarly/signald-tui)
