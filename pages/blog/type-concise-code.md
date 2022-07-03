---
template: text.html
title: Type Concise Code
subtitle: Thoughts on typing
date: 2022-07-03
slug: type-concise-code
---

In Recent for couple of projects, worked on Python with typing extensions. Usually I will try to enjoy the typeless systems, when working on Javascript or Python, but after typescript, I started to admiring typing extensions also. Typescript eliminates all the insecure feeling while typing JS code, at least for me personally. When dealing with dictionaries often, these extensions really helped. For functional constructs, it gave feel of using type systems, without bringing class templates. But wait, apart from thought process, is there any other advantage?

Dynamically typed (Typeless - In literal context) programming languages are always tagged as  inefficient compared to compiled ones. Obviously we need to sacrifice either one feature, to get what we want. But interpreters can try to optimise the code in compilation stages if the code contains type concise implementation. One of the example can be chromium V8 engines’s hidden class implementation. Basically V8 will create internal classes for the objects we have created. In short, If some of the objects have same template, then V8 internally represents this objects under same class.

In languages like C, if we want to access the Object’s property (Of course, there is no objects in c, let’s make it as alias for structures), we need the exact location of attribute the exists inside the object.

```c
 void *myObj = getMyObj()
 int oneOfTheAttribute = *(int *)(myObj+3)
```

Here while writing code we knew that,  in the third offset there is one attribute exists, but for less typed and dynamically typed languages, this is not an easy Job. Thats why engines like V8 internally implements those kind of abstractions. It reduces the access time when retrieving object’s property, if the code is written in way that it mimics some class or template type for a cluster of objects. So while writing a code, being aware of the types that we are dealing with will lead to more optimised execution.

It is not about V8, browser engines, or optimisations. Writing type concise code will provide right clarity towards code and other pros like optimisation implicitly.