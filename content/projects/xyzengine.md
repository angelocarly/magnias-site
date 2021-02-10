---
title: "Xyzengine"
date: 2017-10-04T14:59:05+02:00
description: "A voxel engine written in Java using the LibGDX game development library."
preview: "/img/xyzengine/world.png"
---

A game engine written in Java using the [LibGDX](https://libgdx.badlogicgames.com) game development library.

During my first year studying IT in college, I spent my extra time in the Java Programming lessons developing
a little game engine in Java. It wasn't going to get used for anything special, but just learning about different
rendering techniques and OpenGL was thrilling enough to keep building on it.

My goal was to create a little voxel engine (like minecraft), but with physics and lighting elements in it.
And to be honest, I think it worked pretty well. The only extra feature I would wish to have implemented is deferred lighting that works with point-light.
At the moment only directional lights are possible.

In the screenshot you can see the terrain with two directional lights, hence everything has two shadows.
![worldimage](/img/xyzengine/world.png)

The physics required some more thinking. You can't just add every single block in the scene as a collidable cube.
The scene is about 32 blocks high, 256 blocks wide and 256 blocks in length. If unoptimized, the physics engine would 
have to check 32*256*256 = 2097152 different instances of cubes. The physics engine would/(did) definitely shit the bed.

To remedy this, I used a greedy meshing algorithm with the help of [this great writeup by 0fps](https://0fps.net/2012/06/30/meshing-in-a-minecraft-game/).
A greedy meshing algorithm basically tries to combine as much cubes in a single cube. 
Which makes it possible to combine all the cubes in the scene into way less bigger cubes.  
You can see this in the following screenshot which shows all the physics objects in the scene. Great isn't it!
![worldimage](/img/xyzengine/world_wire.png)

Now with these performant physics we can go a pretty crazy!
![worldimage](/img/xyzengine/physics.png)

You can view the source code or try this engine here:  
[Github repo](https://github.com/angelocarly/xyzEngine)  
[Binaries](https://github.com/angelocarly/xyzEngine/releases)
