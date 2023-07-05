---
title: "Destringing update and rendering logic"
date: 2023-06-27T09:52:12+02:00
description: ""
---

## Context
- I have a 3d cellular automata
- I have logic to render this automata
- I will have logic to update this automata
- This logic should optimally be split up.
  - Independent updating of the CA
  - Multiple renderviews
  - Lower complexity of the codebase

## Problem
I want a system that is able to update the CA buffer independently from the render code. As well as independable triggerable by the GUI.

