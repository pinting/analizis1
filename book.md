# Introduction to Mathematical Analysis and Calculus

### *Foundations of the Real Number System*

---

> *"God made the integers, all else is the work of man."*
> — Leopold Kronecker

---

## Preface

This book grew out of a set of introductory lecture notes for a first course in Mathematical Analysis — or, as it is traditionally known, *Differenciál és Integrálszámítás* (Differential and Integral Calculus). The goal is not merely to teach you to compute derivatives and integrals, but to build the rigorous intellectual framework upon which all of modern calculus rests.

Analysis is the art of making the infinite precise. When Archimedes approximated the area of a circle by inscribing polygons with ever more sides, he was doing analysis — even if the formal language had not yet been invented. When Newton computed the instantaneous velocity of a falling apple, he reached for ideas that would take two more centuries to make rigorous.

This text follows the classical European tradition: we begin with the number systems, move to the ordering properties of real numbers, develop the absolute value and the triangle inequality, introduce intervals and the extended real line, and culminate with the concept of bounds and the **Completeness Axiom** — the single most important property that distinguishes ℝ from ℚ and makes calculus possible.

Each chapter contains:
- **Motivating questions** to orient your thinking
- **Formal definitions and theorems** stated with full precision
- **Complete proofs** with every step explained
- **Worked examples** that illustrate the concepts
- **Historical context** that connects the mathematics to human stories
- **Exercises** for practice and deeper exploration

Let us begin.

---



## Chapter 1: What is Mathematical Analysis?

### 1.1 The Big Picture

Welcome to Mathematical Analysis! If you've ever taken a calculus class, you might think of it as a set of rules for finding derivatives (like "bring down the exponent and subtract one") and computing integrals. **Mathematical Analysis is the "behind-the-scenes" machinery that makes all of calculus actually work.** It is the rigorous, logical foundation of the mathematics of the infinitely small and the infinitely large.

While standard algebra deals with finite, clear-cut operations—adding two numbers, multiplying them, or solving an equation like $2x + 3 = 7$—analysis steps into the wild and continuous world of *processes that go on forever*. It asks profound questions:

- What does it actually mean to add up an *infinite* number of things and get a finite answer? (For example, $1/2 + 1/4 + 1/8 + ... = 1$).
- How can an object have a specific speed at a single, frozen "instant" in time, if speed is distance divided by time, and zero time has passed?
- How do we calculate the exact area of curved, irregular shapes when all our basic formulas are for rectangles and triangles?

These questions are easy to ask, but incredibly tricky to answer with absolute certainty. To answer them without running into logical contradictions, mathematicians had to carefully rebuild math from the ground up.

### 1.2 Two Motivating Problems

Let's look at two classic problems that show why we need analysis, specifically the concept of a **limit**. 

#### Problem 1: Area of a Circle

Imagine you want to compute the area of a circle with a radius $r$. You don't know the formula $A = \pi r^2$ yet. All you know how to do is find the area of straight-sided shapes, like triangles and squares.

Around 250 BC, the brilliant Greek mathematician Archimedes came up with a clever trick: the **method of exhaustion**. He drew a regular polygon (like a square) inside the circle. The square doesn't cover the whole circle, so its area is just an approximation. 

But what if you use a hexagon (6 sides)? It covers more of the circle. What if you use a dodecagon (12 sides)? Even better!

```text
n = 4 (Square):     Leaves a lot of empty space inside the circle.
n = 6 (Hexagon):    Fills up more space.
n = 12:             Getting very close to the circle's edge.
n = 100:            To the naked eye, it looks exactly like a circle.
n → ∞ (Infinity):   The polygon's area mathematically approaches the circle's true area.
```

The crucial leap of imagination here is that the true area of the circle isn't the area of the 100-sided shape, or the 1,000,000-sided shape. It is the **limit** of these areas as the number of sides grows larger and larger, without any bound. 

In modern math symbols, if $A_n$ is the area of a polygon with $n$ sides drawn inside the circle, we write:

> Area of circle = $\lim_{n \to \infty} A_n = \pi r^2$

This translates to: "The limit of $A_n$, as $n$ goes to infinity, equals $\pi r^2$."

#### Problem 2: Instantaneous Velocity

Imagine you drop a stone from a tall building. Physics tells us that after $t$ seconds, the stone has fallen a distance of exactly $s(t) = \frac{1}{2} g t^2$ meters (where $g$ is gravity, roughly $9.81$ m/s²).

Here is the puzzle: What is the stone's exact speed (velocity) at *precisely* $t = 3$ seconds?

If you try to use the standard formula for speed (Speed = Distance / Time), you run into a brick wall. At a single instant, the time elapsed is $0$, and the distance traveled is $0$. You get $0/0$, which is mathematical nonsense.

Instead, we can compute the *average* velocity over a tiny window of time, starting at $t$ and ending a tiny bit later at $t + \Delta t$ (where $\Delta t$, pronounced "delta t", just means "a small change in time").

> Average Velocity = $\frac{\text{Change in distance}}{\text{Change in time}} = \frac{s(t + \Delta t) - s(t)}{\Delta t}$

Let's plug our formula $s(t) = \frac{1}{2} g t^2$ into this:

> Average Velocity = $\frac{\frac{1}{2}g(t + \Delta t)^2 - \frac{1}{2}gt^2}{\Delta t}$

If you expand the squared part $(t + \Delta t)^2$ to $t^2 + 2t\Delta t + (\Delta t)^2$, and do some algebraic simplification, you will find that the top part simplifies nicely, and you can cancel out the $\Delta t$ on the bottom! You are left with:

> Average Velocity = $gt + \frac{1}{2}g \cdot \Delta t$

Now, here is the magic of analysis: what happens as that time window $\Delta t$ shrinks down to nothing? As $\Delta t$ gets closer and closer to $0$, the piece $\frac{1}{2}g \cdot \Delta t$ also shrinks to $0$. 

The average velocity smoothly approaches exactly $gt$. This target value is the **instantaneous velocity**. 

We write this as a derivative:
> $v(t) = \frac{ds}{dt} = gt$

Figuring out how to rigorously and logically divide by something that is shrinking to zero (without actually dividing by zero, which is illegal) is the conceptual heart of calculus.

### 1.3 A Brief History of Analysis

To appreciate mathematical analysis, it helps to know the centuries of struggle it took to invent it.

#### The Seeds: Ancient Greece (c. 300 BC)

The Greeks, like Eudoxus and Archimedes, used geometric tricks (like the polygon in the circle) to calculate areas. But they were deeply troubled by the concept of infinity. 

A philosopher named Zeno proposed maddening paradoxes. For example, "Achilles and the Tortoise" argued that a fast runner can never catch a slow tortoise if the tortoise has a head start. Why? Because by the time Achilles reaches the tortoise's starting point, the tortoise has moved a little bit forward. When Achilles reaches that new point, the tortoise has moved again. Because this process repeats infinitely, Zeno argued motion is an illusion! It took over 2,000 years and the invention of mathematical limits to firmly resolve Zeno's paradoxes.

#### The Revolution: XVII–XVIII Century

Fast forward to 1665. The Great Plague hit England, and Cambridge University shut down. A 23-year-old student named **Isaac Newton** went back to his family farm. Stuck at home, he spent two miraculous years inventing calculus (which he called the "method of fluxions") and the laws of physics.

Around the same time in Germany, **Gottfried Wilhelm Leibniz** independently invented calculus. He came up with the elegant symbols we still use today, like $\int$ for integration (an elongated "S" for "sum") and $dx$ or $dy$ for tiny changes.

Newton and Leibniz ended up in a bitter, lifelong feud over who invented it first, splitting the mathematical world in two.

#### The Rigorization: XIX–XX Century

By the 1800s, mathematicians were using calculus to build bridges, study planets, and invent engines. But honestly? The math was held together with duct tape. They talked about "infinitely small quantities" (infinitesimals) as if they were real numbers, which led to confusing contradictions. 

Three towering figures stepped in to clean up the mess and create true **Mathematical Analysis**:

1. **Augustin-Louis Cauchy (1789–1857):** He started pinning down strict, logical definitions for what a "limit" actually is, rather than just waving his hands.
2. **Karl Weierstrass (1815–1897):** He invented the famous "epsilon-delta ($\epsilon-\delta$)" definition of a limit, which completely eliminated the fuzzy idea of "infinitesimals" and replaced it with air-tight logic using inequalities.
3. **Richard Dedekind (1831–1916):** He realized that to understand limits, we first had to rigorously define what a "real number" actually is, filling in the logical gaps in the number line.

### 1.4 The Key Concepts

In this book, we will build the house of Analysis from the ground up. It rests on four main pillars:

1. **Limits:** The logical tool to describe the exact value a process is heading towards, even if it never actually gets there.
2. **Continuity:** The mathematical way to describe a function or curve that has no jumps, breaks, or teleportation.
3. **Differentiation:** Finding the precise rate of change (like speed) at a single, frozen instant.
4. **Integration:** The precise way to accumulate or add up an infinite number of infinitely small quantities (like finding the area under a squiggly curve).

Before we can do any of that, we have to start at the very beginning: What actually *is* a number? That is our next chapter.

---

### Exercises for Chapter 1

**1.1.** Archimedes showed that the area of a regular $n$-sided polygon inscribed in a circle of radius $r$ is $A_n = \frac{1}{2} n r^2 \sin(2\pi/n)$. Using a calculator, compute $A_{10}$, $A_{100}$, and $A_{1000}$ for a circle with radius $r = 1$. Compare your answers to the value of $\pi$. What do you notice as $n$ gets larger?

**1.2.** Go back to the falling stone formula: $s(t) = \frac{1}{2}(9.81)t^2$. Compute the average velocity, which is $\frac{s(t_2) - s(t_1)}{t_2 - t_1}$, over three shrinking time intervals: 
- From $t = 3$ to $t = 3.1$
- From $t = 3$ to $t = 3.01$
- From $t = 3$ to $t = 3.001$
What exact number do these averages appear to be zooming in on?

**1.3.** Research question: What was the Newton–Leibniz priority dispute about? Who do modern historians generally credit with the independent discovery of calculus?

---


---

## Chapter 2: The Number Systems

> *"The natural numbers were created by God; everything else is the work of humans."* — Leopold Kronecker

Before we can do advanced calculus, we need to know what a "number" actually is. You have used numbers your whole life, but in mathematical analysis, we need to build them up logically, step by step, to ensure there are no hidden flaws in our foundation.

### 2.1 Natural Numbers $\mathbb{N}$

The most basic mathematical objects are the **natural numbers**, denoted by the special symbol $\mathbb{N}$:

> **Definition 2.1 (Natural Numbers).**
> $\mathbb{N} = \{1, 2, 3, 4, 5, ...\}$

These are the numbers you use to count things: one apple, two apples, three apples. 

In math, we like to talk about operations (like addition) being **closed**. Imagine a box containing all the natural numbers. If you reach in, pull out any two numbers, add them together, and the result is *always* another number found inside that same box, we say the box is "closed under addition." 

$\mathbb{N}$ is closed under addition (e.g., $2 + 3 = 5$, which is in $\mathbb{N}$) and multiplication ($2 \times 3 = 6$, which is in $\mathbb{N}$). 

But $\mathbb{N}$ is **not** closed under subtraction! If you have $3$ apples and I ask for $5$, you can't give them to me. The math problem $3 - 5$ has no answer inside the box of natural numbers. 

> **A quick note:** Some mathematicians like to include $0$ in the natural numbers, starting the list at $0, 1, 2, 3...$. In this book, we start at $1$. If we want to include zero, we will explicitly write $\mathbb{N}_0 = \{0, 1, 2, 3, ...\}$.

### 2.2 Integers $\mathbb{Z}$

Because we hate equations that have no answers, we invented negative numbers and zero to fix the subtraction problem. This bigger box of numbers is called the **integers**, denoted by $\mathbb{Z}$ (from the German word *Zahlen*, meaning "numbers"):

> **Definition 2.2 (Integers).**
> $\mathbb{Z} = \{..., -3, -2, -1, 0, 1, 2, 3, ...\}$

Now, every subtraction problem like $3 - 5 = -2$ has an answer that lives inside our box. We say $\mathbb{Z}$ is closed under addition, subtraction, and multiplication.

But humans aren't satisfied yet. What happens if you try to divide? The problem $7 \div 3$ has no answer inside the integers box. There is no integer you can multiply by $3$ to get $7$. $\mathbb{Z}$ is **not** closed under division.

### 2.3 Rational Numbers $\mathbb{Q}$

To fix the division problem, we invent fractions. We call this new, even bigger box the **rational numbers**, denoted by $\mathbb{Q}$ (for "quotient"):

> **Definition 2.3 (Rational Numbers).**
> $\mathbb{Q} = \{ \frac{p}{q} \text{ such that } p \text{ and } q \text{ are integers, and } q \neq 0 \}$

A rational number is simply any number that can be written as a perfect ratio of two integers. (We forbid dividing by zero, because that breaks the universe). 

Examples of rational numbers: 
- $\frac{3}{4}$ 
- $\frac{-7}{2}$ 
- $0$ (because $0 = \frac{0}{1}$) 
- $5$ (because $5 = \frac{5}{1}$)

The rational numbers are incredibly packed together. In fact, they are **dense**. This means that if you pick *any* two rational numbers, no matter how close together they are (like $0.1$ and $0.11$), you can always find another rational number squeezed right between them (like $0.105$). 

Because there are infinitely many fractions squeezed between any two fractions, you might intuitively think that $\mathbb{Q}$ makes a solid, continuous number line with no microscopic gaps or holes.

For thousands of years, ancient mathematicians thought exactly this. They were completely wrong.

### 2.4 The Inadequacy of $\mathbb{Q}$: The Irrationality of $\sqrt{2}$

Around 500 BC, the followers of Pythagoras (who famously discovered $a^2 + b^2 = c^2$) made a horrifying discovery. 

If you draw a square where each side is exactly $1$ unit long, and you draw a diagonal line across it, the Pythagorean theorem says the length of that diagonal is $c^2 = 1^2 + 1^2 = 2$, which means the length is $\sqrt{2}$.

The Pythagoreans realized that **there is no fraction in the universe that exactly equals $\sqrt{2}$.** No matter how large the integers $p$ and $q$ are, $\frac{p}{q}$ will never hit $\sqrt{2}$ perfectly. It can get incredibly close, but it will always miss. 

This means the rational number line actually has a "hole" exactly where $\sqrt{2}$ should be! Numbers that cannot be written as fractions are called **irrational numbers**.

Let's prove this. This is one of the most famous and beautiful proofs in all of mathematics. We will use a strategy called **Proof by Contradiction**: we will assume that $\sqrt{2}$ *is* a fraction, and show that this assumption leads to a logical explosion. 

Before we begin, we need one fact: **The Fundamental Theorem of Arithmetic**. This rule states that every whole number greater than $1$ is made of a unique recipe of prime numbers multiplied together. (For example, $12 = 2 \times 2 \times 3$. There is no other combination of primes that multiplies to 12). If you square a number, you just double its recipe. So, in the prime recipe of a perfect square (like $12^2 = 144 = 2 \times 2 \times 2 \times 2 \times 3 \times 3$), every prime number must appear an **even** number of times.

> ***Theorem 2.4.** $\sqrt{2}$ is irrational. It does not belong to $\mathbb{Q}$.*

**The Proof:**

**Step 1: Make the opposite assumption.**
Assume for the sake of argument that $\sqrt{2}$ *is* a perfectly good rational number. That means we can write it as a fraction of two integers, $p$ and $q$:

> $\sqrt{2} = \frac{p}{q}$

Let's also assume this fraction is fully simplified (reduced to lowest terms). If $p$ and $q$ share any common factors, we cancel them out first.

**Step 2: Get rid of the square root.**
Let's square both sides of the equation to make it easier to work with.

> $2 = \frac{p^2}{q^2}$

Now, multiply both sides by $q^2$ to get rid of the fraction:

> $2q^2 = p^2$   *(We will call this Equation ★)*

**Step 3: Analyze the prime number "recipes" (factorizations).**
Equation ★ says that the number on the left ($2q^2$) is the exact same number as the number on the right ($p^2$). Therefore, their prime number recipes must be exactly identical. Let's count how many times the prime number **2** appears in each recipe.

- **Look at the right side ($p^2$):** Because it is a perfect square, the prime number 2 must appear an **even** number of times in its recipe (maybe 0 times, maybe 2 times, maybe 4 times... but definitely even).
- **Look at the left side ($2q^2$):** Here we have a perfect square ($q^2$) being multiplied by an extra $2$. Just like before, $q^2$ has an **even** number of 2s in its recipe. But wait! We are multiplying it by that extra 2 sitting in front. An even number of 2s, plus one more 2, means the total number of 2s on the left side is **odd**.

**Step 4: The Contradiction.**
We just proved that the number of 2s on the left side is **odd**, but the number of 2s on the right side is **even**. 

But wait... an odd number cannot equal an even number! And Equation ★ said the left side and right side must be the exact same number with the exact same prime recipe. 

This is impossible. The universe has broken. Since our logic in steps 2 and 3 was flawless, the only possible explanation is that our very first assumption in Step 1 was completely false.

Therefore, $\sqrt{2}$ cannot be written as a fraction. It is irrational. **(End of proof.)**

**What this means:** The rational number line is full of microscopic holes. $\sqrt{2}$ is a hole. $\sqrt{3}$, $\sqrt{5}$, $\pi$, and the special number $e$ are all holes. In fact, there are infinitely more holes than there are fractions!

### 2.5 The Real Numbers $\mathbb{R}$: An Informal Introduction

To do calculus properly, we cannot have a number line full of holes. If a moving object passes over a "hole," where is it at that exact instant? 

To fix this, mathematicians constructed the **real numbers**, denoted by $\mathbb{R}$. The real numbers consist of all the rational numbers, *plus* all the irrational numbers filling in the holes. 

Informally, you can think of the real numbers as all the numbers that can be written as a decimal, even if that decimal goes on forever without repeating:
- $1/3 = 0.333333...$ (Rational, repeating)
- $\sqrt{2} = 1.41421356...$ (Irrational, never repeats, never ends)
- $\pi = 3.14159265...$ (Irrational, never repeats, never ends)

Constructing the real numbers logically from scratch without using decimals (using techniques like "Dedekind cuts") is incredibly difficult and usually saved for advanced university classes. Instead, in this course, we will accept that the solid real number line $\mathbb{R}$ exists, and we will describe its rules.

The real number system $\mathbb{R}$ is like a game played with specific rules, called axioms. It has two operations (addition $+$ and multiplication $\cdot$), and a way to compare sizes (less than or equal to, $\le$).

There are three groups of rules (axioms) that govern the real numbers:
1. **Field Axioms:** The basic rules of arithmetic (e.g., $a+b = b+a$, and every number has a negative). We assume you know these from algebra.
2. **Order Axioms:** The rules governing how we decide if one number is bigger than another using $\le$ or $<$. (We will cover these in Chapter 3).
3. **The Completeness Axiom:** This is the magical rule that explicitly guarantees there are no "holes" in the real number line. It is what separates $\mathbb{R}$ from $\mathbb{Q}$. (We will cover this later).

---

### Exercises for Chapter 2

**2.1.** Try reproducing the proof we just did! Prove that $\sqrt{3}$ is irrational using a proof by contradiction, exactly like the one for $\sqrt{2}$. (Hint: instead of counting the number of 2s in the prime recipe, count the number of 3s).

**2.2.** Show that if $p$ is any prime number (like 5, 7, 11...), then $\sqrt{p}$ is irrational. 

**2.3.** Is the sum of two irrational numbers always irrational? (Think carefully: what if you add $\pi$ and $-\pi$?). What about the product of two irrational numbers? (What is $\sqrt{2} \times \sqrt{2}$?). 

**2.4.** Between the fractions $1/3$ and $1/2$, find three other fractions. Then, try to explain in your own words why, between *any* two fractions, you can always find another one. (Hint: how do you find the exact middle of two numbers?)

**2.5.** Look up **Dedekind cuts**. In one paragraph, explain the idea behind Richard Dedekind's clever method of constructing the real numbers by essentially "slicing" the rational number line in half.

---


---

## Chapter 3: The Ordering of Real Numbers

### 3.1 Motivation

When you look at a number line, it's obvious that numbers further to the right are "bigger" than numbers on the left. You know that 5 is greater than 3, and -10 is less than 0. 

One of the most fundamental properties of the real numbers ($\mathbb{R}$) is that they come with this natural **ordering**. We can always pick any two real numbers and determine which one is larger, or if they are perfectly equal.

Why do we need a whole chapter for this? It seems like common sense! The reason is that in Mathematical Analysis, we have to prove things with airtight logic. We will be working with abstract variables like $x$, $y$, and $\epsilon$ (epsilon), and we will need to manipulate inequalities (like $x < y$) to create complex proofs. To do this without making mistakes, we must lay down the exact, precise rules—the **axioms**—for how "less than" and "greater than" actually work. 

### 3.2 Basic Notation

Let's establish our symbols for comparing two real numbers, $a$ and $b$:

| Symbol | How to say it | Mathematical Meaning |
|---|---|---|
| $a < b$ | "$a$ is strictly less than $b$" | This is our core, foundational concept. |
| $a > b$ | "$a$ is strictly greater than $b$" | This means the exact same thing as $b < a$. |
| $a \le b$ | "$a$ is less than or equal to $b$" | Either $a < b$ is true, OR $a = b$ is true. |
| $a \ge b$ | "$a$ is greater than or equal to $b$"| Either $a > b$ is true, OR $a = b$ is true. |

In advanced math terms, we say the real numbers together with the rule $\le$ form an **ordered set**. 

### 3.3 The Four Ordering Axioms

An axiom is a foundational rule that we accept as absolutely true, without needing a proof. It's the starting point of our logical game. There are exactly four axioms that govern how inequalities work for real numbers. Everything else you learned in middle school algebra can be derived from these four rules.

> **Axiom 1: Trichotomy (The "Rule of Three")**
> For *any* two real numbers $a$ and $b$, exactly **one** of the following three statements is true:
> $a < b$,    or    $a = b$,    or    $b < a$.

**What it means for dummies:** You can always compare two numbers. If you take two numbers, they are either the same number, or one is bigger than the other. There are no "incomparable" mysterious numbers floating around. Also, these options are mutually exclusive: if $a < b$ is true, then $a$ definitely does not equal $b$.

**Example:** Let $a = \pi$ (which is $3.14159...$) and $b = 22/7$ (which is $3.14285...$). Because $3.14159...$ is smaller than $3.14285...$, we know $\pi < 22/7$. Because of Trichotomy, we can instantly guarantee that $\pi$ does not equal $22/7$. 

> **Axiom 2: Transitivity (The "Chain" Rule)**
> For all real numbers $a$, $b$, and $c$: 
> If $a < b$ AND $b < c$, then you can automatically conclude $a < c$.

**What it means for dummies:** If Alice is shorter than Bob, and Bob is shorter than Charlie, then Alice is definitely shorter than Charlie. This allows us to link inequalities together into long chains. 

**Example:** We know that $2 < \pi$. We also know that $\pi < 4$. Thanks to Transitivity, we can bypass $\pi$ entirely and conclude that $2 < 4$. 

> **Axiom 3: Addition Preserves Order**
> For all real numbers $a$, $b$, and $c$: 
> If $a < b$, then $a + c < b + c$.

**What it means for dummies:** If you have an inequality, you can add the exact same number to both sides, and the inequality stays true. The "seesaw" stays tilted in the same direction. Notice that $c$ can be *any* number—it can be positive, negative, or zero! Adding a negative is the same as subtracting, so this rule means you can subtract the same number from both sides, too.

**Example:** We know $3 < 5$. Let's set $c = -10$. If we add $-10$ to both sides, we get $3 + (-10) < 5 + (-10)$, which simplifies to $-7 < -5$. This is absolutely true! 

> **Axiom 4: Positive Multiplication Preserves Order**
> For all real numbers $a$ and $b$, and for all **positive** numbers $c$ (meaning $c > 0$): 
> If $a < b$, then $ac < bc$.

**What it means for dummies:** You can multiply both sides of an inequality by the exact same number, and the inequality stays true—**BUT only if the number you are multiplying by is positive!** 

**Example of it working:** $2 < 7$. Let's multiply both sides by $3$ (since $3 > 0$). We get $2 \times 3 < 7 \times 3$, which is $6 < 21$. True!

**Why the "positive only" rule is crucial:** Let's see what happens if we ignore the rule and multiply by a negative number. Start with $2 < 7$. Multiply both sides by $-1$. You get $-2$ on the left and $-7$ on the right. Is $-2 < -7$? No! $-2$ is *greater* than $-7$! 
When you multiply an inequality by a negative number, the inequality sign *flips backwards*. Axiom 4 doesn't cover negative numbers; it only promises safety for positive ones.

### 3.4 Proving Things Using the Axioms

You might be thinking, "Wait, you just told me that multiplying by a negative number flips the sign. Why isn't that an Axiom?" 

Because in math, we want as few axioms as possible. If we can *prove* a rule using our starting axioms, it becomes a **Theorem** or **Proposition** instead. Let's flex our logical muscles and actually prove some middle-school algebra rules using *only* the four axioms above.

> ***Proposition 3.1.** If $a < b$ and we multiply by a negative number $c$ (so $c < 0$), the sign flips: $ac > bc$.*

**Proof for dummies:**
We are given that $c < 0$. 
Using Axiom 3 (Addition), let's add $-c$ to both sides of $c < 0$. 
We get $c + (-c) < 0 + (-c)$, which simplifies to $0 < -c$.
This means $-c$ is a positive number! (For example, if $c = -5$, then $-c = 5$, which is positive).

Now, let's take our original inequality: $a < b$.
Since $-c$ is a positive number, Axiom 4 says we are allowed to multiply both sides by it without flipping the sign:
> $a(-c) < b(-c)$
This is the same as:
> $-ac < -bc$

Now we want to get rid of the negative signs. Let's use Axiom 3 (Addition) again. Let's add $(ac + bc)$ to both sides.
> $-ac + (ac + bc) < -bc + (ac + bc)$
Simplify both sides:
> $bc < ac$

Read backwards, $bc < ac$ means exactly the same thing as $ac > bc$. The sign has successfully flipped! We proved it! **(End of proof.)**

Let's try a mind-bending one. 

> ***Proposition 3.2.** If you square any non-zero number, the answer is always positive. In other words, $a^2 > 0$. As a result, $1 > 0$.*

**Proof for dummies:**
Take any number $a$ (that isn't zero). By Axiom 1 (Trichotomy), there are only two possibilities: either $a > 0$ (it's positive) or $a < 0$ (it's negative). Let's look at both cases.

**Case 1: $a$ is positive ($a > 0$).**
We know $0 < a$. We also know $a$ is positive. By Axiom 4, we can multiply both sides of our inequality by $a$.
> $0 \times a < a \times a$
> $0 < a^2$
So if $a$ is positive, its square is positive. Makes sense.

**Case 2: $a$ is negative ($a < 0$).**
If $a < 0$, then $-a$ must be positive ($-a > 0$). 
Since $-a$ is positive, we can use the logic from Case 1: any positive number squared is greater than 0. 
> $(-a)^2 > 0$
But a negative times a negative is a positive, so $(-a) \times (-a)$ is just $a^2$. Therefore:
> $a^2 > 0$
So even if $a$ is negative, its square is positive!

Finally, why is $1 > 0$? Well, the number 1 is just $1^2$ ($1 \times 1$). Since 1 isn't zero, it must fall into one of the two cases above. In either case, its square ($1^2$, which is 1) must be greater than zero! **(End of proof.)**

> ***Proposition 3.3.** There is no real number $x$ where $x^2 = -1$.*

**Proof for dummies:**
We just proved in Proposition 3.2 that for any real number $x$, $x^2$ is either $0$ (if $x=0$) or strictly greater than $0$. It can never be negative. Therefore, $x^2$ can never be $-1$. 
*(Note: To solve equations like $x^2 = -1$, mathematicians had to invent a completely new type of number called "imaginary numbers" or "complex numbers" ($\mathbb{C}$). But that's a story for a different book!)*

---

### Exercises for Chapter 3

**3.1.** Using only the four axioms, prove that if $a < b$ and $c < d$, then $a + c < b + d$. (Hint: Use Axiom 3 twice, and then link them together with Axiom 2).

**3.2.** Prove that if $a < b$, then the number $\frac{a + b}{2}$ is strictly between $a$ and $b$ (meaning $a < \frac{a+b}{2} < b$). *Geometrically, what does $\frac{a+b}{2}$ represent on a number line?*

**3.3.** Prove that if $0 < a < b$, then $\frac{1}{b} < \frac{1}{a}$. 
*Hint: You are given that $a < b$. Axiom 4 says you can multiply both sides by a positive number. Try multiplying both sides by the positive fraction $\frac{1}{ab}$, and see what cancels out!*

**3.4.** True or false: if $a^2 < b^2$, then $a < b$. Give a rigorous proof if it's true, or a counterexample (a specific pair of numbers that breaks the rule) if it's false.

**3.5.** Using only axioms and the propositions we proved in this chapter, prove that if $a < 0$ and $b < 0$, then $a \times b > 0$. (In other words, prove that a negative times a negative is a positive).

---


---

## Chapter 4: Absolute Value and the Triangle Inequality

### 4.1 Motivation

Imagine you are standing on a long straight road. You take 5 steps forward. Then, you reset and take 5 steps backward. In terms of your final *position* relative to your starting point, you are at +5 and -5 respectively. But in terms of the *total distance* you traveled from the start, both journeys are exactly 5 steps long. 

The **absolute value** of a real number is exactly this idea: it measures a number's "distance from zero" on the number line, completely ignoring whether it's in the positive or negative direction. 

In mathematical analysis, absolute value is one of the most frequently used tools. It shows up everywhere—when we define limits (how close a function gets to a target), continuity (smoothness), and convergence (how sequences settle down). Without a way to measure "distance" between numbers without worrying about negative signs, calculus as we know it wouldn't exist!

### 4.2 Definition

Let's formally define this concept.

> **Definition 4.1 (Absolute Value).**
> For any real number $x$ (written as $x \in \mathbb{R}$), the **absolute value** of $x$, denoted by $|x|$, is defined step-by-step based on the value of $x$:
>
> - $|x| = x$     if $x > 0$  (If it's already positive, leave it alone)
> - $|x| = 0$     if $x = 0$  (The distance from 0 to 0 is just 0)
> - $|x| = -x$    if $x < 0$  (If it's negative, flip its sign to make it positive)

In other words: the absolute value operation $|x|$ acts like a machine that strips away any negative sign and returns the non-negative "magnitude" (or size) of $x$.

**Examples to make this concrete:**
- $|5| = 5$ (Since 5 is positive, it stays 5)
- $|-3| = -(-3) = 3$ (Since -3 is negative, we multiply by -1 to make it positive 3)
- $|0| = 0$
- $|\pi - 4|$: We know $\pi$ is about $3.1415$. So $\pi - 4$ is a negative number (around $-0.858$). Because the inside is negative, the absolute value flips the sign of the whole thing: $-(\pi - 4) = 4 - \pi \approx 0.858$.

**Geometric Interpretation:** 
On the number line, $|x|$ is literally the distance from the point $x$ to the origin $0$. 
More generally, if you have two numbers $a$ and $b$, the expression $|a - b|$ tells you the exact distance between $a$ and $b$ on the number line, regardless of which one is bigger!

```
    ←——— |a−b| ———→
    a                b
────●────────────────●────→ number line
```

### 4.3 Basic Properties

Before we tackle the most famous inequality in math, let's establish a small, useful fact (a "lemma"). 

> ***Lemma 4.2.*** *For all real numbers $x$: $x \le |x|$ and $-x \le |x|$.*

**Conversational Commentary:** 
What is this saying? It's simply saying that the absolute value of a number is always at least as big as the number itself ($x \le |x|$), and it's also at least as big as the "flipped" version of the number ($-x \le |x|$). This makes intuitive sense: $|x|$ is the "biggest version" of $x$ in terms of magnitude because it's forced to be positive or zero.

**Let's deconstruct the proof:**
We can prove this by looking at the two possible situations: either $x$ is positive/zero, or $x$ is negative.

*Case 1: Suppose $x \ge 0$ (x is positive or zero).*
By our definition of absolute value, $|x|$ is just $x$. 
So, does $x = |x|$? Yes! And since they are equal, the statement "$x \le |x|$" is definitely true. 
What about $-x$? Since $x \ge 0$, flipping its sign means $-x \le 0$. But $|x|$ is positive or zero. So $-x$ is negative or zero, while $|x|$ is positive or zero. Thus, $-x \le |x|$ is also true.

*Case 2: Suppose $x < 0$ (x is strictly negative).*
By definition, since $x$ is negative, $|x| = -x$, which makes $|x|$ a positive number.
Since a negative number is always less than a positive number, $x < |x|$ is true.
What about $-x$? Well, since $|x| = -x$, they are exactly equal! Thus, $-x \le |x|$ is true.

In both possible scenarios, the statements hold up. We're done! ∎

Here is another super useful, almost common-sense property:

> ***Lemma 4.3.*** *For all real numbers $x$: $|x| = |-x|$.*

**Proof:** 
- If $x$ is positive (say, 5), then $-x$ is negative (-5). So $|-x| = |-5| = 5 = |x|$.
- If $x$ is zero, $|-0| = |0| = 0 = |x|$.
- If $x$ is negative (say, -3), then $-x$ is positive (3). So $|-x| = |3| = 3 = |-3| = |x|$. 
No matter what, the absolute value ignores the minus sign. ∎

### 4.4 The Triangle Inequality

We have arrived at the **Triangle Inequality**. It is arguably the single most important inequality in mathematical analysis. 

Why is it called that? In geometry, if you draw a triangle, the length of any one side can never be longer than the sum of the other two sides. If you try to take a "shortcut" directly from point A to point B, it will always be shorter than (or equal to) taking a detour through point C.

In algebra, it looks like this:

> ***Theorem 4.4 (Triangle Inequality).***
> *For any real numbers $a$ and $b$:*
>
> $|a + b| \le |a| + |b|$

**What it means intuitively:** 
Think of $a$ and $b$ as walking directions on the number line. 
- If $a$ and $b$ point in the **same direction** (e.g., walk 3 steps right, then 4 steps right), your total distance from start ($|3 + 4| = 7$) is exactly the sum of the individual distances ($|3| + |4| = 7$).
- If they point in **opposite directions** (e.g., walk 3 steps right, then 5 steps left), you "cancel out" some of your distance. Your final distance from start ($|3 + (-5)| = |-2| = 2$) is strictly *less* than the total steps you walked ($|3| + |-5| = 3 + 5 = 8$).

Let's prove this rigorously. 

**Proof:**

Step 1: Use what we already know. From Lemma 4.2, we know that any number is less than or equal to its absolute value. Let's write this down for both $a$ and $b$:
1) $a \le |a|$
2) $b \le |b|$

We also know the same applies to their negative versions:
3) $-a \le |a|$
4) $-b \le |b|$

Step 2: Add them up!
Let's add inequality (1) and (2) together:
> $a + b \le |a| + |b|$     (Let's call this Result I)

Now let's add inequality (3) and (4) together:
> $-a + (-b) \le |a| + |b|$
> $-(a + b) \le |a| + |b|$    (Let's call this Result II)

Step 3: Connect it to the definition of absolute value.
What exactly *is* $|a + b|$? Depending on whether the inside is positive or negative, $|a + b|$ is either equal to $(a + b)$ or it's equal to $-(a + b)$.

- Scenario A: If $a + b$ is positive or zero, then $|a + b| = a + b$. 
  By Result I, we know $a + b \le |a| + |b|$. So, $|a + b| \le |a| + |b|$.
- Scenario B: If $a + b$ is negative, then $|a + b| = -(a + b)$. 
  By Result II, we know $-(a + b) \le |a| + |b|$. So, $|a + b| \le |a| + |b|$.

In every possible universe, $|a + b|$ is less than or equal to $|a| + |b|$. ∎

### 4.5 The Reverse Triangle Inequality

Sometimes we need to know the *minimum* possible difference between things, rather than the maximum. We use a clever spin-off called the Reverse Triangle Inequality.

> ***Corollary 4.5 (Reverse Triangle Inequality).***
> *For all real numbers $a$ and $b$:*
>
> $\big| |a| - |b| \big| \le |a - b|$

**Conversational Commentary:** 
This looks messy with all those bars, but it's just the Triangle Inequality in disguise. It says that the difference between the *magnitudes* of $a$ and $b$ can never be larger than the distance between $a$ and $b$ themselves.

**Proof:**
We will use a clever algebraic trick. We want to apply the regular Triangle Inequality, so we need to write $a$ as a sum. Notice that $a = (a - b) + b$. That’s undeniably true, right? The $-b$ and $+b$ cancel out.

Let's plug that sum into the regular Triangle Inequality:
> $|a| = |(a - b) + b|$
Now treat $(a - b)$ as the first piece, and $b$ as the second piece:
> $|(a - b) + b| \le |a - b| + |b|$

So, we have:
> $|a| \le |a - b| + |b|$

Now, subtract $|b|$ from both sides to get:
> $|a| - |b| \le |a - b|$    (Keep this safe, it's Half 1)

Now, let's do the exact same trick, but swap $a$ and $b$. Start with $b = (b - a) + a$:
> $|b| = |(b - a) + a| \le |b - a| + |a|$

Subtract $|a|$ from both sides:
> $|b| - |a| \le |b - a|$

Remember from earlier that distance is symmetric: the distance from $b$ to $a$ is the same as $a$ to $b$. So, $|b - a| = |a - b|$. Let's substitute that in:
> $|b| - |a| \le |a - b|$

Multiply the whole thing by $-1$ (remember that multiplying an inequality by a negative number flips the inequality sign $\le$ to $\ge$!):
> $-(|b| - |a|) \ge -|a - b|$
> $-|a - b| \le |a| - |b|$    (Keep this safe, it's Half 2)

Combine Half 1 and Half 2 together:
> $-|a - b| \le |a| - |b| \le |a - b|$

This tells us that the number $(|a| - |b|)$ is squeezed between $-|a - b|$ and $+|a - b|$. By the definition of absolute value, this exactly means:
> $\big| |a| - |b| \big| \le |a - b|$ ∎

### 4.6 Mathematical Induction

So far, we know the triangle inequality holds for TWO numbers ($|a + b| \le |a| + |b|$). But what if we have three numbers? Or a hundred numbers? We want to prove it works for *any* amount of numbers. To do this, we need a powerful logical tool.

> **The Principle of Mathematical Induction.**
>
> Let's say you have a list of statements, one for every natural number (1, 2, 3, 4, ...). Let's call them $A_1, A_2, A_3$, and so on. If you can prove two things:
>
> 1. **Base case:** The first statement, $A_1$, is true.
> 2. **Inductive step:** If you *assume* a random statement $A_n$ is true, you can prove that the *very next* statement $A_{n+1}$ must also be true.
>
> Then, like magic, **every single statement in the list** is guaranteed to be true!

**Why does induction work?** 
Imagine an infinite line of dominoes spaced perfectly apart. 
- The **Base case** is you knocking over the very first domino.
- The **Inductive step** is the guarantee that *if* domino number $n$ falls, it is positioned perfectly to knock over domino number $n+1$.
- What happens? The first knocks over the second, the second knocks over the third, the third knocks over the fourth... forever. *Every* domino falls.

Formally, induction captures the idea that the natural numbers (1, 2, 3...) have no "gaps". You can reach every single one just by starting at 1 and adding 1 repeatedly.

**A simple example of induction to warm up:**

> ***Theorem.*** *For any natural number $n$, the sum of the first $n$ numbers is: $1 + 2 + 3 + ... + n = \frac{n(n+1)}{2}$.*

**Proof by induction:**

*Step 1: The Base case ($n = 1$).* 
Let's check if the formula works when $n = 1$.
The left side is just the first number: $1$.
The right side is the formula: $\frac{1(1+1)}{2} = \frac{2}{2} = 1$.
They match! The first domino has fallen. ✓

*Step 2: The Inductive step.* 
Let's assume the formula magically works for some random number $k$. This is called the **induction hypothesis**.
Assumption: $1 + 2 + ... + k = \frac{k(k+1)}{2}$

Now, using this assumption, we *must* prove the formula works for the next number, $k+1$.
Let's look at the sum of the first $k+1$ numbers:
$1 + 2 + ... + k + (k+1)$

Notice that the first part of this ($1 + 2 + ... + k$) is exactly our assumption! Let's substitute our assumed formula in its place:
$= \left[ \frac{k(k+1)}{2} \right] + (k+1)$

Now, let's do some algebra to combine them. We can factor out the common $(k+1)$:
$= (k+1) \cdot \left[ \frac{k}{2} + 1 \right]$
$= (k+1) \cdot \left[ \frac{k}{2} + \frac{2}{2} \right]$
$= (k+1) \cdot \left[ \frac{k+2}{2} \right]$
$= \frac{(k+1)(k+2)}{2}$

Look closely at that final result. That is *exactly* the original formula, but with $k+1$ plugged in instead of $n$. We proved that if $k$ works, $k+1$ works too! 

By the principle of induction, the formula holds for all natural numbers. ∎

### 4.7 The Generalized Triangle Inequality

Now we are equipped to expand the triangle inequality to cover as many numbers as we want!

> ***Theorem 4.6 (Generalized Triangle Inequality).***
> *For any amount $n$ of real numbers $a_1, a_2, ..., a_n$:*
>
> $|a_1 + a_2 + ... + a_n| \le |a_1| + |a_2| + ... + |a_n|$

**Conversational Commentary:** 
This simply says that no matter how many numbers you are adding together, the absolute value of their total sum is always less than or equal to the sum of their individual absolute values. 

**Proof by Mathematical Induction:**

Let $A_n$ be the statement: "For $n$ real numbers, $|a_1 + ... + a_n| \le |a_1| + ... + |a_n|$".

**Base case ($n = 2$):** 
Does it work for 2 numbers? The statement would be $|a_1 + a_2| \le |a_1| + |a_2|$. 
Wait, we already proved this! That was Theorem 4.4, the original Triangle Inequality. The first domino is down. ✓

**Inductive step:** 
Assume the inequality holds for some number of terms $k$ (where $k \ge 2$). 
So our assumption is: $|a_1 + ... + a_k| \le |a_1| + ... + |a_k|$.

Now, we need to prove it works for $k+1$ terms. Let's look at $k+1$ numbers all added together inside an absolute value:
> $|a_1 + a_2 + ... + a_k + a_{k+1}|$

Here is the trick: treat the first $k$ terms as one giant number, and the last term as a second number. Let $A = (a_1 + a_2 + ... + a_k)$ and let $B = a_{k+1}$. 
Substitute them in:
> $|A + B|$

But hey, we know how to handle TWO numbers! We use the original base-case triangle inequality:
> $|A + B| \le |A| + |B|$

Let's plug the actual numbers back in for $A$ and $B$:
> $|(a_1 + ... + a_k) + a_{k+1}| \le |a_1 + ... + a_k| + |a_{k+1}|$

Now, look at the first piece on the right side: $|a_1 + ... + a_k|$. By our induction assumption, we *already agreed* that this piece is less than or equal to $|a_1| + ... + |a_k|$. Let's substitute that larger sum in, which keeps the inequality true:
> $\le (|a_1| + ... + |a_k|) + |a_{k+1}|$

And there we have it! We started with $k+1$ terms bundled together, and showed they are less than or equal to the $k+1$ terms split apart. 

By the domino effect of mathematical induction, this generalized rule holds for any number of terms $n \ge 2$. ∎

---

### Exercises for Chapter 4

**4.1.** Compute $|3 - \pi|$, $|-7 + 2|$, and $\big| |-4| - |7| \big|$.

**4.2.** Prove: for all $x \in \mathbb{R}$, $|x|^2 = x^2$. *Is the converse true?*

**4.3.** Prove the **reverse triangle inequality** directly (without using the forward triangle inequality): $\big| |a| - |b| \big| \le |a - b|$ for all $a, b \in \mathbb{R}$.

**4.4.** Use mathematical induction to prove: for all natural numbers $n$, $n < 2^n$.

**4.5.** Use mathematical induction to prove: for all natural numbers $n$, $1^2 + 2^2 + ... + n^2 = \frac{n(n+1)(2n+1)}{6}$.

**4.6.** When does equality hold in the triangle inequality $|a + b| \le |a| + |b|$? Prove your answer.

**4.7.** Use the triangle inequality to show that for all $a, b \in \mathbb{R}$: $|a - b| \ge |a| - |b|$.


---

## Chapter 5: The Extended Real Line and Intervals

### 5.1 Infinity as a Symbol

In calculus and analysis, we are constantly pushing things to their limits. We want to know what happens when a number gets endlessly large, or when an interval stretches on forever. To talk about this, we need a way to express "forever." We introduce two special symbols: infinity ($+\infty$) and negative infinity ($-\infty$).

> **Definition 5.1.**
> The symbols **$+\infty$** (positive infinity) and **$-\infty$** (negative infinity) are *not real numbers*. They are just conceptual placeholders, or formal symbols, that follow this rule:
>
> $+\infty$ and $-\infty$ are NOT in the set of real numbers ($\mathbb{R}$).
>
> But, for *any* real number $x$, we imagine that $x$ is squeezed between them: $-\infty < x < +\infty$

**Crucial Warnings for Beginners:**
- **Infinity is NOT a number.** You cannot treat it like the number 5 or $-100$. You can't put it in a calculator.
- Because it's not a normal number, ordinary arithmetic breaks down. Expressions like $\infty - \infty$, $0 \cdot \infty$, or $\frac{\infty}{\infty}$ are strictly **undefined**. (In calculus, these are called "indeterminate forms" because you need more information, like limits, to figure out what they act like).
- However, mathematicians do adopt some safe, common-sense shortcuts. For example, if you add a normal number $a$ to infinity, it's still infinity: $a + \infty = +\infty$. If you subtract infinity from a normal number, it gets dragged down to negative infinity: $a - \infty = -\infty$.

### 5.2 The Extended Real Line

Since it's so useful to talk about infinity, we create a new, slightly bigger "universe" of numbers that includes it.

> **Definition 5.2 (Extended Real Line).**
> The **extended real line**, denoted by $\bar{\mathbb{R}}$ (read as "R bar"), is the normal real line glued together with our two new infinity symbols:
>
> $\bar{\mathbb{R}} = \mathbb{R} \cup \{+\infty\} \cup \{-\infty\}$

Think of the extended real line as the standard number line, but we've permanently capped the left and right ends with $-\infty$ and $+\infty$. 

Why do this? It gives us a mathematically legal way to:
- Talk about functions that explode out of bounds (like what happens to $\frac{1}{x}$ as $x$ gets extremely close to $0$).
- Make cleaner, exception-free rules when talking about the "highest possible ceiling" (supremum) or "lowest possible floor" (infimum) of sets, which we will explore in Chapter 6.
- Discuss limits that don't settle on a specific number but just keep growing forever (diverging to infinity).

Visually, it looks like this:

```
−∞ ←———————————————————————————→ +∞
         ... −2  −1   0   1   2  ...
```

### 5.3 Intervals

Intervals are the most fundamental building blocks when we talk about groups of real numbers. An interval represents a single, unbroken, "connected" piece of the number line. No skips, no jumps.

> **Definition 5.3 (Intervals).** Let $a$ and $b$ be two real numbers, where $a \le b$.

**Bounded intervals (Intervals with a clear start and end):**

| Notation | Mathematical Definition | Plain English Name | What it means |
|---|---|---|---|
| $[a, b]$ | $\{x \in \mathbb{R} : a \le x \le b\}$ | Closed interval | Includes all numbers between $a$ and $b$, **including** the boundary points $a$ and $b$ themselves. |
| $(a, b)$ | $\{x \in \mathbb{R} : a < x < b\}$ | Open interval | Includes all numbers between $a$ and $b$, but **excludes** the boundary points. |
| $[a, b)$ | $\{x \in \mathbb{R} : a \le x < b\}$ | Half-open | Includes $a$, but strictly excludes $b$. |
| $(a, b]$ | $\{x \in \mathbb{R} : a < x \le b\}$ | Half-open | Excludes $a$, but strictly includes $b$. |

**The Golden Rule of Intervals:**
- **Square brackets `[]`** mean the endpoint is **included** (the door is closed, keeping the point inside).
- **Round parentheses `()`** mean the endpoint is **excluded** (the door is open, the point falls out).

**Examples to make it click:**
- The closed interval $[2, 5]$ is like saying "every number from 2 to 5, inclusive." It contains 2, it contains 3.7, it contains 4.999, and it contains 5. It does *not* contain 1.99 or 5.01.
- The open interval $(2, 5)$ contains 3.7, 4.99, and 2.0001, but it strictly does *not* contain 2 or 5.
- The half-open interval $[0, 1)$ contains 0, 0.5, and 0.99999..., but does *not* contain 1.

**Unbounded intervals (Intervals that shoot off to infinity):**

| Notation | Mathematical Definition | Name |
|---|---|---|
| $(-\infty, a]$ | $\{x \in \mathbb{R} : x \le a\}$ | Closed ray (to the left) |
| $(-\infty, a)$ | $\{x \in \mathbb{R} : x < a\}$ | Open ray (to the left) |
| $[a, +\infty)$ | $\{x \in \mathbb{R} : x \ge a\}$ | Closed ray (to the right) |
| $(a, +\infty)$ | $\{x \in \mathbb{R} : x > a\}$ | Open ray (to the right) |
| $(-\infty, +\infty)$| $\mathbb{R}$ | The entire real line |

> **Convention Warning!** We *always* use round parentheses `()` next to $+\infty$ and $-\infty$. You will never write $[a, +\infty]$. Why? Because infinity is not a real number! You can never actually reach it, so you can never "include" it in a set of real numbers.

**A quick note on confusing notation:** The open interval notation $(a, b)$ looks exactly like the coordinates for a point on an X-Y graph (like the point $(2, 3)$). Mathematicians just accept this double-meaning. You can almost always tell from the context of the sentence which one they mean. (Fun fact: To avoid this entirely, some European textbooks use backward brackets $]a, b[$ for open intervals instead).

### 5.4 Neighborhoods

If you want to understand limits, derivatives, and continuity, you must understand neighborhoods. It is a way of describing a "bubble" of space around a specific number.

> **Definition 5.4 ($\epsilon$-Neighborhood).** Let's pick a target number $a \in \mathbb{R}$. Now, let's pick a tiny positive radius, called $\epsilon$ (the Greek letter epsilon, $\epsilon > 0$). The **$\epsilon$-neighborhood** of $a$ is defined as the open interval:
>
> $V_\epsilon(a) = (a - \epsilon, a + \epsilon) = \{x \in \mathbb{R} : |x - a| < \epsilon\}$

**Conversational Commentary:**
Let's translate that into plain English. 
Imagine you are standing at point $a$ on the number line. You reach your left arm out by a distance of $\epsilon$, and your right arm out by a distance of $\epsilon$. Everything between your fingertips is the "$\epsilon$-neighborhood" of $a$. 

It is simply the set of all numbers $x$ that are closer to $a$ than a distance of $\epsilon$. 

Remember from Chapter 4 that $|x - a|$ literally means "the distance between $x$ and $a$". So the condition $|x - a| < \epsilon$ literally translates to "the distance between $x$ and $a$ is less than $\epsilon$". 

If we unlock that absolute value, it mathematically means:
$-\epsilon < x - a < \epsilon$
If we add $a$ to all three parts, we get:
$a - \epsilon < x < a + \epsilon$
Which is exactly the open interval $(a - \epsilon, a + \epsilon)$! 

```
    ←——— ε ———→
              ←——— ε ———→
───────●──────●──────●───────→
     a−ε      a      a+ε
```

---

### Exercises for Chapter 5

**5.1.** Write the following sets as intervals (if possible): $\{x \in \mathbb{R} : x^2 < 9\}$, $\{x \in \mathbb{R} : x^2 \ge 1\}$, $\{x \in \mathbb{R} : |x - 3| < 2\}$.

**5.2.** Find the intersection (the overlap) and union (combining both) of the intervals $[1, 4]$ and $(2, 7)$.

**5.3.** Show that the intersection of two open intervals is either completely empty, or it is another open interval.

**5.4.** Prove that for all $a \in \mathbb{R}$, the infinite intersection $\bigcap_{n=1}^{\infty} (a - 1/n, a + 1/n) = \{a\}$. *What happens if we use open intervals... wait, these ARE open intervals! Think about how the "bubble" shrinks as $n$ gets larger.*

**5.5.** Express the $\epsilon$-neighborhood $V_\epsilon(a) = (a - \epsilon, a + \epsilon)$ strictly using absolute value notation, and vice versa. Clearly show step-by-step why they mean the exact same thing.


---

## Chapter 6: Bounds and the Completeness of ℝ

### 6.1 Motivation

We have now arrived at the deepest, most fundamental concept in this entire introduction: the **completeness** of the real numbers. This single property is what truly separates the real numbers ($\mathbb{R}$) from the rational numbers (fractions, $\mathbb{Q}$), and it is the magic ingredient that makes calculus actually work.

Recall from Chapter 2 that the rational numbers have "holes". For example, there is no rational number that exactly equals $\sqrt{2}$. If you zoom in on the number line right where $\sqrt{2}$ should be, looking only at fractions, you'll find a void. 

The completeness axiom is a mathematical guarantee that the real number line has *no holes whatsoever*. But to state this powerful idea precisely, we first need to build up some vocabulary: bounds, supremum, and infimum.

### 6.2 Upper and Lower Bounds

Let's say we have a bucket of numbers, which we'll call set $H$. We want to know if there is a "ceiling" above this bucket, or a "floor" below it.

> **Definition 6.1 (Upper and Lower Bounds).**
> Let $H$ be a non-empty subset of the real numbers ($H \subset \mathbb{R}$).
>
> - A real number $a$ is an **upper bound** of $H$ if every single number inside $H$ is less than or equal to $a$. (For all $h \in H$, $h \le a$).
> - A real number $a$ is a **lower bound** of $H$ if every single number inside $H$ is greater than or equal to $a$. (For all $h \in H$, $h \ge a$).
> - If a set has at least one upper bound, we say it is **bounded above**.
> - If a set has at least one lower bound, we say it is **bounded below**.
> - If a set has *both*, we simply call it **bounded**.

**Examples to make it intuitive:**

1. Let $H = \{1, 2, 3\}$. 
   - *Upper bounds:* 3 is an upper bound. So is 4, 100, and 1,000,000. Any number greater than or equal to 3 acts as a ceiling.
   - *Lower bounds:* 1 is a lower bound. So is 0, -5, and -100. Any number less than or equal to 1 acts as a floor. 
   - Because it has both, $H$ is bounded.

2. Let $H = (0, 1)$, the open interval of all numbers strictly between 0 and 1. 
   - *Upper bounds:* 1 acts as a ceiling, because no number in the set is bigger than 1. So do 2, 3, etc. 
   - *Lower bounds:* 0, -1, -2 are all floors. 
   - $H$ is bounded.

3. Let $H = [0, +\infty)$, which means all non-negative numbers ($0, 1, 2.5, 100...$). 
   - *Lower bounds:* 0, -1, -5 are floors.
   - *Upper bounds:* None! No matter how big a number you pick, this set will contain something bigger. 
   - $H$ is bounded below, but *not* bounded above.

4. Let $H = \mathbb{Z}$, the set of all integers ($..., -2, -1, 0, 1, 2, ...$). 
   - No ceiling exists, and no floor exists. $H$ is totally unbounded.

> **Key observation:** Bounds are not unique! If the number 10 is an upper bound (a ceiling) for a set, then 11, 12, and 100 are also upper bounds (just higher ceilings). What mathematicians really care about is finding the *lowest possible ceiling* or the *highest possible floor*. Keep this in mind!

### 6.3 Bounded Sets and Absolute Value

There is a very elegant, shortcut way to test if a set is bounded on both sides using absolute value.

> ***Proposition 6.2.***
> *A set $H \subset \mathbb{R}$ is bounded if and only if there is some positive real number $K$ such that $|h| \le K$ for every element $h$ in $H$.*

**Conversational Commentary:** 
This is just saying that a set is bounded if you can draw a giant circle of radius $K$ around zero, and trap every single number of the set inside that circle. That means no number in the set escapes past $+K$ to the right, or $-K$ to the left. 

**Let's deconstruct the proof:**
Because this is an "if and only if" statement, we have to prove it in both directions.

**(Direction 1: $\Rightarrow$)** Assume the set $H$ is bounded. 
This means it has some lower bound (let's call it $m$) and some upper bound (let's call it $M$). 
So, for every element $h$ in the set, we know: $m \le h \le M$.

Now, we need to find our single trapping number, $K$. What if $m = -100$ and $M = 5$? To trap everything securely, we should pick the absolute largest of the two boundaries. 
Let $K = \max(|m|, |M|)$. In our example, $K$ would be 100.

Let's verify this $K$ works for any element $h$:
- We know $h \le M$. And $M \le |M| \le K$. So $h \le K$.
- We know $h \ge m$. And $m \ge -|m| \ge -K$. So $h \ge -K$.
Putting it together: $-K \le h \le K$. 
By definition of absolute value, this means $|h| \le K$. It works! ✓

**(Direction 2: $\Leftarrow$)** Assume there is some number $K$ such that $|h| \le K$ for all $h \in H$.
By unrolling the absolute value, this literally means:
$-K \le h \le K$ for all $h$ in $H$.
Look at that! $-K$ acts as a lower bound, and $K$ acts as an upper bound. The set has a floor and a ceiling, so it is bounded. ∎

### 6.4 Maximum and Minimum

Before we get to the star of the show (the supremum), we need to look at its simpler cousin: the maximum.

> **Definition 6.3 (Maximum and Minimum).**
> Let $H$ be a non-empty subset of $\mathbb{R}$.
>
> - If there is a specific element $M$ that is **actually inside the set** $H$, and $h \le M$ for every $h$ in $H$, then $M$ is the **maximum** (or greatest element) of $H$. We write $M = \max H$.
> - If there is a specific element $m$ **actually inside the set** $H$, and $h \ge m$ for every $h$ in $H$, then $m$ is the **minimum** (or least element) of $H$. We write $m = \min H$.

**Crucial point:** For a number to be the maximum or minimum, it MUST be a member of the set itself. An upper bound can be anything outside the set, but a maximum must belong to the club!

**Examples to clarify:**

1. $H = \{1, 2, 3\}$. The maximum is 3. The minimum is 1. Both are in the set.
2. $H = [0, 1]$. The maximum is 1. The minimum is 0. Both endpoints are included in the closed interval.
3. $H = (0, 1]$. The maximum is 1 (since $1 \in H$ and it's larger than everything else). But what about the minimum? You might guess 0, but $0 \notin H$ because of the open parenthesis. Can the minimum be 0.1? No, because 0.01 is smaller and also in the set. Can it be 0.0001? No, 0.00001 is smaller. 
   **Conclusion:** This set has **no minimum**!
4. $H = (0, 1)$. By the same logic, this open interval has neither a maximum nor a minimum.

> **Observation 6.4.** This is a huge realization: *Not every bounded set has a maximum or minimum.* A set can be trapped in a small space, but never actually reach its boundary. This exact problem is why we need a better tool: the supremum.

### 6.5 Supremum and Infimum

The supremum is an upgrade to the maximum. It is the concept of a boundary that *always exists* for bounded sets, even if the set never actually touches the boundary. 

> **Definition 6.5 (Supremum and Infimum).**
> Let $H$ be a non-empty subset of $\mathbb{R}$.
>
> - The **supremum** (or **least upper bound**) of $H$, denoted $\sup H$, is exactly what the name says: the *lowest possible ceiling* for the set. 
>   For a number $s$ to be the supremum, it must pass two strict tests:
>   1. **It must be a ceiling:** $s$ is an upper bound of $H$.
>   2. **It must be the lowest ceiling:** If anyone else claims to have an upper bound $b$, your $s$ must be less than or equal to their $b$ ($s \le b$).
>
> - The **infimum** (or **greatest lower bound**) of $H$, denoted $\inf H$, is the *highest possible floor* for the set.

**How does this fix our problem?** Let's re-evaluate our problem sets:

**Example 1.** Let $H = (0, 1)$. We established this set has no maximum. But we claim $\sup H = 1$. Let's test it:
1. Is 1 an upper bound? Yes, every number in $(0, 1)$ is strictly less than 1.
2. Is 1 the *lowest possible* upper bound? Let's say you try to offer a lower ceiling, like $b = 0.99$. Does $b$ work as an upper bound? No! Because the number $0.995$ is in the set $H$, and $0.995$ crashes right through the ceiling of $0.99$. In fact, for *any* ceiling $b$ you pick that is smaller than 1, I can always find a number in the set that is bigger than $b$ (for example, halfway between $b$ and 1). Thus, 1 is truly the *least* upper bound.

The supremum elegantly "fills the gap." It provides a clean boundary value (1) even though the set itself never reaches 1.

**Example 2.** Let $H = \{1, 1/2, 1/3, 1/4, ...\}$. 
- $\sup H = 1$. (And since $1 \in H$, $\max H = 1$ too).
- $\inf H = 0$. As the fractions get smaller and smaller, they get closer to 0, but never reach it. The set has no minimum, but its highest possible floor is exactly 0.

> ***Proposition 6.6.*** *If a set actually has a maximum, then that maximum is also the supremum. ($\sup H = \max H$).*

**Proof.** Let $M = \max H$. 
1. By the definition of a maximum, $M$ is an upper bound. 
2. Because $M$ is actually inside the set $H$, any upper bound $b$ that someone proposes *must* be greater than or equal to $M$. So $M$ is inherently the lowest possible upper bound. ∎

### 6.6 The Completeness Gap in ℚ

Now, we pull back the curtain to reveal the fatal flaw of the rational numbers ($\mathbb{Q}$), the fractions. 

**The devastating truth is: the rational numbers are NOT complete.** There are buckets of rational numbers that are bounded, but have *no supremum* if we only look at other rational numbers.

Let's look at this exact bucket:
> $H_{\sqrt{2}} = \{x \in \mathbb{Q} : x^2 < 2\}$

In English, this is the set of all rational numbers whose square is strictly less than 2. (If you think of the number line, it's all fractions between $-\sqrt{2}$ and $+\sqrt{2}$, though remember, we are pretending we don't know what $\sqrt{2}$ is yet!).

**Claim 1: This set has an upper bound made of a rational number.**
*Proof.* Let's check the number 2. Since 2 is a fraction ($2/1$), it's in $\mathbb{Q}$. Is it an upper bound?
Suppose an element $x$ in our set was greater than or equal to 2. (Let's stick to positive $x$ for a moment, since negative numbers squared will just mirror the positive ones). If $x \ge 2 > 0$, then squaring both sides gives $x^2 \ge 4$. But our set only allows numbers where $x^2 < 2$. That's a total contradiction! Therefore, no positive number in our set can be greater than or equal to 2. This means 2 perfectly acts as a ceiling. So, the set is bounded above in $\mathbb{Q}$. ∎

**Claim 2: This set has NO least upper bound (supremum) in $\mathbb{Q}$.**
*Proof sketch.* Intuitively, what is the exact boundary of this set? What number squared equals exactly 2? It's $\sqrt{2}$. The "natural" supremum of this set should be $\sqrt{2}$. 
But back in Chapter 2, we proved a shocking fact: $\sqrt{2}$ cannot be written as a fraction! $\sqrt{2} \notin \mathbb{Q}$. 

Because $\mathbb{Q}$ doesn't contain $\sqrt{2}$, it has a microscopic "hole" right where the supremum should be. 
- If you pick a rational ceiling $r$ that is slightly larger than $\sqrt{2}$ (like $1.42$), I can always find a slightly lower rational ceiling (like $1.415$) that still traps the set. You can never find the *lowest* ceiling, because you can keep creeping closer and closer to the hole without ever filling it.
Therefore, in the universe of purely rational numbers, this bounded set has no supremum. ∎

**Why is this a disaster?** 
If the number line has holes, calculus breaks. Imagine drawing a continuous curve from below the x-axis to above the x-axis. Common sense says it MUST cross the axis (the Intermediate Value Theorem). But if there's a hole exactly where it should cross, the curve slips through the gap! We cannot have gaps. 

### 6.7 The Completeness Axiom

To fix calculus, we simply *demand* that the number system has no holes. This demand is the fundamental rule that gives birth to the Real Numbers ($\mathbb{R}$).

> **Axiom (Completeness / Least Upper Bound Property).**
>
> Every single non-empty subset of real numbers $\mathbb{R}$ that is bounded above **must** have a supremum that is also a real number in $\mathbb{R}$.

(By mirror logic, any bounded below set must have an infimum).

**Why this matters.** This one sentence is the most powerful tool in analysis:
- **It creates the irrationals:** It officially guarantees that numbers like $\sqrt{2}$ actually exist in our number system (defined precisely as the supremum of that set we looked at earlier).
- **It patches the holes:** It ensures that if a sequence of numbers is steadily growing but trapped under a ceiling, it *must* crash into a specific limit point, not just float aimlessly into a void.
- **It runs calculus:** Without completeness, derivatives, integrals, and limits are mathematically impossible to prove. 

The rational numbers ($\mathbb{Q}$) are neatly ordered, but they are full of microscopic holes. The real numbers ($\mathbb{R}$) are fundamentally **complete**.

### 6.8 The Archimedean Property (A Consequence)

Once you establish that $\mathbb{R}$ has no holes, interesting facts naturally ripple out. Here is a famous one, named after the ancient Greek mathematician Archimedes.

> ***Theorem 6.7 (Archimedean Property).***
> *For any real number $x$, no matter how massively large it is, you can always find a natural number $n$ (like 1, 2, 3...) that is strictly bigger than $x$. ($n > x$).*

**Conversational Commentary:** 
This sounds incredibly obvious. "Of course there's no largest number!" But in abstract mathematics, you can't assume anything. Because we have the Completeness Axiom, we can actually *prove* it.

**Proof by Contradiction.** 
Imagine a fake universe where the natural numbers $\mathbb{N} = \{1, 2, 3...\}$ actually hit a wall and are bounded above by some massive real number.
Because they are bounded above, our new Completeness Axiom kicks in and guarantees that $\mathbb{N}$ must have a supremum. Let's call this lowest ceiling $s$. 
Because $s$ is the absolute *lowest* possible ceiling, if we step down slightly to $s - 1$, it is no longer a valid ceiling. 
Since $s - 1$ is not a ceiling, there must be some natural number $n$ that is bigger than it! 
So, $n > s - 1$.
Using basic algebra, add 1 to both sides: $n + 1 > s$.
But wait! If $n$ is a natural number, then $n+1$ is also a natural number. And we just showed $n+1$ is bigger than $s$. 
This destroys the rule that $s$ was the ceiling for the natural numbers! Our assumption that $\mathbb{N}$ was bounded led to a paradox. Therefore, $\mathbb{N}$ is unbounded. ∎

A super useful spin-off of this:
> **Corollary.** *For any microscopic positive number $\epsilon > 0$, no matter how tiny, you can always find a natural number $n$ large enough so that the fraction $\frac{1}{n}$ is even smaller! ($\frac{1}{n} < \epsilon$).*

*Proof.* If you flip the tiny number to $\frac{1}{\epsilon}$, you get a huge number. By the Archimedean property, there is some integer $n$ bigger than it ($n > \frac{1}{\epsilon}$). Flip both sides back, and you get $\frac{1}{n} < \epsilon$. ∎
(You will use this corollary constantly when proving limits!)

### 6.9 The Density of ℚ in ℝ

Another brain-bending consequence:

> ***Theorem 6.8 (Density of the Rationals).***
> *If you pick any two distinct real numbers, no matter how ridiculously close they are together, there is ALWAYS a rational number (a fraction) trapped strictly between them.*

If you have $a < b$, there exists a fraction $q \in \mathbb{Q}$ such that $a < q < b$.

**Conversational Commentary:** 
This might hurt your brain. We just spent this entire chapter talking about how the rational numbers $\mathbb{Q}$ are full of holes. Yet this theorem proves that the rational numbers are so tightly packed together (so "dense") that you can never find empty space between them without stumbling over another fraction. 

Both facts are true! The rationals are everywhere—they are densely spread out like sand across the entire real number line. But the sand grains are infinitely small, leaving room for the irrational numbers (the "holes") to fit exactly between them. The real numbers $\mathbb{R}$ are the combination of the sand ($\mathbb{Q}$) and the water filling the gaps (the irrationals).

### 6.10 Summary: ℚ vs. ℝ

To wrap up, here is the ultimate cheat sheet on how our two favorite number systems stack up:

| Mathematical Property | The Rationals ($\mathbb{Q}$) | The Reals ($\mathbb{R}$) | Plain English Meaning |
|---|:---:|:---:|---|
| **Ordered field** | ✓ | ✓ | You can do algebra (+, -, *, /) and sort them by size (<, >). |
| **Dense** | ✓ | ✓ | Between any two numbers, you can always find another one. |
| **Complete** | ✗ | ✓ | Every bounded bucket of numbers has a strict, well-defined supremum (no holes!). |
| **Contains Irrationals** | ✗ | ✓ | It contains numbers like $\sqrt{2}$ and $\pi$. |
| **Supports Calculus** | ✗ | ✓ | You can do limits, derivatives, and integrals without breaking the universe. |

The Completeness Axiom is the ultimate dividing line. It elevates the number line from a Swiss cheese of fractions to a solid, unbroken continuum, making it the perfect home for mathematical analysis.

---

### Exercises for Chapter 6

**6.1.** Find the supremum and infimum of the following sets. In each case, determine whether the sup/inf is a maximum/minimum.
- (a) $H = \{1 - 1/n : n \in \mathbb{N}\} = \{0, 1/2, 2/3, 3/4, ...\}$
- (b) $H = \{(-1)^n/n : n \in \mathbb{N}\} = \{-1, 1/2, -1/3, 1/4, ...\}$
- (c) $H = \{x \in \mathbb{R} : x^2 \le 5\}$

**6.2.** Prove that if a set $H$ has a maximum element $M$, then $\sup H = M$. (Try to recreate the proof given in Proposition 6.6 on your own!).

**6.3.** Prove the *infimum* version of the completeness axiom: every non-empty subset of $\mathbb{R}$ that is bounded below has an infimum in $\mathbb{R}$. *Hint: consider creating a mirror-image set $-H = \{-h : h \in H\}$, finding its supremum, and mirroring it back.*

**6.4.** Use the Archimedean Property to prove: for every real number $x$, there exists an integer $n$ such that $n \le x < n + 1$. (This integer is called the **floor** of $x$, written $\lfloor x \rfloor$.)

**6.5.** Prove the density of the rationals (Theorem 6.8) using the Archimedean Property. *Hint: given $a < b$, first find a denominator $n \in \mathbb{N}$ large enough so that the step size $1/n$ is smaller than the gap $b - a$. Then, find an integer numerator $m$ such that the fraction $m/n$ lands perfectly between $a$ and $b$.*

**6.6.** Let $S = \{x \in \mathbb{Q} : x^3 < 3\}$. Does $S$ have a supremum inside $\mathbb{Q}$? Does $S$ have a supremum inside $\mathbb{R}$? Explain your reasoning clearly.

**6.7.** (Challenging) Prove that between any two distinct real numbers, there exists an *irrational* number. *Hint: try to use the density of the rationals, but shift everything by an irrational number like $\sqrt{2}$.*


---

## Chapter 7: The Cantor Intersection Theorem & Cardinality

### 7.1 The Cantor Intersection Theorem

Imagine a set of Russian nesting dolls, where each doll contains a slightly smaller one inside it. What happens if you have an infinite number of these dolls, each shrinking down? Is there something tiny and indivisible at the absolute center, or does it eventually shrink to nothing at all? 

In the world of real numbers, the **Cantor Intersection Theorem** (known in Hungarian as the *Cantor-féle tulajdonság* or *axióma*) answers exactly this question. It describes what happens when we have a sequence of "shrinking" intervals on the number line. Specifically, if we have a sequence of closed and bounded intervals (intervals that include their endpoints and don't stretch to infinity), and each interval is completely contained within the previous one, they must shrink down to include at least one common point that belongs to *all* of them.

Let's formalize this.

**Theorem 7.1 (Cantor Intersection Theorem).** 
Let $[a_1, b_1] \supset [a_2, b_2] \supset [a_3, b_3] \dots$ be a sequence of nested closed intervals in the real numbers, $\mathbb{R}$. (The symbol $\supset$ means the set on the left contains the set on the right). Then, their intersection is not empty. Mathematically, this is written as:
$$ \bigcap_{n=1}^\infty [a_n, b_n] \neq \emptyset. $$
This just means there is at least one number that lives inside every single interval in the sequence.

*Proof.*
We want to prove that there is a number that sits precisely in the "center" of this endless sequence of nested intervals. We will find this number by looking at the left endpoints of our intervals.

**Step 1: Understand the left endpoints.**
Because our intervals are nested inside each other, the left endpoints must be moving to the right, and the right endpoints must be moving to the left. For any interval $n$, the left endpoint $a_n$ and the right endpoint $b_n$ satisfy:
$a_1 \le a_2 \le \dots \le a_n \le \dots \le b_n \le \dots \le b_2 \le b_1$.

Let's collect all the left endpoints into a single set, and call it $H$. So, $H = \{a_1, a_2, a_3, \dots\}$.

**Step 2: Find the "supremum" (least upper bound) of the left endpoints.**
The set $H$ is obviously not empty. Also, every left endpoint $a_n$ is strictly less than or equal to the very first right endpoint, $b_1$. In fact, $a_n$ is less than or equal to *any* right endpoint $b_m$. Because $H$ has an upper limit, a fundamental rule of the real numbers (called the Completeness Axiom) guarantees that $H$ must have a "ceiling"—a least upper bound. We call this supremum $c$. So, $c = \sup H$.

**Step 3: Show that this point $c$ is inside every single interval.**
We claim that $c$ is our "indivisible center." For $c$ to be inside every interval $[a_n, b_n]$, we need to prove that for any interval number $n$, $a_n \le c \le b_n$. Let's break this into two parts:
1. **Why is $a_n \le c$?** By definition, $c$ is the upper bound of all the left endpoints in $H$. Since $a_n$ is in $H$, it is immediate that $a_n \le c$.
2. **Why is $c \le b_n$?** Let's pick any right endpoint $b_n$. Is $b_n$ an upper bound for $H$? Yes, because for any left endpoint $a_k$, whether $k$ is smaller or larger than $n$, the nested nature of the intervals guarantees $a_k \le b_n$. Since $b_n$ is an upper bound for $H$, and $c$ is the *least* upper bound (the smallest possible ceiling), it must be true that $c \le b_n$.

Since $a_n \le c \le b_n$ for every single $n$, the number $c$ belongs to every interval $[a_n, b_n]$. Therefore, $c$ is in the intersection of all the intervals, meaning the intersection is not empty. $\blacksquare$

### 7.2 Cardinality and Countable Sets

How do we count things? For a finite group of objects, like a basket of apples, we just point and count: 1, 2, 3... But what if we have an infinite number of apples? We can't count them one by one because we'd never finish. 

Instead, mathematicians use a clever trick called a **bijection**, which is just a fancy word for "pairing things up perfectly." Imagine you have a room full of people and a room full of chairs. If you ask everyone to sit down, and every person gets exactly one chair with no chairs left over, you instantly know that the number of people equals the number of chairs, without having to count either! 

**Definition 7.2.** Two sets $A$ and $B$ are said to have the same **cardinality** (or are equipotent, in Hungarian: *azonos számosságú*) if there exists a perfect pairing (a bijective function) $f: A \to B$ between them. We denote this relation by $A \sim B$.

This "same size" relation has three natural properties (making it an equivalence relation): 
- Reflexive: $A \sim A$ (a set is the same size as itself).
- Symmetric: $A \sim B \implies B \sim A$ (if $A$ is the same size as $B$, $B$ is the same size as $A$).
- Transitive: $A \sim B$ and $B \sim C \implies A \sim C$ (if $A$ is the same size as $B$, and $B$ as $C$, then $A$ is the same size as $C$).

**Definition 7.3.** A set $A$ is called **countably infinite** (megszámlálhatóan végtelen) if it perfectly pairs up with the natural numbers $\mathbb{N} = \{1, 2, 3, \dots\}$. This means $A \sim \mathbb{N}$, and we can list the elements of $A$ in a neat sequence: $a_1, a_2, a_3, \dots$ without missing any. 
A set is simply called **countable** (megszámlálható) if it is either finite or countably infinite.

You might think that the set of integers $\mathbb{Z} = \{\dots, -2, -1, 0, 1, 2, \dots\}$ is "twice as large" as the natural numbers $\mathbb{N}$. But surprisingly, they are the exact same size! We can pair them up perfectly by listing them like this: $0, 1, -1, 2, -2, 3, -3 \dots$. The first item goes to 1, the second to 2, etc.

But what about the rational numbers (fractions)? Surely there are way more fractions than whole numbers, right? Between any two numbers, there are infinitely many fractions! Astonishingly, no. 

**Theorem 7.4.** The set of rational numbers $\mathbb{Q}$ is countably infinite.

*Proof.* 
To prove this, we just need to find a clever way to list every single fraction in a sequence $a_1, a_2, a_3, \dots$ so that we never skip any, even though there are infinitely many. 

**Step 1: Grouping by limits.**
One way to list them is by grouping rational numbers $p/q$ that live between $[-n, n]$ and have a denominator $q$ of at most $n$. 
- For $n=1$, the fractions in $[-1, 1]$ with a denominator of at most $1$ are: $-1/1, 0/1, 1/1$. (Or simply $-1, 0, 1$).
- For $n=2$, we look at fractions in $[-2, 2]$ with a denominator of at most $2$. We skip the ones we already listed. The new ones are: $-2, -3/2, -1/2, 1/2, 3/2, 2$.
- We continue this process for $n=3, n=4$, and so on. Since every fraction $p/q$ has a finite numerator and denominator, it will eventually appear in one of our groups. Because each group has a finite number of elements, we can list them one by one forever, pairing them perfectly with $1, 2, 3, \dots$.

**Alternative approach: Cantor's Diagonalization.**
Another famous way to see this is by imagining a giant 2D grid of fractions. The rows represent numerators ($1, 2, 3, \dots$) and the columns represent denominators ($1, 2, 3, \dots$). You can "thread" a single string through this entire grid by weaving diagonally back and forth across the table. Whenever you hit a fraction that isn't simplified (like $2/4$, which is just $1/2$), you just skip it. This string visits every rational number exactly once, creating a single, ordered list. $\blacksquare$

**Definition 7.5.** A complex number $\alpha \in \mathbb{C}$ is called an **algebraic number** (algebrai szám) if it is the solution to a polynomial equation with integer coefficients. For example, $\sqrt{2}$ is algebraic because it is a solution to $x^2 - 2 = 0$. 
A number is **transcendental** (transzcendens) if it is *not* algebraic. These numbers cannot be expressed as the roots of simple integer polynomials. Famous examples include $\pi$ (pi) and $e$.

*Fun Fact:* Just like the fractions, the set of all algebraic numbers is also countably infinite!

### 7.3 Uncountable Sets

If integers, fractions, and algebraic numbers can all be perfectly matched with the natural numbers, you might wonder: is *every* infinite set countable? Are all infinities the same size?

The answer is a mind-bending **no**. There are different sizes of infinity. Some infinities are vastly larger than the countable infinity of the natural numbers.

**Theorem 7.5.** The set of all real numbers $\mathbb{R}$ is uncountable (nem megszámlálható). It is strictly larger than the set of natural numbers $\mathbb{N}$.

*Proof.* 
We will use a technique called "proof by contradiction." We assume the opposite of what we want to prove, and show that it leads to a completely illogical conclusion.

**Step 1: The impossible assumption.**
Assume for a moment that the real numbers $\mathbb{R}$ *are* countably infinite. If that were true, we could put every single real number into one massive, ordered list: $\mathbb{R} = \{c_1, c_2, c_3, \dots\}$. Our assumption claims that *no real number is left out* of this list.

**Step 2: Building the trap.**
We are going to construct a series of nested shrinking intervals (just like in the Cantor Intersection Theorem) specifically designed to "dodge" every number on this list.
- **Dodging $c_1$:** We pick a closed interval $[a_1, b_1]$ that specifically does *not* contain the first number on our list, $c_1$. For example, if $c_1$ is 0, we can pick the interval $[1, 2]$.
- **Dodging $c_2$:** Now, inside $(a_1, b_1)$, we zoom in and pick a smaller closed interval $[a_2, b_2]$ that does *not* contain the second number on our list, $c_2$.
- **Dodging $c_n$:** We keep doing this forever. For every number $c_n$ on our list, we pick a tiny sub-interval $[a_n, b_n]$ nested inside the previous one, purposefully avoiding $c_n$. So, $c_n \notin [a_n, b_n]$.

**Step 3: Springing the trap.**
We now have an endless sequence of nested closed intervals. By the **Cantor Intersection Theorem** (Theorem 7.1), this sequence must contain at least one point in its absolute center. Let's call this point $c$. 

Because $c$ is a point on the number line, it is a real number ($c \in \mathbb{R}$). 
Since our list was supposed to contain *every* real number, $c$ must be somewhere on our list. It must be equal to some $c_m$ at position $m$.

**Step 4: The contradiction.**
But wait! The point $c$ is the center of our intervals, which means $c$ is inside *every single interval*, including the $m$-th interval $[a_m, b_m]$. 
However, when we built the $m$-th interval, we explicitly made sure that $c_m$ was *not* inside it! 

This means $c$ cannot be $c_m$. In fact, $c$ cannot be *any* number on the list, because it is inside every interval, and every interval was designed to exclude a number on the list.

Our list failed to capture the number $c$. We missed a real number! This completely shatters our initial assumption that we could list all the real numbers. Therefore, the set of real numbers cannot be counted. It is uncountable. $\blacksquare$

**Corollary 7.6.** The set of irrational numbers (real numbers that are not fractions, denoted $\mathbb{R} \setminus \mathbb{Q}$) is also uncountable. 

*Proof.* 
If the irrational numbers were countable, then the entire set of real numbers $\mathbb{R}$ would just be the combination of two countable sets: the rational numbers $\mathbb{Q}$ and the irrational numbers $\mathbb{R} \setminus \mathbb{Q}$. 
If you combine two countable lists, you just get a slightly bigger countable list. But we just proved in Theorem 7.5 that $\mathbb{R}$ is strictly uncountable! Therefore, our assumption must be wrong, and the irrational numbers must be uncountable. In a sense, almost all real numbers are irrational. $\blacksquare$

When a set is as massively, uncountably infinite as the real numbers $\mathbb{R}$, we say it has **continuum cardinality** (kontinuum számosságú).

### Exercises for Chapter 7
1. Prove that the intersection of *open* nested intervals $(a_n, b_n)$ can be empty. Give a specific example. (Hint: Think about intervals that shrink toward 0, but never quite reach a closed bound).
2. Prove that the union of two countably infinite sets is countably infinite. (Hint: Imagine shuffling two decks of infinite cards perfectly together).
3. Show that $\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$. (Hint: Construct a bijection that takes a countable subset of irrational numbers and shifts them around, leaving the rest of the numbers completely alone).

---


---

## Chapter 8: Fundamental Inequalities

In higher mathematics, exact equality is often too difficult or even impossible to prove. Instead, the real power of mathematical analysis lies in inequalities—the art of bounding quantities. By proving that a value is trapped between a lower and an upper limit, we can understand its behavior perfectly. 

### 8.1 The AM-GM Inequality

There are many ways to find the "average" of a set of numbers. 
- The **Arithmetic Mean** (számtani közép) is the average you learned in grade school: add the numbers up and divide by how many there are. For $n$ positive numbers $a_1, \dots, a_n$, it is $A_n = \frac{a_1 + \dots + a_n}{n}$.
- The **Geometric Mean** (mértani közép) is found by multiplying the numbers together and taking the $n$-th root. It is $G_n = \sqrt[n]{a_1 \dots a_n}$. This is often used in finance to find average growth rates.

The AM-GM inequality states that the arithmetic mean is *always* greater than or equal to the geometric mean.

**Theorem 8.1 (AM-GM Inequality).** For any positive real numbers $a_1, \dots, a_n$,
$$ \sqrt[n]{a_1 \dots a_n} \le \frac{a_1 + \dots + a_n}{n}. $$
Furthermore, the two means are exactly equal if and only if all the numbers are perfectly identical ($a_1 = a_2 = \dots = a_n$).

*Proof.* 
We will use a fascinating technique invented by the mathematician Augustin-Louis Cauchy called "forward-backward" induction (trükkös indukció). Normal mathematical induction is like climbing a ladder one step at a time (prove it for 1, then 2, then 3...). Cauchy's method leaps up the ladder to powers of 2 (2, 4, 8, 16...), and then carefully steps *backwards* to fill in the gaps!

**Step 1: The base case for 2 numbers ($n=2$).** 
We want to show that for two numbers $a$ and $b$, $\sqrt{ab} \le \frac{a+b}{2}$. 
Because both sides are positive, we can square them without changing the inequality: $ab \le \frac{(a+b)^2}{4}$. 
Expanding the right side gives $ab \le \frac{a^2+2ab+b^2}{4}$. 
If we multiply by 4, we get $4ab \le a^2 + 2ab + b^2$. 
Subtract $4ab$ from both sides, and we are left with:
$0 \le a^2 - 2ab + b^2$.
Notice that the right side is a perfect square! This gives us $0 \le (a-b)^2$. 
Since the square of any real number is always zero or positive, this statement is undeniably true. It is only exactly zero (meaning equality holds) if $a=b$.

**Step 2: Leaping Forward to Powers of 2.**
Now we assume the theorem is true for some power of two, let's say $m = 2^k$. We want to prove it also works for the next power of two, $2m = 2^{k+1}$. 
Imagine we have $2m$ numbers. We can split them into two halves: the first $m$ numbers, and the second $m$ numbers.
The geometric mean of all $2m$ numbers is:
$$ \sqrt[2m]{a_1 \dots a_{2m}} = \sqrt{ \sqrt[m]{a_1 \dots a_m} \cdot \sqrt[m]{a_{m+1} \dots a_{2m}} }. $$
This looks complicated, but it's just the geometric mean of two giant blocks. Let's call the geometric mean of the first block $\alpha$, and the second block $\beta$. 
By our assumption, we already know the inequality works for blocks of size $m$. So, $\alpha$ is less than or equal to the arithmetic mean of the first half, and $\beta$ is less than or equal to the arithmetic mean of the second half.
Now, we apply our simple $n=2$ rule from Step 1 to $\alpha$ and $\beta$:
$$ \sqrt{\alpha \beta} \le \frac{\alpha + \beta}{2}. $$
If we plug in the arithmetic means for $\alpha$ and $\beta$, we get the arithmetic mean of all $2m$ numbers combined! 
$$ \frac{\alpha + \beta}{2} \le \frac{\frac{a_1 + \dots + a_m}{m} + \frac{a_{m+1} + \dots + a_{2m}}{m}}{2} = \frac{a_1 + \dots + a_{2m}}{2m}. $$
This proves that if the rule works for 2, it works for 4, 8, 16, and so on.

**Step 3: Stepping Backward.**
What about a number like 3, which isn't a power of 2? We know the rule works for 4, so we assume it works for $n$ variables, and we want to step backward to prove it works for $n-1$ variables.
Let's take our $n-1$ numbers $a_1, \dots, a_{n-1}$. We need a clever "dummy" number to fill the $n$-th slot. Let's make the $n$-th number the arithmetic mean of the others! Let $s = \frac{a_1 + \dots + a_{n-1}}{n-1}$.
Now, we apply our known $n$-variable rule to these numbers: $a_1, \dots, a_{n-1}$, and $s$.
$$ \sqrt[n]{a_1 \dots a_{n-1} \cdot s} \le \frac{a_1 + \dots + a_{n-1} + s}{n}. $$
Let's simplify the right side. The sum $a_1 + \dots + a_{n-1}$ is exactly $(n-1)s$. So the numerator is $(n-1)s + s = ns$. Dividing by $n$ leaves just $s$!
$$ \sqrt[n]{a_1 \dots a_{n-1} \cdot s} \le s. $$
To get rid of the root, raise both sides to the $n$-th power:
$$ a_1 \dots a_{n-1} \cdot s \le s^n. $$
Divide both sides by $s$:
$$ a_1 \dots a_{n-1} \le s^{n-1}. $$
Finally, take the $(n-1)$-th root of both sides:
$$ \sqrt[n-1]{a_1 \dots a_{n-1}} \le s = \frac{a_1 + \dots + a_{n-1}}{n-1}. $$
We did it! By jumping forward to massive powers of 2 and stepping backward, we have proven the inequality for absolutely every whole number $n$. $\blacksquare$

*(Side Note: If you apply this exact same logic to fractions like $1/a_1, \dots, 1/a_n$, you get another famous rule: the Geometric Mean is always greater than or equal to the Harmonic Mean!)*

### 8.2 Bernoulli's Inequality

When you compound interest on a bank account, your money grows exponentially. Bernoulli's inequality gives us a remarkably simple straight-line shortcut to estimate a lower bound for exponential growth.

**Theorem 8.2 (Bernoulli's Inequality).** For any real number $x \ge -1$ and any whole number $n \ge 1$,
$$ (1+x)^n \ge 1+nx. $$

*Proof.* 
We prove this using standard mathematical induction—climbing the ladder one step at a time.

**Base step ($n=1$):** 
Plug in $1$ for $n$. We get $(1+x)^1 = 1+x$, which is exactly equal to $1+1\cdot x$. The statement holds.

**Inductive step:** 
Assume the inequality works for a specific step $n$. That is, we assume $(1+x)^n \ge 1+nx$. We need to prove it works for the next step, $n+1$.
Let's look at $(1+x)^{n+1}$. By the rules of exponents, we can break this apart:
$$ (1+x)^{n+1} = (1+x) \cdot (1+x)^n. $$
Because we restricted $x$ to be greater than or equal to $-1$, the term $(1+x)$ is always positive (or zero). This is a critical detail! In algebra, multiplying both sides of an inequality by a positive number doesn't flip the inequality sign. 
So, we can take our assumption $(1+x)^n \ge 1+nx$, and multiply both sides by $(1+x)$:
$$ (1+x) \cdot (1+x)^n \ge (1+x) \cdot (1+nx). $$
Let's multiply out the right side using FOIL (First, Outer, Inner, Last):
$$ (1+x)(1+nx) = 1 + nx + x + nx^2 = 1 + (n+1)x + nx^2. $$
Look at that last term: $nx^2$. Since $n$ is positive and any number squared is positive, $nx^2$ must be greater than or equal to zero. 
If we simply throw away this positive chunk, we are making the expression smaller. Therefore:
$$ 1 + (n+1)x + nx^2 \ge 1 + (n+1)x. $$
Stringing it all together, we've shown that $(1+x)^{n+1} \ge 1+(n+1)x$. The induction is complete, and the theorem holds for all $n$. $\blacksquare$

### 8.3 Hölder and Cauchy-Schwarz Inequalities

Before we tackle the powerhouse known as Hölder's inequality, we need a small stepping stone.

**Theorem 8.3 (Young's Inequality).** 
If you have two positive numbers $a, b > 0$, and two special powers $p, q > 0$ that perfectly complement each other such that $\frac{1}{p} + \frac{1}{q} = 1$, then:
$$ ab \le \frac{a^p}{p} + \frac{b^q}{q}. $$

*Proof.* 
To prove this, we rely on the shape of the natural logarithm function, $\log(x)$. If you draw $\log(x)$ on a graph, it curves downward, like the dome of an umbrella. In calculus, we call this strictly *concave* (its second derivative is negative). 
Because it curves downward, if you draw a straight line segment between two points on the curve, the line will always lie *below* the curve itself. This geometric fact is known as Jensen's Inequality. It means that the logarithm of an average is always greater than or equal to the average of the logarithms.

Let's use our complementary weights $1/p$ and $1/q$ (which add up to 1, just like percentages). By Jensen's Inequality:
$$ \log\left(\frac{1}{p} a^p + \frac{1}{q} b^q\right) \ge \frac{1}{p} \log(a^p) + \frac{1}{q} \log(b^q). $$
Using logarithm rules, we can bring the weights inside as exponents:
$$ \frac{1}{p} \log(a^p) = \log((a^p)^{1/p}) = \log(a). $$
$$ \frac{1}{q} \log(b^q) = \log((b^q)^{1/q}) = \log(b). $$
So the right side simplifies beautifully to $\log(a) + \log(b)$, which is just $\log(ab)$. 
Now we have: $\log\left(\frac{1}{p} a^p + \frac{1}{q} b^q\right) \ge \log(ab)$.
Since the logarithm always goes up, we can strip it away by applying the exponential function to both sides, leaving us with Young's Inequality! $\blacksquare$

Now, we can prove one of the most important tools in advanced mathematics.

**Theorem 8.4 (Hölder's Inequality).** 
Let $p, q > 0$ such that $\frac{1}{p} + \frac{1}{q} = 1$. For any sequences of non-negative numbers $a_1, \dots, a_n$ and $b_1, \dots, b_n$,
$$ \sum_{k=1}^n a_k b_k \le \left( \sum_{k=1}^n a_k^p \right)^{1/p} \left( \sum_{k=1}^n b_k^q \right)^{1/q}. $$
*(Intuition: This is a way of saying that the inner product of two vectors is bounded by their "lengths", measured in different spaces.)*

*Proof.* 
This looks terrifying, but we will tame it by normalizing the vectors (scaling them down so their total "length" is 1).
Let $A = \left( \sum a_k^p \right)^{1/p}$ and $B = \left( \sum b_k^q \right)^{1/q}$. 
If either $A$ or $B$ is zero, it means all the numbers in that sequence are zero, and the inequality just becomes $0 \le 0$, which is trivially true. So, assume $A$ and $B$ are greater than zero.

We scale our numbers down by creating fractions: $\frac{a_k}{A}$ and $\frac{b_k}{B}$. Now, we feed these fractions directly into Young's inequality (Theorem 8.3):
$$ \frac{a_k}{A} \frac{b_k}{B} \le \frac{1}{p} \frac{a_k^p}{A^p} + \frac{1}{q} \frac{b_k^q}{B^q}. $$
Next, we add up this inequality for every single item from $k=1$ to $n$:
$$ \frac{1}{AB} \sum_{k=1}^n a_k b_k \le \frac{1}{p} \frac{\sum a_k^p}{A^p} + \frac{1}{q} \frac{\sum b_k^q}{B^q}. $$
Look closely at the right side. By our very definition of $A$, the sum $\sum a_k^p$ is exactly equal to $A^p$. So that whole fraction becomes $A^p/A^p = 1$. The same happens for $B$. 
The right side collapses brilliantly into:
$$ \frac{1}{p} \cdot 1 + \frac{1}{q} \cdot 1 = \frac{1}{p} + \frac{1}{q} = 1. $$
We are left with:
$$ \frac{1}{AB} \sum_{k=1}^n a_k b_k \le 1. $$
Multiply both sides by $AB$, and we have proven Hölder's Inequality. $\blacksquare$

**Corollary 8.5 (Cauchy-Buniakovszkij-Schwarz Inequality).** 
Hölder's inequality is a generalized formula. If we pick the most balanced complementary powers, $p = 2$ and $q = 2$ (notice that $1/2 + 1/2 = 1$), Hölder's formula instantly turns into the legendary Cauchy-Schwarz Inequality, which connects geometry and algebra:
$$ \sum_{k=1}^n a_k b_k \le \sqrt{\sum_{k=1}^n a_k^2} \sqrt{\sum_{k=1}^n b_k^2}. $$

### Exercises for Chapter 8
1. Show that $2^n > n^2$ for sufficiently large $n$. (Hint: Try using induction, starting from $n=5$).
2. For $x \ge -1$ and a rational number $r \in (0, 1)$, prove $(1+x)^r \le 1+rx$. What if $r > 1$? (Hint: Consider how the curve of $(1+x)^r$ behaves compared to a straight line).
3. When does equality hold in Cauchy-Schwarz? (Hint: Think about when the two sequences of numbers are perfectly proportional to each other, like two parallel lines).

---


---

## Chapter 9: Functions and Relations

Mathematics isn't just about static numbers; it's about how things interact and change together. To study these relationships rigorously, we rely on the concepts of functions and relations.

### 9.1 Basic Definitions

Think of a function like a highly predictable factory machine. You feed it a specific raw material (an input), and it spits out a guaranteed product (an output). 

**Definition 9.1.** Let $A$ and $B$ be sets. A **function** (függvény) $f$ from $A$ to $B$ is a strict rule that assigns to each element $a$ in set $A$ *exactly one* element $b$ in set $B$. 
- The set $A$ (all the valid raw materials you can feed the machine) is called the **domain** (értelmezési tartomány) of $f$, denoted $D(f)$.
- The subset of $B$ containing all the actual products the machine ever spits out is called the **range** (értékkészlet) of $f$. We write this as $R(f)$ or $f(A)$. (Note: The machine might not create every item listed in set $B$'s catalog).

Functions can have different "personalities" based on how they map inputs to outputs:

**Definition 9.2.** Let $f: A \to B$ be a function. 
1. **Injective (One-to-One / Injektív):** The function never maps two different inputs to the same output. If $a_1 \neq a_2$, then $f(a_1) \neq f(a_2)$. Every output has a unique, exclusive input. 
2. **Surjective (Onto / Szürjektív, ráképezés):** The machine produces everything in the catalog. The range is the entirety of set $B$, meaning $R(f) = B$. No element in $B$ is left empty-handed.
3. **Bijective (Perfect Match / Bijektív, kölcsönösen egyértelmű):** The function is both injective and surjective. It pairs every element in $A$ with exactly one element in $B$, with no overlaps and nothing left out. It is a perfect one-to-one partnership.

### 9.2 Inverse and Composition

If a function is a machine, can we run it backward? Can we take the output and figure out exactly what input created it? 

**Definition 9.3.** If a function $f: A \to B$ is bijective, we can define its **inverse function** (inverz függvény), denoted as $f^{-1}: B \to A$. 
For every product $b$ in set $B$, $f^{-1}(b)$ tells you the unique raw material $a$ that created it (so $f(a) = b$). 
This only works because the function is bijective: injectivity ensures there's only *one* possible input to trace back to, and surjectivity ensures *every* output can be traced back.
Naturally, the domain of the inverse is $B$, its range is $A$, and if you invert an inverse, you get the original function: $(f^{-1})^{-1} = f$.

What if we want to chain machines together, feeding the output of the first machine directly into the second?

**Definition 9.4.** Given functions $f: A \to B$ and $g: C \to D$, the **composition** (összetétel) of $g$ and $f$ is a new combined function $h = g \circ f$. 
You read this right-to-left: first apply $f$, then apply $g$. It is defined by plugging the result of $f$ into $g$: $h(a) = g(f(a))$. 
We can only do this for inputs $a$ where the output $f(a)$ is successfully accepted by the second machine $g$.

**Definition 9.5.** The simplest function in the world is the **identity function** (identikus függvény), denoted $id_A : A \to A$. It is the "do nothing" machine. You give it $a$, and it hands you $a$ right back: $id_A(a) = a$.
If you run a bijective function and then immediately run its inverse, you end up exactly where you started. You've created an identity function! 
- $f^{-1} \circ f = id_A$ (Start in A, go to B, return to A).
- $f \circ f^{-1} = id_B$ (Start in B, go to A, return to B).

**Theorem 9.6.** Let $f: A \to B$ and $g: B \to A$ be two functions. The function $g$ is the true inverse of $f$ ($g = f^{-1}$) if and only if both of the following are true: 
(I) $g \circ f = id_A$ (Running $f$ then $g$ returns you to your starting point).
(II) $f \circ g = id_B$ (Running $g$ then $f$ returns you to your starting point).

*Proof.* 
If $g$ is the inverse, we already established that (I) and (II) are true by Definition 9.5. The interesting part is proving the reverse: if (I) and (II) are true, we must prove $g$ acts as the inverse, which means we must prove $f$ is bijective.

**Step 1: Prove $f$ is injective.** 
Imagine two inputs give the same output: $f(a_1) = f(a_2)$. If we feed both sides into our $g$ machine, we get $g(f(a_1)) = g(f(a_2))$. Because of rule (I), $g$ undoes $f$, simplifying this to $a_1 = a_2$. Therefore, $f$ never maps two different inputs to the same output. It is injective.

**Step 2: Prove $f$ is surjective.** 
Pick any target $b$ in set $B$. Does $f$ ever hit it? Let's use $g$ to find the raw material. Let $a = g(b)$. If we plug this $a$ into $f$, we get $f(a) = f(g(b))$. Because of rule (II), $f(g(b))$ simplifies simply to $b$. So, $f(a) = b$. We proved that every target $b$ can be reached. $f$ is surjective.

Since $f$ is both injective and surjective, it is bijective, meaning a true inverse $f^{-1}$ exists. Using rule (I), we know $g(f(a)) = a$. Because the true inverse also satisfies $f^{-1}(f(a)) = a$, it must be that $g$ and $f^{-1}$ do exactly the same thing. Thus, $g = f^{-1}$. $\blacksquare$

*(Crucial Note: You might wonder why we need both rules. Isn't rule (I) enough? No! Imagine $A$ is the natural numbers, $f(n) = n+1$ (add one), and $g(n) = n-1$ (subtract one, except $g(1)=1$). If you take a number, add 1, then subtract 1, you get your original number: $g(f(n)) = n$. Rule (I) works! But if you subtract 1 from the number 1, you stay at 1. Then add 1, you get 2! So $f(g(1)) = 2 \neq 1$. Rule (II) fails. Because $f$ misses the number 1 (it is not surjective), it doesn't have a true inverse.)*

### 9.3 Relations and Cartesian Products

Sometimes relationships aren't as strict as functions. Sometimes an input can be related to multiple outputs, or no outputs at all. To describe this, we use relations.

**Definition 9.7.** An **ordered pair** $(a, b)$ is a grouping of two elements where the order absolutely matters—$(1, 2)$ is different from $(2, 1)$. 
For two sets $A$ and $B$, their **Cartesian product** (Descartes-szorzat) is the massive set of *all possible* ordered pairs you can make by taking the first item from $A$ and the second from $B$. It is denoted $A \times B = \{(a, b) : a \in A, b \in B\}$. Think of this as the grid of coordinates on a map.

**Definition 9.8.** A **relation** over sets $A$ and $B$ is just a subset of the Cartesian product $R \subset A \times B$. If a specific pair $(a, b)$ is inside this subset $R$, we say $a$ is related to $b$. 
For example, the "divisibility" relation on natural numbers contains the pair $(3, 6)$ because 3 divides 6, but it does *not* contain the pair $(3, 7)$.

**Definition 9.9.** Believe it or not, a **sequence** is just a special type of function!
An **$n$-term sequence** (rendezett $n$-es) is a function that maps the positions $\{1, 2, \dots, n\}$ to elements in a set $A$. It's a finite list, denoted $(a_1, \dots, a_n)$. 
An **infinite sequence** (végtelen sorozat) is a function that maps the entire set of natural numbers $\mathbb{N}$ to $A$, meaning it assigns a value to position 1, position 2, and so on forever. It is denoted $(a_1, a_2, \dots)$ or $\{a_n\}_{n=1}^\infty$.

### Exercises for Chapter 9
1. Prove that if two functions $f: X \to Y$ and $g: Y \to Z$ are both bijective, then their composition $g \circ f$ is also bijective, and the inverse of the chained function is $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$. (Hint: Think about putting on socks and then shoes. To reverse the process, you must first take off the shoes, then the socks!)
2. Try to invent your own example of functions $f, g$ where $f \circ g = id_B$ but $g \circ f \neq id_A$. (Hint: You will need sets of different sizes or infinite sets where one function "squashes" information and the other creates duplicates).

---


---

## Chapter 10: Properties of Real Functions

Welcome to the world of functions! If you've never worked with rigorous mathematics before, think of a function as a special kind of factory machine. You feed a raw material (a number) into the machine, it does some processing, and it spits out a finished product (another number). 

In mathematical notation, we write this as a **real function** $f: X \to \mathbb{R}$. 
Let's break that down:
- The letter **$f$** is the name of our machine.
- **$X$** is the set of all valid "raw materials" you're allowed to feed into the machine. We call this the **domain** of the function, often written as $D(f)$. It is a subset of all real numbers ($X \subset \mathbb{R}$). If you try to feed the machine a number that isn't in $X$, the machine breaks (it is undefined).
- **$\mathbb{R}$** represents the set of all real numbers. The arrow $\to \mathbb{R}$ just means that the finished product coming out of the machine will always be a real number.

Just like you can combine machines in a factory, you can combine functions using basic arithmetic. If you have two functions, $f$ and $g$, you can add them, subtract them, multiply them, or divide them to create brand new functions. For example, adding them looks like this: $(f \pm g)(x) = f(x) \pm g(x)$. To do this, the number $x$ must be valid for *both* machines simultaneously, meaning $x$ has to be in the domain of $f$ AND the domain of $g$. And if you are dividing them, $(f/g)(x) = f(x)/g(x)$, you have to make sure that $g(x)$ is not zero, because dividing by zero is mathematically illegal!

Some everyday examples of these "machines" (called elementary functions) include:
- **Polynomials**: Like $p(x) = a_n x^n + \dots + a_0$. These just use powers of $x$.
- **Rational functions**: Fractions where the top and bottom are polynomials.
- **Power functions**: Like $f(x) = \sqrt{x}$ or $f(x) = x^3$.

There are also some very specialized, unusual functions like the signum function $\text{sgn}(x)$, the integer part $\lfloor x \rfloor$, the fractional part $\{x\} = x - \lfloor x \rfloor$, and the **Dirichlet function** which gives you a $1$ if the number you plug in can be written as a fraction (a rational number), and it gives you a $0$ if it can't (an irrational number).

### 10.1 Global Properties

Now, let's look at the "big picture" or global traits a function might have over its entire domain.

**Definition 10.1. (Even and Odd Functions)**
Imagine drawing the graph of a function. First, let's assume the domain is perfectly balanced or symmetric around zero (meaning if $x$ is allowed in, $-x$ is also allowed in).
- **$f$ is even** (in Hungarian: *páros*) if plugging in a negative number gives you the exact same result as plugging in the positive version. Formally: $f(x) = f(-x)$ for all $x$ in the domain. Visually, the graph looks like a mirror image across the vertical y-axis. (Example: $f(x) = x^2$. Both $3^2$ and $(-3)^2$ equal $9$. Also $f(x) = |x|$.)
- **$f$ is odd** (in Hungarian: *páratlan*) if plugging in a negative number gives you the exact negative of the positive version. Formally: $f(-x) = -f(x)$ for all $x$ in the domain. (Example: $f(x) = x^3$. Since $3^3 = 27$, then $(-3)^3 = -27$.)

**Definition 10.2. (Periodic Functions)**
A function $f$ is **periodic** (in Hungarian: *periodikus*) if it repeats itself exactly after a certain interval. Formally, there exists a specific number $p \neq 0$ (the period) such that for any $x$ in the domain, $x+p$ is also in the domain, and $f(x+p) = f(x)$. Think of the repeating pattern of a heartbeat on a monitor or a sine wave!

**Definition 10.3. (Monotonicity)**
This is a fancy way of asking: "Is the function generally going up or down?"
Let's take a subset $A$ of our domain.
- **Monotonic increasing** (in Hungarian: *monoton növekedő*): As you move to the right on the graph, the graph either stays flat or goes up. Formally, for any two points $x$ and $y$ in $A$, if $x < y$, then the outputs satisfy $f(x) \le f(y)$.
- **Strictly monotonic increasing**: The graph *must* go up. No flat parts allowed. Formally, if $x < y$, then strictly $f(x) < f(y)$. 
(You can define decreasing functions exactly the same way, just flipping the inequalities to $\ge$ and $>$.)

**Definition 10.4. (Absolute Maximum)**
A point $a$ in our domain $A$ is an **absolute maximum place** (in Hungarian: *maximumhely*) if the function reaches its absolute highest peak there. Every other point gives a result that is smaller than or equal to $f(a)$. Formally, $f(x) \le f(a)$ for all $x$ in $A$.

### 10.2 Local Properties

Sometimes we don't care about the whole world; we just want to look at a small neighborhood.

**Definition 10.5. (Local Maximum)**
A point $a$ is a **local maximum place** (in Hungarian: *lokális maximumhely*) if it is the king of its own small hill, even if there are taller mountains far away. 

Let's make this mathematically precise. We define an "$\varepsilon$-neighborhood" around $a$, denoted $B(a, \varepsilon)$. Here, $\varepsilon$ (the Greek letter epsilon) just represents some tiny positive distance. So, the neighborhood is the open interval $(a-\varepsilon, a+\varepsilon)$, which just means all numbers strictly between $a - \varepsilon$ and $a + \varepsilon$.
A point $a$ is a local maximum if we can find at least one tiny $\varepsilon$-neighborhood around $a$ (entirely within the domain $D(f)$) where $a$ gives the highest value out of all the points in that specific restricted neighborhood. (A local minimum is defined analogously).

### 10.3 Convexity and Concavity

Convexity is about the *curvature* of the function. 
Intuitively, imagine a smile and a frown. A function is **convex** if it is shaped like a smile (or a bowl). If you pick any two points on a convex curve and draw a straight line between them (called a chord or secant line), the actual curve will always dip *below* that straight line. 
A function is **concave** if it is shaped like a frown (or an umbrella); the curve will bulge *above* the straight line.

Let's write this mathematically.

**Definition 10.6.** 
A function $f$ is **convex** (in Hungarian: *konvex*) on an interval $I$ (where $I \subset D(f)$) if, for any two points $a$ and $b$ (where $a < b$), the graph of the function between $a$ and $b$ lies below or exactly on the straight line connecting $(a, f(a))$ and $(b, f(b))$.

The equation for a straight line connecting two points $(a, f(a))$ and $(b, f(b))$ evaluated at a point $x$ is:
$$ \text{Line}(x) = f(a) + \frac{f(b)-f(a)}{b-a}(x-a) $$
So, for $f$ to be convex, the function's value at any point $x$ in $[a,b]$ must be less than or equal to the line's value:
$$ f(x) \le f(a) + \frac{f(b)-f(a)}{b-a}(x-a) $$
If $f(x)$ is $\ge$ the line, it is **concave** (in Hungarian: *konkáv*). If the inequalities are strictly $<$ or $>$ for $a < x < b$, we say it is *strictly* convex or *strictly* concave. Note that if $f$ is convex, $-f$ is concave.

A fascinating way to think about this is through "weighted averages," which leads us to a famous theorem. Suppose you have two points, $x$ and $y$. If you want a point exactly halfway between them, you take $\frac{1}{2}x + \frac{1}{2}y$. What if you want a point closer to $x$? You might do $0.8x + 0.2y$. Notice that the "weights" ($0.8$ and $0.2$) always add up to $1$. 
Let's call our weights $p$ and $q$, where $p > 0$, $q > 0$, and $p+q=1$. Any point $z$ strictly between $x$ and $y$ can be written exactly as $z = px + qy$.

**Theorem 10.7 (Jensen's Inequality for Two Points).**
A function $f$ is convex on an interval $I$ if and only if for all points $x, y \in I$ and for all weights $p, q > 0$ (where $p+q=1$), the following holds:
$$ f(px+qy) \le p f(x) + q f(y) $$
*Intuitive meaning before the proof:*
The left side, $f(px+qy)$, is the function evaluated at our intermediate point $z$. (The curve).
The right side, $p f(x) + q f(y)$, is the weighted average of the heights $f(x)$ and $f(y)$. (The straight line).
The theorem just says: "The curve is always below the straight line."

*Proof of Theorem 10.7:*
This proof is a "two-way street" (indicated by the "if and only if"). We must prove that if the function is convex, the inequality holds; AND we must prove that if the inequality holds, the function is convex. 

Let's take two points $x < y$ in $I$.

**Part 1: Assuming convexity, prove the inequality ($\implies$)**
Suppose $f$ is convex according to Definition 10.6. We want to check our point $z = px+qy$. 
Since $p$ and $q$ are positive fractions that add up to $1$, $z$ is guaranteed to lie strictly between $x$ and $y$. 
Let's figure out the distance from $x$ to $z$:
$z - x = (px+qy) - x$
Since $p + q = 1$, we know $x = (p+q)x = px + qx$. Let's substitute that in:
$z - x = px+qy - (px+qx) = qy - qx = q(y-x)$. 

Now, let's plug $z$ into our chord definition of convexity (the straight line formula evaluated at $z$):
$$ f(z) \le f(x) + \frac{f(y)-f(x)}{y-x}(z-x) $$
Replace $(z-x)$ with $q(y-x)$:
$$ f(z) \le f(x) + \frac{f(y)-f(x)}{y-x} q(y-x) $$
The $(y-x)$ on the top and bottom cancel out perfectly!
$$ f(z) \le f(x) + q(f(y)-f(x)) $$
Let's multiply the $q$ out:
$$ f(z) \le f(x) + q f(y) - q f(x) $$
Group the $f(x)$ terms:
$$ f(z) \le (1-q) f(x) + q f(y) $$
Since $p+q=1$, we know $1-q=p$. So we replace $(1-q)$ with $p$:
$$ f(px+qy) \le p f(x) + q f(y) $$
We did it! Part 1 is complete.

**Part 2: Assuming the inequality, prove convexity ($\impliedby$)**
Now we do the reverse. Assume the inequality holds, and let's prove the chord definition.
Take a point $z$ between $x$ and $y$ ($x < z < y$). We need to invent the correct weights $p$ and $q$ to describe $z$.
Let's define $p = \frac{y-z}{y-x}$ and $q = \frac{z-x}{y-x}$. 
Since $z$ is between $x$ and $y$, both $p$ and $q$ are strictly positive. 
Do they add up to 1? Let's check:
$$ p+q = \frac{y-z}{y-x} + \frac{z-x}{y-x} = \frac{y-z+z-x}{y-x} = \frac{y-x}{y-x} = 1. $$
Perfect. Now, what point does $px + qy$ give us?
$$ px + qy = \frac{y-z}{y-x}x + \frac{z-x}{y-x}y = \frac{xy - zx + zy - xy}{y-x} = \frac{z(y-x)}{y-x} = z. $$
Amazing. It gives us $z$. 

Now, let's use our assumed inequality $f(z) \le p f(x) + q f(y)$:
$$ f(z) \le \frac{y-z}{y-x}f(x) + \frac{z-x}{y-x}f(y) $$
This looks a bit messy. Let's do a trick. Since $\frac{y-z}{y-x} = 1 - \frac{z-x}{y-x}$, let's rewrite the first part:
$$ f(z) \le \left(1 - \frac{z-x}{y-x}\right)f(x) + \frac{z-x}{y-x}f(y) $$
$$ f(z) \le f(x) - \frac{z-x}{y-x}f(x) + \frac{z-x}{y-x}f(y) $$
Factor out the fraction:
$$ f(z) \le f(x) + \frac{z-x}{y-x}(f(y)-f(x)) $$
Rearrange slightly:
$$ f(z) \le f(x) + \frac{f(y)-f(x)}{y-x}(z-x) $$
This is exactly the chord definition of convexity! The proof is complete. $\blacksquare$ 
*(By the way, $\blacksquare$ is a symbol mathematicians use to say "The proof is finished, drop the mic!")*

Jensen's inequality is incredibly powerful because it doesn't just work for two points. If you use mathematical induction (a way of chaining proofs together step-by-step to infinity), you can prove it works for any number of points!

**Theorem 10.8 (General Jensen's Inequality).**
A function $f$ is convex on $I$ if and only if for any number of points $x_1, \dots, x_n \in I$ and any positive weights $p_1, \dots, p_n$ that sum up to exactly $1$, we have:
$$ f(p_1 x_1 + \dots + p_n x_n) \le p_1 f(x_1) + \dots + p_n f(x_n). $$

There is one more highly visual way to define convexity, based on slopes.
Imagine pinning a string at a point $(a, f(a))$ on a convex curve. If you pull the string to connect to another point $(x, f(x))$, that string forms a secant line. The slope of this line is "rise over run", defined as:
$$ m_a(x) = \frac{f(x)-f(a)}{x-a} $$

**Theorem 10.9.**
A function $f$ is convex on $I$ if and only if, for every fixed pin point $a \in I$, the secant slope function $m_a(x)$ is monotonically increasing on $I \setminus \{a\}$. 

*Proof of Theorem 10.9.*
($\implies$) Suppose $f$ is convex. Pick an $a$, and two points $x$ and $y$ such that $a < x < y$.
Because it's convex, the curve at $x$ must be below the string connecting $a$ to $y$. Using our straight line formula:
$$ f(x) \le f(a) + \frac{f(y)-f(a)}{y-a}(x-a) $$
Let's subtract $f(a)$ from both sides:
$$ f(x) - f(a) \le \frac{f(y)-f(a)}{y-a}(x-a) $$
Because $x > a$, we know $(x-a)$ is a positive number. In math, you can divide an inequality by a positive number without flipping the sign. Let's divide by $(x-a)$:
$$ \frac{f(x)-f(a)}{x-a} \le \frac{f(y)-f(a)}{y-a} $$
Look closely! The left side is exactly our slope formula $m_a(x)$. The right side is exactly $m_a(y)$.
So, $m_a(x) \le m_a(y)$. The slope increased! The cases for $x < y < a$ and $x < a < y$ follow similarly.

($\impliedby$) What if we assume the slopes are increasing? 
Then for any $a < x < y$, we know $m_a(x) \le m_a(y)$. 
Writing that out gives:
$$ \frac{f(x)-f(a)}{x-a} \le \frac{f(y)-f(a)}{y-a} $$
Since $(x-a)$ is positive, let's multiply both sides by it:
$$ f(x) - f(a) \le \frac{f(y)-f(a)}{y-a}(x-a) $$
Add $f(a)$ to both sides:
$$ f(x) \le f(a) + \frac{f(y)-f(a)}{y-a}(x-a) $$
This perfectly recovers our chord inequality definition of convexity exactly. $\blacksquare$

### Exercises for Chapter 10
1. Prove the general Jensen's inequality (Theorem 10.8) using mathematical induction. (Hint: Start with the base case of $n=2$, which we already proved!)
2. Show that $f(x) = x^2$ is strictly convex on $\mathbb{R}$ by directly evaluating the secant slope function $m_a(x)$ and showing it strictly increases.
3. Use Jensen's inequality to prove that the arithmetic mean (average) is less than or equal to the quadratic mean (in Hungarian: *négyzetes közép*). Specifically, prove: $\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}$.


---

## Chapter 11: Sequences and The Infinite

In our rigorous study of mathematical analysis, we often find ourselves grappling with a mind-bending concept: the infinite. How do we formally talk about a process that continues forever? How do we describe quantities that grow arbitrarily large, or get arbitrarily close to a specific, target value without necessarily ever touching it? 

The most fundamental tool for dealing with the infinite is the **mathematical sequence**. 

### 11.1 Definition of Sequences

In everyday language, a sequence is just a list of objects placed in a specific order. You have a first item, a second item, a third item, and so on. 
Mathematically, we formalize this idea by assigning an object to each natural number ($1, 2, 3, \dots$). 

**Definition 11.1.1 (Sequence / Sorozat)**
A sequence is a function. But unlike the functions in Chapter 10 that took any real number as an input, a sequence is a special machine that *only* accepts natural numbers ($\mathbb{N}$) as inputs (or sometimes the set of positive integers $\{1, 2, 3, \dots\}$). 

If $A$ is a set of allowed outputs, a sequence in $A$ is a function $a: \mathbb{N} \to A$. 
Instead of writing it like a normal function, $a(n)$, mathematicians prefer a shorthand notation: we write $a_n$. This denotes the "$n$-th term" of the sequence. 
The entire infinite list of terms is usually written as $(a_n)$, $(a_1, a_2, \dots)$, or $\{a_n\}_{n=1}^{\infty}$.

If our outputs are real numbers ($A = \mathbb{R}$), we call $(a_n)$ a **real sequence** (in Hungarian: *valós számsorozat*). In this chapter and the ones following, whenever we say "sequence", we mean a sequence of real numbers.

### 11.2 Monotonicity and Boundedness

To understand what happens to a sequence when $n$ becomes incredibly large (as we approach infinity), it helps to categorize them based on their behavior: do they always grow? Do they bounce around? Do they fly off to infinity, or are they trapped within limits?

**Definition 11.2.1 (Monotonicity / Monotonitás)**
This describes the "direction" a sequence travels. A sequence $(a_n)$ is called:
1. **monotonically increasing** (in Hungarian: *monoton növekvő*): The next term is always greater than or equal to the current term. Formally: $a_n \le a_{n+1}$ for all $n \in \mathbb{N}$. (Example: 1, 2, 2, 3, 4, 4...)
2. **strictly monotonically increasing** (in Hungarian: *szigorúan monoton növekvő*): The next term is *strictly* greater. No flat parts! Formally: $a_n < a_{n+1}$ for all $n \in \mathbb{N}$. (Example: 1, 2, 3, 4...)
3. **monotonically decreasing** (in Hungarian: *monoton csökkenő*): The next term is always smaller than or equal to the current term. Formally: $a_n \ge a_{n+1}$ for all $n \in \mathbb{N}$.
4. **strictly monotonically decreasing** (in Hungarian: *szigorúan monoton csökkenő*): The next term is strictly smaller. Formally: $a_n > a_{n+1}$ for all $n \in \mathbb{N}$.

**Definition 11.2.2 (Boundedness / Korlátosság)**
This describes whether a sequence is trapped by imaginary ceilings or floors. A sequence $(a_n)$ is said to be:
1. **bounded above** (in Hungarian: *felülről korlátos*): The sequence never breaks through a certain ceiling. The set of its terms $\{a_n : n \in \mathbb{N}\} \subset \mathbb{R}$ is bounded above. There exists a real number $K$ (the ceiling) such that $a_n \le K$ for all $n \in \mathbb{N}$. 
2. **bounded below** (in Hungarian: *alulról korlátos*): The sequence never drops below a certain floor. There exists a real number $k$ (the floor) such that $a_n \ge k$ for all $n \in \mathbb{N}$.
3. **bounded** (in Hungarian: *korlátos*): It is trapped between *both* a floor and a ceiling. Equivalently, you can just say there exists a positive number $K > 0$ such that the absolute value $|a_n| \le K$ for all $n \in \mathbb{N}$. This traps the sequence between $-K$ and $K$.

*Let's look at some examples to make this concrete:*
- $a_n = \frac{1}{n}$: This sequence generates the list $1, \frac{1}{2}, \frac{1}{3}, \dots$. It is strictly monotonically decreasing. It is bounded, because the terms are trapped: $0 < a_n \le 1$ for all $n$. Intuitively, the terms get "closer and closer to 0".
- $b_n = (-1)^n$: This sequence is $-1, 1, -1, 1, \dots$. It bounces back and forth, so it is *not* monotonic. However, it is bounded because the terms never escape the trap of $-1$ and $1$ (so $|b_n| = 1 \le 1$).
- $c_n = n$: This sequence is $1, 2, 3, \dots$. It is strictly monotonically increasing. It is bounded below (by 1) but it is *not* bounded above, because the numbers will grow infinitely large, smashing through any ceiling $K$ you try to set.
- $d_n = (-1)^n \cdot n$: This sequence is $-1, 2, -3, 4, -5, \dots$. It swings wildly in both directions. It is neither bounded nor monotonic.

### 11.3 Subsequences

Sometimes a sequence is messy, but if we cherry-pick certain terms, we can find a beautiful, well-behaved pattern hidden inside.

**Definition 11.3.1 (Subsequence / Részsorozat)**
Let $(a_n)$ be a sequence. Imagine picking a new list of index numbers, $n_1 < n_2 < n_3 < \dots$, that must strictly increase. 
If we pull out the terms from our original sequence that correspond to these chosen indices, we form a new sequence $(b_k)_{k=1}^{\infty}$, defined by $b_k = a_{n_k}$. This new sequence is called a **subsequence** of $(a_n)$.
*Example:* If our sequence is $a_n = (-1)^n$ (which is $-1, 1, -1, 1 \dots$), it's messy. But if we decide to only pick the terms with even indices ($n_k = 2k$), we get a new subsequence: $b_k = a_{2k} = (-1)^{2k} = 1, 1, 1, 1 \dots$, which is wonderfully constant and well-behaved!

### 11.4 The Sequence of Euler's Number

Now we arrive at one of the most famous and important sequences in all of mathematics, which gives birth to Euler's number, $e$. 
Let's study the sequence defined by:
$$ e_n = \left(1 + \frac{1}{n}\right)^n $$

To understand this sequence, we first need to prove how it behaves as $n$ grows.

**Theorem 11.3.1**
The sequence $e_n = \left(1 + \frac{1}{n}\right)^n$ is strictly monotonically increasing. (It always grows).

*Intuitive commentary before the proof:*
At first glance, this isn't obvious. The inside of the parentheses, $\left(1 + \frac{1}{n}\right)$, is shrinking towards $1$ as $n$ gets larger. But the exponent, $n$, is growing towards infinity. It's a tug-of-war between a shrinking base and a growing exponent. To prove the growing exponent "wins", we will use a famous mathematical trick called the **Arithmetic Mean-Geometric Mean (AM-GM) inequality** (in Hungarian: *számtani-mértani közép közötti egyenlőtlenség*).
The AM-GM inequality simply says that for any list of positive numbers $x_1, x_2, \dots, x_k$, their geometric mean (multiplying them and taking the root) is always less than or equal to their arithmetic mean (adding them and dividing by the count). And it is *strictly* less unless all the numbers in the list are identical. 
Formula: $\sqrt[k]{x_1 x_2 \dots x_k} \le \frac{x_1 + x_2 + \dots + x_k}{k}$.

*Proof of Theorem 11.3.1:*
We want to prove that the sequence strictly goes up. That means we want to show $e_n < e_{n+1}$ for all $n \ge 1$.
Written out fully, we want to prove:
$$ \left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n+1}\right)^{n+1} $$

Let's use the AM-GM inequality. We need to choose a clever list of numbers to plug into it. 
We will use a total of $n+1$ numbers. What are they?
- We will use the number $\left(1 + \frac{1}{n}\right)$ exactly $n$ times.
- We will use the number $1$ exactly $1$ time.
Since the numbers in our list are not all identical (because $1 + \frac{1}{n} \neq 1$), the AM-GM inequality tells us the geometric mean will be *strictly less* ($<$) than the arithmetic mean.

Let's write out the inequality for our specific list:
$$ \sqrt[n+1]{\left(1 + \frac{1}{n}\right)^n \cdot 1} < \frac{n \cdot \left(1 + \frac{1}{n}\right) + 1}{n+1} $$

The left side looks scary, but the right side is just basic algebra. Let's simplify the right side (the arithmetic mean):
1. Multiply the $n$ into the parenthesis: $n \cdot \left(1 + \frac{1}{n}\right) = n + n(\frac{1}{n}) = n + 1$.
2. Add the $1$ that was on the outside: $(n + 1) + 1 = n + 2$.
3. Put it over the denominator: $\frac{n+2}{n+1}$.
4. Let's split this fraction up to make it easier to read: $\frac{n+1+1}{n+1} = \frac{n+1}{n+1} + \frac{1}{n+1} = 1 + \frac{1}{n+1}$.

Wow! The arithmetic mean simplified perfectly to $1 + \frac{1}{n+1}$. Let's put that back into our big inequality:
$$ \sqrt[n+1]{\left(1 + \frac{1}{n}\right)^n} < 1 + \frac{1}{n+1} $$

To get rid of the ugly root on the left side, we just raise both sides to the power of $(n+1)$:
$$ \left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n+1}\right)^{n+1} $$
And look at that! The left side is exactly $e_n$, and the right side is exactly $e_{n+1}$. We have proven that $e_n < e_{n+1}$. This concludes the proof. $\square$

An interesting companion to $e_n$ is the sequence $f_n = \left(1 + \frac{1}{n}\right)^{n+1}$. Notice the exponent is just one higher. Let's analyze its monotonicity.

**Theorem 11.3.2**
The sequence $f_n = \left(1 + \frac{1}{n}\right)^{n+1}$ is strictly monotonically decreasing.

*Proof of Theorem 11.3.2:*
We want to prove that $f_n$ shrinks, meaning $f_n > f_{n+1}$ for all $n \ge 1$. 
Working with fractions can sometimes flip a tricky problem into an easy one. Saying $f_n > f_{n+1}$ is mathematically identical to saying their reciprocals are flipped: $\frac{1}{f_n} < \frac{1}{f_{n+1}}$. Let's try to prove that instead.

First, let's rewrite $\frac{1}{f_n}$:
$$ \frac{1}{f_n} = \frac{1}{\left(\frac{n+1}{n}\right)^{n+1}} = \left( \frac{n}{n+1} \right)^{n+1} $$
A clever way to write $\frac{n}{n+1}$ is $\left( 1 - \frac{1}{n+1} \right)$. Try the math yourself: $1 - \frac{1}{n+1} = \frac{n+1}{n+1} - \frac{1}{n+1} = \frac{n}{n+1}$. 
So we have:
$$ \frac{1}{f_n} = \left( 1 - \frac{1}{n+1} \right)^{n+1} $$

Once again, we deploy our trusty AM-GM inequality. This time, we will use a list of $n+2$ numbers:
- We will use the number $\left(1 - \frac{1}{n+1}\right)$ exactly $n+1$ times.
- We will use the number $1$ exactly $1$ time.

Because the numbers aren't identical, the geometric mean is strictly less than the arithmetic mean:
$$ \sqrt[n+2]{\left(1 - \frac{1}{n+1}\right)^{n+1} \cdot 1} < \frac{(n+1)\left(1 - \frac{1}{n+1}\right) + 1}{n+2} $$

Let's simplify the right side (the arithmetic mean):
1. Multiply the $(n+1)$ into the parenthesis: $(n+1) \cdot \left(1 - \frac{1}{n+1}\right) = (n+1) - 1 = n$.
2. Add the $1$ that was on the outside: $n + 1$.
3. Put it over the denominator: $\frac{n+1}{n+2}$.
4. Rewrite this fraction: $\frac{n+2-1}{n+2} = 1 - \frac{1}{n+2}$.

Let's put this simplified version back into the inequality:
$$ \sqrt[n+2]{\frac{1}{f_n}} < 1 - \frac{1}{n+2} $$

Raise both sides to the power of $(n+2)$:
$$ \frac{1}{f_n} < \left(1 - \frac{1}{n+2}\right)^{n+2} $$

Take a close look at the right side. That expression is exactly the formula for $\frac{1}{f_{n+1}}$ because $f_{n+1} = \left(1 + \frac{1}{n+1}\right)^{n+2} = \left(\frac{n+2}{n+1}\right)^{n+2}$, which flipped is $\left(\frac{n+1}{n+2}\right)^{n+2} = \left(1 - \frac{1}{n+2}\right)^{n+2}$. 
Therefore, $\frac{1}{f_n} < \frac{1}{f_{n+1}}$.
Flipping them back over, we get $f_n > f_{n+1}$. The sequence is strictly monotonically decreasing. $\square$

If we compute the first few terms of the growing sequence $e_n$, we find $e_1 = 2$, $e_2 = 2.25$, ..., $e_{100} \approx 2.7048$, $e_{1000} \approx 2.7169$. The sequence gets ever closer to a transcendental number we call $e \approx 2.7182818\dots$. 
In Chapter 12, we will rigorously define exactly what it means for a sequence to "get closer to" a number.

### 11.5 Exercises

1. Determine whether the sequence $a_n = \frac{3n-1}{n+2}$ is monotonic. Is it bounded? (Hint: Plug in the first few numbers to get a feel, then try to prove your suspicion).
2. Prove that the sequence $a_n = \frac{2^n}{n!}$ is strictly monotonically decreasing for $n \ge 1$, and deduce that it is bounded. (Hint: The factorial $n!$ grows much faster than exponentials).
3. Show that if $(a_n)$ and $(b_n)$ are monotonically increasing sequences, then the sequence $c_n = a_n + b_n$ is also monotonically increasing.
4. Let $a_n = \sqrt{n+1} - \sqrt{n}$. Prove that $(a_n)$ is bounded and strictly monotonically decreasing. (Hint: Try multiplying by a clever fraction like $\frac{\sqrt{n+1} + \sqrt{n}}{\sqrt{n+1} + \sqrt{n}}$ to get rid of the minus sign).


---

## Chapter 12: Limits of Sequences

Having established the definition and basic properties of sequences in Chapter 11, we now turn to the most central, foundational concept of mathematical analysis: the **limit**. 

The limit makes rigorous the fuzzy, intuitive idea of a sequence "getting arbitrarily close" to a specific value as $n$ goes to infinity.

### 12.1 The Definition of a Limit

Let's start with a simple sequence: $a_n = \frac{1}{n}$. This creates the list $1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4} \dots$. 
As $n$ increases, $a_n$ becomes smaller and smaller, heading towards $0$. 
To formalize this, we do not say that it actually "reaches" $0$. Instead, we play a game of margins. 

Imagine you give me a predefined "margin of error", which we call $\varepsilon > 0$ (the Greek letter epsilon). I have to prove to you that, eventually, the terms of the sequence will fall within that margin around $0$, and stay there for all subsequent terms. If I can guarantee this for *any* margin of error, no matter how microscopically small, then we mathematically declare the limit is $0$.

Let's write this with absolute precision.

**Definition 12.1.1 (Limit of a Sequence / Határérték)**
A sequence of real numbers $(a_n)$ is said to have a limit $a \in \mathbb{R}$ if the following is true:
For every possible real number $\varepsilon > 0$ (our "margin of error"), there exists a natural number $n_\varepsilon$ (the threshold index or moment in time when the sequence gets trapped) such that for all $n \ge n_\varepsilon$, the inequality
$$ |a_n - a| < \varepsilon $$
is satisfied. 

*What does this inequality mean?* The absolute value $|a_n - a|$ is simply the distance between the sequence term $a_n$ and our target limit $a$. So, $|a_n - a| < \varepsilon$ just means "the distance between the sequence and the target is strictly less than our margin of error."

If such a number $a$ exists, we say that the sequence is **convergent** (in Hungarian: *konvergens*) and converges to $a$. 
We denote this elegantly by:
$$ \lim_{n \to \infty} a_n = a $$
or simply $a_n \to a$ as $n \to \infty$. 

If a sequence does not have a single finite limit, it is called **divergent** (in Hungarian: *divergens*).

**Geometrical Interpretation**
Let us interpret this geometrically. The inequality $|a_n - a| < \varepsilon$ is equivalent to unpacking the absolute value:
$$ -\varepsilon < a_n - a < \varepsilon $$
Adding $a$ to all three parts gives:
$$ a - \varepsilon < a_n < a + \varepsilon $$
This defines a small window or interval around our target $a$: $(a - \varepsilon, a + \varepsilon)$. We call this window the **$\varepsilon$-neighborhood** (in Hungarian: *$\varepsilon$-sugarú nyílt környezet*) of $a$, denoted by $B(a, \varepsilon)$ or $U_\varepsilon(a)$.
Thus, $\lim_{n \to \infty} a_n = a$ simply means that no matter how small an $\varepsilon$-neighborhood window we choose around $a$, eventually all terms of the sequence (from index $n_\varepsilon$ onwards) will fall into this neighborhood and never leave.

*Example:* Prove that $\lim_{n \to \infty} \frac{(-1)^n}{2n} = 0$.

*Intuitive breakdown:* This sequence alternates signs, but the bottom of the fraction gets huge. It looks like: $-\frac{1}{2}, \frac{1}{4}, -\frac{1}{6}, \frac{1}{8} \dots$. It's clearly squeezing into $0$. Let's prove it rigorously.

*Rigorous Proof:* 
Let $\varepsilon > 0$ be any given margin of error. We want to find a threshold $n_\varepsilon$ such that for all $n \ge n_\varepsilon$, the distance to zero is less than $\varepsilon$:
$$ \left| \frac{(-1)^n}{2n} - 0 \right| < \varepsilon $$
Let's simplify the left side. The absolute value destroys the alternating $(-1)^n$ sign, making it always positive $1$. We are left with:
$$ \frac{1}{2n} < \varepsilon $$
Solving for $n$ gives $n > \frac{1}{2\varepsilon}$.
By the Archimedean property of real numbers (which states that for any real number, there is a larger integer), we can always choose an integer $n_\varepsilon > \frac{1}{2\varepsilon}$. 
For example, if someone challenges us with $\varepsilon = 0.01$, $\frac{1}{2(0.01)} = \frac{1}{0.02} = 50$, so we can choose our threshold to be $n_\varepsilon = 51$. For any $n \ge n_\varepsilon$, the condition $|a_n - 0| < \varepsilon$ is completely satisfied.

**Theorem 12.1.2**
The following two statements are logically equivalent for a sequence $(a_n)$ and a target $a \in \mathbb{R}$:
(A) $\lim_{n \to \infty} a_n = a$.
(B) For every $\varepsilon > 0$, only finitely many terms of the sequence $(a_n)$ are outside the $\varepsilon$-neighborhood $B(a, \varepsilon)$.

*Proof of Theorem 12.1.2:*
(A $\Rightarrow$ B): Suppose $a_n \to a$. Let $\varepsilon > 0$ be given. By definition, there exists a threshold $n_\varepsilon$ such that for all $n \ge n_\varepsilon$, $a_n \in B(a, \varepsilon)$. Therefore, the only terms that might not be in the neighborhood are the ones *before* the threshold: $a_1, a_2, \dots, a_{n_\varepsilon - 1}$. This is a finite number of terms.
(B $\Rightarrow$ A): Suppose that for every $\varepsilon > 0$, only finitely many terms are outside $B(a, \varepsilon)$. Let $I$ be the set of indices $n$ for which the term missed the neighborhood ($a_n \notin B(a, \varepsilon)$). Since $I$ is a finite set, we can easily find its maximum element, say $N = \max I$. Let our threshold be $n_\varepsilon = N + 1$. Then for all $n \ge n_\varepsilon$, we have $n \notin I$, which means $a_n \in B(a, \varepsilon)$. This perfectly matches the definition of $a_n \to a$. $\square$

**Theorem 12.1.3 (Uniqueness of Limits)**
If $\lim_{n \to \infty} a_n = a$ and $\lim_{n \to \infty} a_n = b$, then $a = b$. (A convergent sequence has exactly one limit).

*Intuitive breakdown:* You can't be getting arbitrarily close to two different places at the exact same time. If a sequence is squeezing tightly into one target, it can't simultaneously squeeze into a different target.

*Proof of Theorem 12.1.3:*
Assume for the sake of contradiction that $a \neq b$. Then the distance between them is positive: $|a - b| > 0$. Let us choose a very specific margin of error: $\varepsilon = \frac{|a - b|}{2}$. Since $\varepsilon > 0$, by the definition of limits, there exist thresholds $n_{\varepsilon, 1}$ and $n_{\varepsilon, 2}$ such that:
For all $n \ge n_{\varepsilon, 1}$, $|a_n - a| < \varepsilon$.
For all $n \ge n_{\varepsilon, 2}$, $|a_n - b| < \varepsilon$.
Let $N = \max(n_{\varepsilon, 1}, n_{\varepsilon, 2})$. For any $n \ge N$, both inequalities must hold at the same time. Let's use the triangle inequality (the direct distance is always $\le$ a detour):
$$ |a - b| = |(a - a_n) + (a_n - b)| \le |a - a_n| + |a_n - b| < \varepsilon + \varepsilon = 2\varepsilon $$
But we defined $2\varepsilon = |a - b|$. So we get $|a - b| < |a - b|$, a blatant contradiction. Therefore, our assumption was wrong, and $a = b$. $\square$

**Theorem 12.1.4**
If $a_n \to a$, then the difference between consecutive terms tends to 0, i.e., $(a_{n+1} - a_n) \to 0$.

*Proof of Theorem 12.1.4:*
Let $\varepsilon > 0$ be given. To make the math smooth, choose a tighter margin $\varepsilon' = \frac{\varepsilon}{2}$. Since $a_n \to a$, there exists a threshold $n_{\varepsilon'}$ such that for all $n \ge n_{\varepsilon'}$, $|a_n - a| < \varepsilon'$.
Then for $n \ge n_{\varepsilon'}$, the next term $n+1$ is also past the threshold ($n+1 > n_{\varepsilon'}$), so $|a_{n+1} - a| < \varepsilon'$ is also true.
Now, for any $n \ge n_{\varepsilon'}$, let's measure the distance between consecutive terms with a detour through $a$:
$$ |a_{n+1} - a_n| = |(a_{n+1} - a) + (a - a_n)| \le |a_{n+1} - a| + |a_n - a| < \varepsilon' + \varepsilon' = 2\varepsilon' = \varepsilon $$
Thus, by definition, $(a_{n+1} - a_n) \to 0$. $\square$

> [!WARNING]
> *Important Note:* The converse of this theorem is generally **false**! If the steps between consecutive terms shrink to 0 ($a_{n+1} - a_n \to 0$), it does *not* guarantee that $(a_n)$ is convergent. For example, $a_n = \sqrt{n}$ diverges to infinity, but its step size $a_{n+1} - a_n = \sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1} + \sqrt{n}} \to 0$. Always remember: shrinking step sizes do not guarantee a finite limit!


---

## Chapter 13: Bolzano-Weierstrass and Cauchy's Criterion

Welcome back! In this chapter, we are going to explore two of the most profound and genuinely useful tools for understanding sequences of real numbers. The first is the Bolzano-Weierstrass theorem, which guarantees that under very mild conditions, even chaotic sequences have a nicely behaved, predictable "sub-sequence" hidden inside them. The second is Cauchy's Criterion, which is essentially a magical test that lets us figure out if a sequence converges *without* needing to guess its limit first.

Let's dive in.

### 13.1 The Bolzano-Weierstrass Theorem

Before we get to the main event, we need to prove a remarkably elegant and intuitive lemma (a "helper theorem"). It guarantees that inside *any* sequence of real numbers, no matter how much it bounces around, you can always find a subsequence that either strictly goes up or strictly goes down (or stays flat).

Imagine you are hiking along a mountain range that goes on forever. Let's call the height of the $n$-th mountain $a_n$. 

**Lemma 13.1.1 (Peak Element Lemma)**
Every sequence of real numbers has a monotonic (always increasing or always decreasing) subsequence.

*Proof.*
Let $(a_n)$ be our sequence. We will call a specific index $k$ a **"peak"** (or *csúcs elem* in Hungarian) if the term $a_k$ is greater than or equal to *all* the terms that come after it. 
In other words, if you stand on the $k$-th mountain, you will never see a mountain higher than yours if you look forward. Mathematically, $k$ is a peak if for all $m \ge k$, we have $a_k \ge a_m$.

When we look at our infinite sequence, there are exactly two possibilities regarding how many of these "peaks" exist. They cover every possible scenario:

**Case 1: There are infinitely many peaks.**
Imagine there are infinitely many such peaks. Let their indices be $k_1 < k_2 < k_3 < \dots$
Because $k_1$ is a peak, it is taller than or equal to everything after it, including the next peak $k_2$. So, $a_{k_1} \ge a_{k_2}$. 
Because $k_2$ is also a peak, it is taller than or equal to everything after it, including $k_3$. So, $a_{k_2} \ge a_{k_3}$. 
If we just take the sequence of these peak values, we get $a_{k_1} \ge a_{k_2} \ge a_{k_3} \ge \dots$. 
Look at that! This forms a monotonically decreasing subsequence. 

**Case 2: There are finitely many peaks.**
What if there are only a finite number of peaks? (This includes the case where there are zero peaks). 
Since there are only finitely many, eventually, you will pass the last one. Let's say $s_1$ is an index that comes *after* the very last peak. This means from $s_1$ onwards, **there are no more peaks at all**.

Let's pick our first point $n_1 = s_1$. Because $n_1$ is *not* a peak, it means there must be some mountain further ahead that is strictly taller. Let's call its index $n_2$ (with $n_2 > n_1$). So, $a_{n_2} > a_{n_1}$.
But wait, $n_2$ comes after $s_1$, so $n_2$ is *also* not a peak! That means there must be an even taller mountain further ahead. Let's call it $n_3$, so $a_{n_3} > a_{n_2}$.
We can continue this process forever. We construct a sequence of indices $n_1 < n_2 < n_3 < \dots$ where $a_{n_1} < a_{n_2} < a_{n_3} < \dots$. 
This forms a strictly monotonically increasing subsequence.

In every possible universe (Case 1 or Case 2), we successfully found a monotonic subsequence. $\square$

With this beautifully simple lemma, the famous Bolzano-Weierstrass theorem becomes almost trivial to prove.

**Theorem 13.1.2 (Bolzano-Weierstrass Theorem)**
Every bounded sequence has a convergent subsequence.

*Wait, why is this a big deal?* Being bounded just means the sequence is trapped between two horizontal lines (it doesn't shoot off to infinity). It could still bounce around wildly forever without settling down (like $1, -1, 1, -1, \dots$). This theorem says: "Sure, it might bounce, but there is at least one sub-pattern inside it that settles down to a specific limit."

*Proof.*
Let $(a_n)$ be a bounded sequence. 
By our Peak Element Lemma (Lemma 13.1.1), we know that $(a_n)$ has a monotonic subsequence, let's call it $(a_{n_k})$. 
Because the original sequence $(a_n)$ is bounded (trapped), any subsequence of it, including $(a_{n_k})$, must also be trapped within the same bounds!
So, what do we know about $(a_{n_k})$? It is monotonic (always moving in one direction) AND it is bounded (it can't pass a certain ceiling or floor). 
By the Monotone Convergence Theorem (Theorem 12.3.2 from the previous chapter), any sequence that constantly moves in one direction but is blocked by a wall *must* converge. Therefore, $(a_{n_k})$ is convergent. $\square$

*Note:* If a sequence is unbounded (meaning it's not trapped), it might not have a convergent subsequence. However, we can guarantee something else: it will shoot off to infinity.

**Theorem 13.1.3**
If $(a_n)$ is not bounded above (respectively below), then it has a subsequence that diverges to $+\infty$ (respectively $-\infty$).

*Proof.*
Suppose $(a_n)$ is not bounded above. This means no matter how large a number $M$ you pick, the sequence will eventually pop above $M$.
Let's build a subsequence that shoots to infinity. 
Let $n_1 = 1$. Since the sequence is not bounded above, there must be some index further ahead, $n_2 > n_1$, where the term $a_{n_2} > 2$. 
Now, having found $n_2$, we know the sequence is *still* not bounded above. So we can find an index $n_3 > n_2$ such that $a_{n_3} > 3$.
We can do this indefinitely: having chosen $n_{k-1}$, we can find a later index $n_k > n_{k-1}$ such that $a_{n_k} > k$. 
The subsequence $(a_{n_k})$ is larger than $k$ at step $k$. As $k \to \infty$, the terms grow larger than any number, meaning it clearly diverges to $+\infty$. $\square$

### 13.2 Cauchy's Criterion

Normally, if you want to prove a sequence converges, you need to guess its limit $a$ first, and then use the $\varepsilon-N$ definition to show the sequence gets arbitrarily close to $a$. But what if you don't know the limit? What if it's some messy irrational number?

Cauchy's criterion is a stroke of genius. It allows us to determine if a sequence converges based *only* on the behavior of the sequence's terms relative to each other!

To understand why this is tricky, let's look at an intuitive trap. Consider the sequence: 
$$ a_n = 1 + \frac{1}{\sqrt{2}} + \dots + \frac{1}{\sqrt{n}} = \sum_{k=1}^n \frac{1}{\sqrt{k}} $$
You might notice that the distance between consecutive terms is getting very small: $a_{n+1} - a_n = \frac{1}{\sqrt{n+1}}$, which goes to $0$ as $n \to \infty$. 
You might think, "Ah! If the steps between terms are shrinking to zero, the sequence must be settling down to a limit." **Wrong!** 
Look at the size of $a_n$. Since every term in the sum up to $n$ is at least $\frac{1}{\sqrt{n}}$, we have:
$$ a_n \ge n \cdot \frac{1}{\sqrt{n}} = \sqrt{n} $$
Since $\sqrt{n}$ goes to $+\infty$, the sequence $a_n$ also blows up to $+\infty$. 
So, consecutive terms getting close ($a_{n+1} - a_n \to 0$) does **not** guarantee convergence. It's like a turtle walking: each step is small, but if it takes enough steps, it still crosses the whole room.

What we actually need is for $a_n$ and $a_m$ to be close to each other for *any* two arbitrarily large indices $n$ and $m$, not just consecutive ones.

**Definition 13.2.1 (Cauchy Sequence)**
A sequence $(a_n)$ is called a **Cauchy sequence** if for every tolerance $\varepsilon > 0$, there exists a threshold index $n_\varepsilon \in \mathbb{N}$ such that for **all** indices $n, m \ge n_\varepsilon$, we have $|a_n - a_m| < \varepsilon$.

In plain English: No matter how tiny an error margin ($\varepsilon$) you give me, there is a point in the sequence ($n_\varepsilon$) after which *all* the terms are squeezed together within that tiny error margin of each other.

**Theorem 13.2.2 (Cauchy's Convergence Criterion)**
A real sequence $(a_n)$ is convergent if and only if it is a Cauchy sequence.

*Proof.*
We have to prove two directions: "If it converges, it's Cauchy" and "If it's Cauchy, it converges".

( $\Rightarrow$ ) *If convergent, then Cauchy.*
Suppose $(a_n)$ is convergent and its limit is $a$. Let's pick a tolerance $\varepsilon > 0$. 
Since the sequence converges to $a$, we know that eventually all terms get very close to $a$. specifically, there exists an index $n_\varepsilon$ such that for all $n \ge n_\varepsilon$, the distance to the limit is small: $|a_n - a| < \frac{\varepsilon}{2}$. (Notice we used half of epsilon. This is a common trick!).
Now, if we pick *any* two indices $n, m \ge n_\varepsilon$, how far apart are they from each other? We use the Triangle Inequality (the shortest distance between two points is a straight line, going through a middle point $a$ is longer or equal):
$$ |a_n - a_m| = |a_n - a + a - a_m| \le |a_n - a| + |a - a_m| $$
Since both $n$ and $m$ are past the threshold $n_\varepsilon$, both terms are within $\frac{\varepsilon}{2}$ of the limit $a$. 
So, $|a_n - a_m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$.
Therefore, $(a_n)$ is a Cauchy sequence. That was the easy part!

( $\Leftarrow$ ) *If Cauchy, then convergent.*
Suppose $(a_n)$ is a Cauchy sequence. We must show it actually converges to some real number.
**Step 1: Show the sequence is bounded.**
Let's set our tolerance to a fixed number, say $\varepsilon_0 = 1$. Since the sequence is Cauchy, there must be a threshold index $n_1$ such that for all $n, m \ge n_1$, the terms are within 1 unit of each other: $|a_n - a_m| < 1$. 
Let's freeze $m = n_1$. This means for any $n$ past the threshold, $|a_n - a_{n_1}| < 1$. 
This implies that $|a_n| < |a_{n_1}| + 1$. 
So, all terms from $n_1$ onwards are trapped! What about the finite number of terms before $n_1$? We just find the biggest one. Let $K$ be the maximum of $\{|a_1|, |a_2|, \dots, |a_{n_1-1}|, |a_{n_1}|+1\}$. Then $|a_n| \le K$ for all $n$. The sequence is safely bounded.

**Step 2: Find a convergent subsequence.**
Since $(a_n)$ is bounded, the Bolzano-Weierstrass theorem (Theorem 13.1.2) swoops in to save the day! It guarantees that $(a_n)$ has a subsequence $(a_{n_k})$ that converges to some limit $a \in \mathbb{R}$.

**Step 3: Show the whole sequence converges to $a$.**
We know a *part* of the sequence hones in on $a$. We also know (because it's Cauchy) that all the terms get super close to *each other*. Therefore, the whole sequence must be dragged along to $a$.
Let's make this rigorous. Let $\varepsilon > 0$. 
1. Because the sequence is Cauchy, there is a threshold $n_\varepsilon$ such that for all $n, m \ge n_\varepsilon$, $|a_n - a_m| < \frac{\varepsilon}{2}$.
2. Because the subsequence $(a_{n_k})$ converges to $a$, there is a threshold index $K_\varepsilon$ such that for all $k \ge K_\varepsilon$, $|a_{n_k} - a| < \frac{\varepsilon}{2}$.

Let's pick a very large index $k$ such that both $k \ge K_\varepsilon$ (so the subsequence term is close to $a$) AND the actual original index $n_k \ge n_\varepsilon$ (so the subsequence term is close to the rest of the sequence).
Then for any general index $n \ge n_\varepsilon$, we use the triangle inequality again, routing our path through the subsequence term $a_{n_k}$:
$$ |a_n - a| = |a_n - a_{n_k} + a_{n_k} - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| $$
Because $n \ge n_\varepsilon$ and $n_k \ge n_\varepsilon$, the first part is $< \frac{\varepsilon}{2}$ (the Cauchy property). 
Because we chose $k$ large enough, the second part is also $< \frac{\varepsilon}{2}$ (the subsequence convergence).
Hence, $|a_n - a| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$.
This proves that the entire sequence $a_n \to a$. $\square$

*A deep mathematical fact:* The Cauchy criterion works here because the real numbers $\mathbb{R}$ have no "holes" in them (a property called *completeness*). If we were only working with rational numbers $\mathbb{Q}$ (fractions), a Cauchy sequence could hone in on a "missing" number like $\sqrt{2}$, and thus fail to converge within $\mathbb{Q}$ itself!

### 13.3 Exercises

1. Prove that if a Cauchy sequence has a bounded subsequence, the original sequence is bounded. (Hint: Think about Step 1 of the Cauchy proof).
2. Consider the sequence defined by $a_1 = 1$, $a_2 = 2$, and $a_n = \frac{a_{n-1} + a_{n-2}}{2}$ for $n \ge 3$. 
   Show that the distance between consecutive terms shrinks fast: $|a_{n+1} - a_n| = \frac{1}{2^{n-1}}$. Use this, along with the geometric series, to prove that $(a_n)$ is a Cauchy sequence, and therefore converges.
3. Show that if $(a_{n})$ and $(b_{n})$ are Cauchy sequences, then their sum $(a_n + b_n)$ is also a Cauchy sequence by using Definition 13.2.1 directly. (Hint: The triangle inequality is your best friend!).


---

## Chapter 14: Infinite Series

Having built a solid, rigorous foundation on how sequences work, we are now ready to tackle one of the most mind-bending concepts in mathematics: adding infinitely many numbers together. 

In everyday arithmetic, adding a finite list of numbers is a simple algebraic operation. But adding *infinitely* many numbers is not algebra—it's impossible to literally sit down and add forever. Instead, it is an *analytical* operation. We have to define it using the concept of limits.

### 14.1 Definition of Infinite Series

Suppose we have an infinite sequence of real numbers $(a_n) = a_1, a_2, a_3, \dots$ 
We want to assign a meaningful numerical value to the infinite sum $a_1 + a_2 + a_3 + \dots$
To do this logically, we don't try to add everything at once. We add up the first few terms, see what total we get, add a few more, see the new total, and watch what happens to this running total as we keep going forever.

**Definition 14.1.1 (Infinite Series and Partial Sums)**
Given a sequence of terms $(a_k)_{k=1}^{\infty}$, we create a brand new sequence $(s_n)_{n=1}^{\infty}$ which keeps track of our running totals. We call this the **sequence of partial sums** (or *részletösszegek sorozata*):
$$ s_n = \sum_{k=1}^n a_k = a_1 + a_2 + \dots + a_n $$
Notice that $s_1 = a_1$, $s_2 = a_1 + a_2$, $s_3 = a_1 + a_2 + a_3$, and so on.

The formal symbol $\sum_{k=1}^\infty a_k$ (which is shorthand for $a_1 + a_2 + \dots$) is called an **infinite series** (or *végtelen sor*).

We say that this infinite series is **convergent** if the sequence of running totals $(s_n)$ settles down to a specific finite limit. If $\lim_{n \to \infty} s_n = s \in \mathbb{R}$, we proudly write:
$$ \sum_{k=1}^\infty a_k = s $$
and we say the "sum of the series" is $s$. 

If the sequence of partial sums $(s_n)$ does not settle down to a finite limit (maybe it bounces around, or shoots to infinity), the series is said to **diverge**. For example, if the running total grows without bound ($s_n \to +\infty$), we write $\sum_{k=1}^\infty a_k = +\infty$.

*Note:* A series doesn't have to start at index 1. It can start at 0, or 10, or anywhere. The logic remains exactly the same. We often write $\sum_{n=0}^\infty a_n$ or $\sum_{n=1}^\infty a_n$.

### 14.2 The Cauchy Criterion and the Necessary Condition

Because an infinite series is mathematically just the limit of its sequence of partial sums ($s_n$), we can magically reuse all our theorems about sequences! Specifically, we can apply Cauchy's Convergence Criterion to $s_n$.

**Theorem 14.2.1 (Cauchy Criterion for Series)**
The series $\sum_{n=1}^\infty a_n$ converges if and only if for every tiny tolerance $\varepsilon > 0$, there exists a threshold index $n_\varepsilon$ such that for all $m \ge n \ge n_\varepsilon$, the sum of a "chunk" of terms is extremely small:
$$ |a_n + a_{n+1} + \dots + a_m| = \left| \sum_{k=n}^m a_k \right| < \varepsilon $$

*Why does this make sense?* It says a series converges if, eventually, adding any distant chunk of terms barely changes the running total.

*Proof.*
The series converges $\Leftrightarrow$ the sequence of partial sums $(s_n)$ converges $\Leftrightarrow$ $(s_n)$ is a Cauchy sequence (by Theorem 13.2.2).
By definition, $(s_n)$ is Cauchy if for all $\varepsilon > 0$, there exists a threshold $n_\varepsilon$ such that for indices $m > n-1 \ge n_\varepsilon$, we have $|s_m - s_{n-1}| < \varepsilon$.
What is $s_m - s_{n-1}$? It is the sum of the first $m$ terms minus the sum of the first $n-1$ terms. This leaves exactly the chunk from index $n$ to $m$:
$$ s_m - s_{n-1} = \sum_{k=1}^m a_k - \sum_{k=1}^{n-1} a_k = \sum_{k=n}^m a_k $$
Thus, $|s_m - s_{n-1}| = \left| \sum_{k=n}^m a_k \right| < \varepsilon$. $\square$

An immediate, incredibly important rule of thumb comes directly from this criterion. We call it the "Necessary Condition."

**Theorem 14.2.2 (Necessary Condition for Convergence)**
If the series $\sum_{n=1}^\infty a_n$ converges, then the individual terms must shrink to zero: $\lim_{n \to \infty} a_n = 0$.

*Proof.*
Since the series converges, we know it obeys the Cauchy criterion. Let $\varepsilon > 0$. There exists a threshold $n_\varepsilon$ such that for any $m \ge n \ge n_\varepsilon$, the chunk $|\sum_{k=n}^m a_k| < \varepsilon$.
Let's look at the smallest possible chunk—a chunk of just one term! We do this by setting $m = n$. The sum collapses to just $a_n$:
$$ \left| \sum_{k=n}^n a_k \right| = |a_n| < \varepsilon \text{ for all } n \ge n_\varepsilon $$
But wait, "for any $\varepsilon$, $|a_n| < \varepsilon$ eventually" is the exact definition of $\lim_{n \to \infty} a_n = 0$! $\square$

**CRITICAL WARNING:** This condition is **necessary, but not sufficient**. 
Think of it like being a professional basketball player: if you are a pro basketball player, you are probably tall (necessary). But just because you are tall does not mean you are a pro basketball player (not sufficient)! 
If $a_n$ DOES NOT go to 0, the series is instantly dead; it diverges. 
But if $a_n$ DOES go to 0, the series *might* converge, or it *might* still diverge! You have to investigate further.

### 14.3 Fundamental Examples of Series

To really grasp how series behave, you need to know three classic examples like the back of your hand.

#### 1. The Geometric Series
Let our terms be powers of some number $q$, so $a_n = q^n$ for $n = 0, 1, 2, \dots$. The resulting series:
$$ \sum_{n=0}^\infty q^n = 1 + q + q^2 + q^3 + \dots $$
is called a **geometric series** (or *mértani sor*).

What happens to this sum? 
If $|q| \ge 1$ (like $q=1$ or $q=-2$), then the terms $q^n$ never shrink to 0. By our Necessary Condition (Theorem 14.2.2), the series fails instantly. It diverges.

But what if $|q| < 1$ (like a fraction $q = 1/2$)? Let's write out the formula for the partial sum $s_n$ (this is a standard algebra formula you might remember from high school):
$$ s_n = 1 + q + q^2 + \dots + q^n = \frac{1 - q^{n+1}}{1 - q} $$
Because $|q| < 1$, multiplying it by itself over and over makes it shrink. So $\lim_{n \to \infty} q^{n+1} = 0$. 
Let's plug that into our limit for the running total:
$$ \lim_{n \to \infty} s_n = \lim_{n \to \infty} \frac{1 - q^{n+1}}{1 - q} = \frac{1 - 0}{1 - q} = \frac{1}{1 - q} $$
This is a gorgeous result. For any $|q| < 1$, the geometric series converges, and its sum is exactly $\frac{1}{1 - q}$. 
(For example, $1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \dots = \frac{1}{1 - 0.5} = 2$).

#### 2. The Telescoping Series and $\sum \frac{1}{n^2}$
Let's look at a clever trick called a telescoping sum. Consider the series $\sum_{n=2}^\infty \frac{1}{n(n-1)}$.
Using a bit of fraction math (partial fractions), we can split the term apart: 
$$ \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac{1}{k} $$
Let's write out the running total $s_n$:
$$ s_n = \sum_{k=2}^n \left( \frac{1}{k-1} - \frac{1}{k} \right) = \left( \frac{1}{1} - \frac{1}{2} \right) + \left( \frac{1}{2} - \frac{1}{3} \right) + \left( \frac{1}{3} - \frac{1}{4} \right) + \dots + \left( \frac{1}{n-1} - \frac{1}{n} \right) $$
Notice how the middle terms perfectly cancel each other out! The $-1/2$ eats the $+1/2$, the $-1/3$ eats the $+1/3$, like a collapsible pirate's telescope. All that survives the massacre is the very first part and the very last part:
$$ s_n = 1 - \frac{1}{n} $$
As $n \to \infty$, $1/n \to 0$. So $\lim_{n \to \infty} s_n = 1 - 0 = 1$. The series converges beautifully to 1.

Now, let's use this to study a harder series: $\sum_{n=1}^\infty \frac{1}{n^2}$.
For any $k \ge 2$, we know that $k^2$ is larger than $k(k-1)$. If the denominator is larger, the fraction is smaller. So:
$$ \frac{1}{k^2} < \frac{1}{k(k-1)} $$
Let's look at the partial sum for our $1/n^2$ series:
$$ s_n = \sum_{k=1}^n \frac{1}{k^2} = 1 + \sum_{k=2}^n \frac{1}{k^2} $$
We can replace the terms with our bigger telescoping terms to create an "upper bound" (a ceiling):
$$ s_n < 1 + \sum_{k=2}^n \frac{1}{k(k-1)} = 1 + \left(1 - \frac{1}{n}\right) = 2 - \frac{1}{n} < 2 $$
Since we are always adding positive numbers ($1/n^2$), the running total $s_n$ is strictly increasing. And we just proved $s_n$ is always strictly less than 2! 
By the Monotone Convergence Theorem, an increasing sequence trapped by a ceiling *must* converge. 
Thus, $\sum_{n=1}^\infty \frac{1}{n^2}$ is a convergent series. (In a later course, you'll see a famous proof by Euler showing the exact sum is miraculously $\frac{\pi^2}{6}$).

#### 3. The Harmonic Series (The Ultimate Trap)
Finally, meet the **harmonic series** (or *harmonikus sor*):
$$ \sum_{n=1}^\infty \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots $$
The individual terms shrink to zero ($1/n \to 0$). So, by the Necessary Condition, it *could* converge. But does it?
Brace yourself: **It diverges to infinity.**

*Proof of Divergence.* 
We will prove this by showing it utterly fails the Cauchy criterion. Let's pick an error tolerance of $\varepsilon = 1/2$. 
If it were a Cauchy sequence, chunks far down the line should sum to less than $1/2$. 
Let's pick a chunk from index $n+1$ up to $2n$:
$$ \sum_{k=n+1}^{2n} \frac{1}{k} = \frac{1}{n+1} + \frac{1}{n+2} + \dots + \frac{1}{2n} $$
How many terms are in this chunk? Exactly $n$ terms. 
Which one is the smallest? The very last one, $\frac{1}{2n}$. 
What happens if we replace *every single term* in the chunk with the smallest one? The total sum must get smaller. Let's do it:
$$ \sum_{k=n+1}^{2n} \frac{1}{k} > n \times \left(\frac{1}{2n}\right) = \frac{1}{2} $$
No matter how far down the sequence you go, you can ALWAYS find a chunk of terms that adds up to more than $1/2$. The partial sums never settle down; they keep growing by at least $1/2$ indefinitely. 
Because the terms are positive, the running total keeps increasing forever without bounds. Therefore, $\sum_{n=1}^\infty \frac{1}{n} = +\infty$. $\square$

### 14.4 Exercises
1. Determine if the series $\sum_{n=1}^\infty \frac{n}{n+1}$ converges. (Hint: Look at the terms. Do they shrink to 0? Apply the Necessary Condition).
2. Evaluate the exact sum of $\sum_{n=1}^\infty \frac{1}{4n^2 - 1}$. *(Hint: Factor the denominator as $(2n-1)(2n+1)$, use partial fractions to split it into a subtraction, and watch the telescope collapse).*
3. Let $a_n > 0$. Prove that if the series $\sum_{n=1}^\infty a_n$ converges, then the series $\sum_{n=1}^\infty a_n^2$ also converges. *(Hint: If the series converges, $a_n$ goes to 0. Eventually, $a_n < 1$. What happens when you square a positive number less than 1?)*


---

## Chapter 15: Limits of Functions

In this chapter, we step into the true heart of mathematical analysis by introducing the concept of the limit of a function. This single idea forms the foundation of calculus (derivatives, integrals, and everything beyond). Our goal is to rigorously translate the intuitive idea of "What value does $f(x)$ approach as $x$ gets really, really close to a point $a$?"

### 15.1 Intuitive Introduction and Punctured Neighborhoods

To understand why limits are necessary, imagine a car driving down a road. Its position at time $t$ is given by a function $s(t)$. We want to find the car's *instantaneous* velocity at exactly time $t_0$. 
We know that average velocity is "change in position over change in time." So, between $t_0$ and some other time $t$, the average velocity is:
$$ f(t) = \frac{s(t) - s(t_0)}{t - t_0} $$
Here's the crisis: we want to know what happens exactly *at* $t = t_0$. But if we plug in $t = t_0$, the denominator becomes $t_0 - t_0 = 0$. Division by zero is a mathematical catastrophe; it's undefined. 

However, we don't actually need to plug in $t = t_0$. We just need to see what the average velocity is doing as $t$ gets *arbitrarily close* to $t_0$.
For example, if $s(t) = t^2$, then our average velocity function is $f(t) = \frac{t^2 - t_0^2}{t - t_0}$. 
As long as $t \neq t_0$, we can do a bit of algebra (difference of squares) and cancel out the bottom: $f(t) = t + t_0$. 
Now it's obvious! As $t$ slides closer and closer to $t_0$, the value $f(t)$ slides closer and closer to $t_0 + t_0 = 2t_0$. 

To do this formally, we need a mathematical way to talk about "all the points extremely close to $a$, but specifically **not** including $a$ itself." We call this a punctured neighborhood.

**Definition 15.1.1 (Punctured Neighborhood):** 
The **punctured $\varepsilon$-neighborhood** (or deleted neighborhood) of a point $a \in \mathbb{R}$ is the set of all real numbers strictly within a distance of $\varepsilon$ from $a$, *excluding* $a$ itself. We write it as:
$$ \dot{B}(a, \varepsilon) = B(a, \varepsilon) \setminus \{a\} = (a - \varepsilon, a) \cup (a, a + \varepsilon) $$
(The little dot on top of the $B$ reminds you that we punctured a hole right in the middle at $a$).

### 15.2 Formal Definition of the Limit

For centuries, mathematicians used vague words like "approaches" and "infinitely close." In the 19th century, Karl Weierstrass finally locked it down into an airtight, rigorous game called the $\varepsilon$-$\delta$ (epsilon-delta) definition.

Think of it as a challenge between two people. You claim the limit is $b$. Your opponent gives you an error tolerance around the target $b$ (called $\varepsilon$, epsilon). To win, you must provide a small "safe zone" around the input point $a$ (called $\delta$, delta). If taking *any* input $x$ from your safe zone guarantees the output $f(x)$ lands inside the opponent's error tolerance, you win. If you can win for *any* epsilon the opponent throws at you, the limit is indeed $b$.

**Definition 15.2.1 (Limit of a Function at a Point):** 
Let $f$ be a function and $a$ be a point. We say that the limit of $f$ at $a$ is the number $b$, if:
1. The function is actually defined around $a$. Specifically, there is some small distance $\delta_0 > 0$ such that the entire punctured neighborhood $\dot{B}(a, \delta_0)$ is inside the domain of $f$. (We don't care if $f(a)$ itself is defined).
2. For every error tolerance $\varepsilon > 0$, there exists a corresponding safe distance $\delta > 0$ (with $\delta \le \delta_0$) such that for *every single input* $x$ in the punctured safe zone $\dot{B}(a, \delta)$, we get an output $f(x)$ that is $\varepsilon$-close to $b$. Meaning, $|f(x) - b| < \varepsilon$.

When this happens, we proudly write:
$$ \lim_{x \to a} f(x) = b $$
or simply "$f(x) \to b$ as $x \to a$".

Let's see this in action with a concrete proof.

**Example 15.2.2:** Prove using the definition that $\lim_{x \to 2} x^3 = 8$.

*Proof:* 
Let our function be $f(x) = x^3$. The point we are approaching is $a = 2$, and the target limit is $b = 8$.
The opponent hands us an arbitrary $\varepsilon > 0$. We need to find a small distance $\delta > 0$ such that if the input $x$ is close to 2 (meaning $0 < |x - 2| < \delta$), the output $x^3$ is $\varepsilon$-close to 8 (meaning $|x^3 - 8| < \varepsilon$).

Let's look at the output distance and try to isolate our input distance $|x - 2|$. Using algebra (difference of cubes), we can factor it:
$$ |x^3 - 8| = |x - 2| \cdot |x^2 + 2x + 4| $$
We want this whole thing to be less than $\varepsilon$. The $|x-2|$ part is great—that's what we control with $\delta$. But the $|x^2 + 2x + 4|$ part is annoying because it changes with $x$. 

To handle it, we make an initial, common-sense restriction. Let's agree to only look at inputs $x$ that are somewhat close to 2, say within a distance of 1. So, we assume $|x - 2| < 1$. 
This means $x$ is trapped between 1 and 3. 
If $x$ is at most 3, how big can the annoying part $|x^2 + 2x + 4|$ get? 
Let's plug in the maximum possible value (x=3):
$$ x^2 + 2x + 4 < 3^2 + 2(3) + 4 = 9 + 6 + 4 = 19 $$
Great! As long as $x$ stays within 1 unit of 2, the annoying part is strictly less than 19.
Substitute this ceiling back into our original equation:
$$ |x^3 - 8| = |x - 2| \cdot |x^2 + 2x + 4| < |x - 2| \cdot 19 $$
We want the final result to be less than the opponent's $\varepsilon$. So, we set:
$$ |x - 2| \cdot 19 \le \varepsilon $$
Which means we need:
$$ |x - 2| \le \frac{\varepsilon}{19} $$
We have two conditions now: we needed $|x - 2| < 1$ (to get the 19 ceiling), AND we need $|x - 2| \le \frac{\varepsilon}{19}$. 
To guarantee both are true, we just define our winning safe zone $\delta$ as the smaller of the two!
Let $\delta = \min\left(1, \frac{\varepsilon}{19}\right)$. 

Let's double check. If the opponent chooses an input $x$ inside $0 < |x - 2| < \delta$:
- Because $\delta \le 1$, we know $|x - 2| < 1$, which guarantees the ceiling of 19 holds.
- Because $\delta \le \frac{\varepsilon}{19}$, we know $|x - 2| < \frac{\varepsilon}{19}$.
Multiply them together: $|x^3 - 8| < 19 \cdot \frac{\varepsilon}{19} = \varepsilon$. 
We win! The proof is complete. $\square$

### 15.3 One-Sided Limits

Sometimes a function acts completely differently depending on whether you approach a point from the left (smaller numbers) or the right (larger numbers). 
Think of a cliff. If you walk toward the edge from the land (left), your height is 100 meters. If a bird flies toward the exact same GPS coordinate but from over the ocean (right), its height is 0 meters. 

A classic mathematical example is the "signum" function, $\text{sgn}(x)$, which outputs $+1$ for positive numbers, $-1$ for negative numbers, and $0$ at zero. As $x$ gets close to 0 from the positive side, it stays at $+1$. From the negative side, it stays at $-1$. 

**Definition 15.3.1 (Right-sided Limit):** 
A function $f$ has a right-sided limit $b$ at $a$ if, for any error $\varepsilon > 0$, we can find a safe distance $\delta > 0$ such that checking points strictly to the right, $x \in (a, a + \delta)$, guarantees $|f(x) - b| < \varepsilon$.
We write this with a little plus sign: $\lim_{x \to a^+} f(x) = b$ (or sometimes $x \to a+0$).

**Definition 15.3.2 (Left-sided Limit):** 
Exactly the same, but checking points strictly to the left, $x \in (a - \delta, a)$. 
We write this with a little minus sign: $\lim_{x \to a^-} f(x) = b$ (or sometimes $x \to a-0$).

**Theorem 15.3.3:** 
A full, two-sided limit $\lim_{x \to a} f(x) = b$ exists if and only if **both** one-sided limits exist AND they perfectly agree with each other: $\lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = b$.

*Proof Concept:* If a full limit exists, the function stays close to $b$ from all sides, so naturally, the left and right sides behave. Conversely, if both the left side and right side get arbitrarily close to $b$, you can just take the smaller of their two $\delta$ safe zones, and that combined bubble will act as a safe zone for a full two-sided limit.

### 15.4 Limits at Infinity and Infinite Limits

We can stretch our definitions to talk about what happens when $x$ travels toward infinity ($x \to +\infty$), or when the function's output blows up to infinity ($f(x) \to +\infty$). 
Instead of a "small neighborhood" around a point, a "neighborhood of infinity" means all numbers larger than some huge threshold $K$. 
So, approaching infinity means: "No matter what threshold you give me, I can go far enough out that..."

**Definition 15.4.1 (Unified Limit Scheme):** 
Mathematicians love efficiency. Instead of memorizing 15 different variations of $\varepsilon$, $\delta$, and huge $K$ thresholds, we can define one master rule. Let the starting point $\alpha$ and the target $\beta$ be either real numbers, one-sided limits, or $\pm\infty$.

We say $\lim_{x \to \alpha} f(x) = \beta$ if:
For every neighborhood $V$ surrounding the target $\beta$, there is a punctured neighborhood $\dot{U}$ around the starting point $\alpha$, such that for every input $x \in \dot{U}$, the output $f(x)$ successfully lands inside $V$.

Let's translate a case. What does $\lim_{x \to a} f(x) = +\infty$ mean? 
- $\alpha = a$ (a real number), so its punctured neighborhood is $0 < |x - a| < \delta$.
- $\beta = +\infty$, so its neighborhood is all numbers bigger than a huge $K$, meaning $f(x) > K$.
Translation: For any massive number $K$, you can find a tiny distance $\delta > 0$ such that if $0 < |x - a| < \delta$, the function explodes past the ceiling: $f(x) > K$.

### 15.5 The Transference Principle (Átviteli elv)

We have already spent chapters proving all sorts of wonderful rules about the limits of *sequences*. Wouldn't it be great if we didn't have to reinvent the wheel and prove them all again for *functions*?
Enter the Transference Principle. It's a magical bridge that lets us translate any sequence theorem directly into a function theorem.

Before stating it, what does it mean to "accumulate"?
**Definition 15.5.1:** A point $\alpha$ is an **accumulation point** of a set if every neighborhood around $\alpha$ contains infinitely many points from the set. (Meaning, we can actually approach it using points from our domain).

**Theorem 15.5.2 (The Transference Principle / Heine's Definition of Limit):** 
Assuming $f$ is defined near a point $\alpha$, the function limit $\lim_{x \to \alpha} f(x) = \gamma$ is true **if and only if** for *every single possible sequence* of inputs $(a_n)$ that marches toward $\alpha$ (but never equals $\alpha$), the resulting sequence of outputs $f(a_n)$ marches toward $\gamma$.

*Why is this incredible?* If you want to prove a function limit exists, you can just imagine throwing a sequence of inputs at it and watching the outputs. If you want to prove a limit DOES NOT exist, all you have to do is find *two different sequences* of inputs that both head toward $\alpha$, but their outputs head to two different targets!

Let's prove how it builds the bridge:
**Theorem 15.5.3 (Limit Operations):** 
If $\lim_{x \to a} f(x) = b$ and $\lim_{x \to a} g(x) = c$, then:
1. $\lim_{x \to a} (f(x) + g(x)) = b + c$
2. $\lim_{x \to a} (f(x)g(x)) = b \cdot c$
3. If $c \neq 0$, $\lim_{x \to a} \frac{f(x)}{g(x)} = \frac{b}{c}$.

*Proof via Transference:* 
Let's prove the sum rule. Take ANY sequence of inputs $x_n \to a$. 
By the Transference Principle, because the function limits exist, the sequence of outputs $f(x_n) \to b$ and $g(x_n) \to c$. 
We already know from our sequence chapters that the sum of two convergent sequences converges to the sum of their limits. So, the sequence $(f(x_n) + g(x_n))$ converges to $b + c$. 
Since this works for *any* sequence heading to $a$, we use the Transference Principle in reverse: the function limit $\lim_{x \to a} (f(x) + g(x))$ must therefore be $b + c$. The proofs for multiplication and division are exactly the same! $\square$

### 15.6 Exercises

1. Using the formal $\varepsilon$-$\delta$ definition game, prove that $\lim_{x \to 3} (4x - 5) = 7$. *(Hint: The algebra is much easier here than with $x^3$. Solve for $|x - 3|$ directly in terms of $\varepsilon$.)*
2. Prove that $\lim_{x \to 0} \frac{1}{x^2} = +\infty$ using the formal unified definition. *(Hint: For any giant number $K > 0$, find a tiny $\delta$ such that $|x| < \delta$ forces $\frac{1}{x^2} > K$.)*
3. Consider the fractional part function $\{x\} = x - \lfloor x \rfloor$ (which strips away the integer and leaves the decimal). Use the Transference Principle to show that $\lim_{x \to 1} \{x\}$ does not exist. *(Hint: Find one sequence of points dropping down to 1 from the right, and another climbing up to 1 from the left. What do their outputs do?)*
4. Prove that if a function approaches a positive limit ($\lim_{x \to a} f(x) = L > 0$), then there must be some small neighborhood around $a$ where the function's output is strictly positive ($f(x) > 0$). *(Hint: Use the formal definition and set your error tolerance $\varepsilon$ to be $L/2$.)*


---

## Chapter 16: Continuity

Welcome to the world of continuity! If you've ever drawn a graph on a piece of paper without lifting your pen, you already have an intuitive grasp of what a continuous function is. In the language of calculus, continuity is the mathematical way of saying, "If you change the input just a tiny little bit, the output will only change a tiny little bit." There are no sudden jumps, no teleporting to different values, and no missing holes.

Let's break down how we take this simple intuition and make it mathematically rigorous.

### 16.1 Definition of Continuity

To understand continuity for an entire function, we first have to understand what it means for a function to be continuous at a single, specific point.

**Definition 16.1.1 (Continuity at a Point):** 
Imagine a function $f$ that takes real numbers from a set $X$ and outputs real numbers (we write this as $f : X \to \mathbb{R}$). Let $a$ be a specific number in that set $X$. 

We say $f$ is **continuous at $a$** if:
$$ \lim_{x \to a} f(x) = f(a) $$

This simple equation is actually packing three very specific requirements. For a function to be continuous at $a$, all three of these must be true:
1. **The function is defined at $a$.** (You can actually plug $a$ into $f$ and get a real number, meaning $a$ is in the domain).
2. **The limit exists as $x$ approaches $a$.** (As you get closer and closer to $a$ from both the left and the right, the outputs are honing in on a single target value).
3. **The limit equals the function's actual value.** (The target value the outputs are honing in on is exactly $f(a)$).

**The Epsilon-Delta ($\varepsilon$-$\delta$) Version:**
If you recall the formal definition of a limit, we can also define continuity using $\varepsilon$ (epsilon) and $\delta$ (delta). This is just a formal way of stating the "small changes" idea: 

$f$ is continuous at $a$ if for every error tolerance you give me for the output (let's call it $\varepsilon > 0$), I can find a tight enough window around the input (let's call it $\delta > 0$) such that as long as $x$ is within $\delta$ of $a$, the output $f(x)$ is guaranteed to be within $\varepsilon$ of $f(a)$.
In math terms: If $|x - a| < \delta$, then $|f(x) - f(a)| < \varepsilon$. 
*(Note: Unlike the definition of a limit, we don't care if $x = a$ here. If $x = a$, then $|f(a) - f(a)| = 0$, which is always less than $\varepsilon$.)*

**Definition 16.1.2 (One-Sided Continuity):**
Sometimes a function starts or ends at a point, or jumps. We can talk about continuity from just one side:
*   A function is **right-continuous** at $a$ if approaching $a$ from values greater than $a$ gives the limit $f(a)$. Mathematically: $\lim_{x \to a+0} f(x) = f(a)$.
*   A function is **left-continuous** at $a$ if approaching $a$ from values less than $a$ gives the limit $f(a)$. Mathematically: $\lim_{x \to a-0} f(x) = f(a)$.

**Theorem 16.1.3:** A function $f$ is continuous at $a$ if and only if it is both left-continuous and right-continuous at $a$.
*Proof:* This is just common sense wrapped in mathematical logic. The overall limit only exists (and equals $f(a)$) if both the left-side limit and the right-side limit exist, equal each other, and equal $f(a)$.

**Notation:** 
Mathematicians love shorthand. If a function is continuous at every single point inside an open interval $(\alpha, \beta)$ (meaning not including the endpoints), we say it belongs to the "club" $C(\alpha, \beta)$. 

If a function is continuous on a **closed** interval $[a, b]$ (which includes the endpoints $a$ and $b$), we write $f \in C[a, b]$. For this to be true, $f$ must be continuous at every point in the middle, **right-continuous** at the starting point $a$, and **left-continuous** at the ending point $b$.

### 16.2 Properties of Continuous Functions

Because continuity is based directly on limits, all the friendly algebraic rules that apply to limits also apply to continuous functions. 

**Theorem 16.2.1 (Algebra of Continuous Functions):** 
If you have two functions, $f$ and $g$, and they are both continuous at a point $a$, then:
1. Adding them ($f + g$), subtracting them ($f - g$), and multiplying them ($f \cdot g$) will create new functions that are also continuous at $a$.
2. Dividing them ($f/g$) will also be continuous at $a$, **provided** that the denominator $g(a)$ is not zero (because dividing by zero breaks things).

*Proof Intuition:* We know the limit of a sum is the sum of the limits. Since $\lim_{x \to a} f(x) = f(a)$ and $\lim_{x \to a} g(x) = g(a)$, then $\lim_{x \to a} [f(x) + g(x)] = f(a) + g(a)$. The same logic works for multiplication and division!

**Corollary 16.2.2 (Friendly Functions):** 
Thanks to the theorem above, we know that:
*   Constant functions (like $f(x) = 5$) and the identity function ($f(x) = x$) are continuous everywhere. 
*   Because we can multiply and add these together, **all polynomials** (like $3x^2 + 2x - 1$) are continuous for all real numbers.
*   **All rational functions** (polynomials divided by polynomials) are continuous everywhere, except at the exact points where their denominator equals zero.

**Theorem 16.2.3 (Transference Principle for Continuity):** 
This theorem provides a bridge between continuous functions and sequences. It states that a function $f$ is continuous at $a$ if and only if, for **every** sequence $(a_n)$ that converges to $a$, the sequence of their outputs $(f(a_n))$ converges to $f(a)$.

*Why this is amazing:* It means that if a function is continuous, you can swap the order of taking a limit and applying the function. You can just plug the limit right inside! 
$$ \lim_{n \to \infty} f(a_n) = f\left(\lim_{n \to \infty} a_n\right) $$

**Theorem 16.2.4 (Continuity of Composite Functions):** 
If you plug one continuous function into another, the result is still continuous. Specifically, if $g$ is continuous at $a$, and $f$ is continuous at $g(a)$, then the nested function $f(g(x))$ (written as $f \circ g$) is continuous at $a$.

*Proof Breakdown:* Let's use sequences to prove this! 
1. Take any sequence $a_n$ that approaches $a$.
2. Because $g$ is continuous at $a$, the sequence of outputs $g(a_n)$ approaches $g(a)$. 
3. Now, let's treat $g(a_n)$ as the inputs for $f$. Since $f$ is continuous at $g(a)$, the outputs $f(g(a_n))$ must approach $f(g(a))$. 
4. Therefore, the composite function is continuous. 

### 16.3 Global Properties of Continuous Functions

When you take a continuous function and restrict it to a "closed and bounded" interval (like $[a, b]$, meaning it doesn't go on to infinity and includes its endpoints), magic happens. These intervals are called **compact intervals**, and functions defined on them have incredibly strong global behaviors.

**Theorem 16.3.1 (Boundedness Theorem):** 
If $f$ is continuous on a closed interval $[a, b]$ (so $f \in C[a, b]$), then $f$ is bounded on that interval. This means the graph can't shoot off to positive or negative infinity; you can trap the entire graph between a ceiling and a floor.

*Proof Breakdown (By Contradiction):* 
1. Let's pretend the function is **unbounded**. That means for any integer $n$ (1, 2, 3, ...), no matter how big, we can find some input $x_n$ in our interval where the output $|f(x_n)|$ is bigger than $n$. 
2. This creates a sequence of inputs $(x_n)$ trapped inside $[a, b]$. 
3. The Bolzano-Weierstrass Theorem (a famous theorem you might recall) guarantees that any bounded sequence has a subsequence that converges to some point $c$. Because our interval is closed, $c$ must be inside $[a, b]$.
4. Since $f$ is continuous, as the subsequence approaches $c$, the outputs must approach $f(c)$.
5. But wait! We said the outputs of this sequence were getting infinitely huge ($> n$). An infinitely huge sequence cannot converge to a finite number $f(c)$. 
6. This is a contradiction! Therefore, our assumption was wrong. The function must be bounded.

**Theorem 16.3.2 (Weierstrass Extreme Value Theorem):** 
If $f$ is continuous on $[a, b]$, it doesn't just stay bounded; it actually **hits** its absolute maximum and minimum values. There must be some specific points $c_1$ and $c_2$ in the interval where the function reaches its absolute lowest and highest peaks.

*Proof Breakdown (For the Maximum):*
1. From the previous theorem, we know the function's outputs are bounded. Therefore, by the fundamental nature of real numbers, there must be a "least upper bound" or a supreme ceiling. Let's call this supremum $M$.
2. We need to prove that the function actually *reaches* $M$ (meaning $f(x) = M$ for some $x$). 
3. Let's pretend it never hits $M$. This means $f(x)$ is strictly less than $M$ everywhere on the interval.
4. If that's true, let's create a new function: $g(x) = \frac{1}{M - f(x)}$. Because $f(x)$ never equals $M$, the denominator is never zero, so $g(x)$ is perfectly continuous.
5. By our Boundedness Theorem, this new continuous function $g(x)$ must also be bounded. Let's say it's always less than some number $K$.
6. So, $\frac{1}{M - f(x)} \le K$. If we rearrange this algebraically, we get $f(x) \le M - \frac{1}{K}$.
7. Do you see the problem? This means $M - \frac{1}{K}$ is a new, lower ceiling for $f$. But we defined $M$ as the *least* upper bound! This is a contradiction.
8. Therefore, the function *must* reach $M$. (The proof for the minimum is identical in logic).

**Theorem 16.3.3 (Intermediate Value Theorem / Bolzano-Darboux):** 
This is perhaps the most intuitive theorem of all. If $f$ is continuous on $[a, b]$, it takes on **every single value** between $f(a)$ and $f(b)$. 
*Intuition:* If you drive from a city at elevation 0 feet to a city at elevation 1000 feet, and you don't teleport, you must have passed through an elevation of exactly 500 feet at some point.

*Proof Breakdown:*
1. Let's assume $f(a)$ is lower than $f(b)$. Pick any target value $c$ between them: $f(a) < c < f(b)$. We need to find a point $\gamma$ where $f(\gamma) = c$.
2. Let's look at all the inputs where the function is less than or equal to $c$. We'll call this set $H$.
3. $H$ isn't empty (it contains $a$) and it has an upper limit (it can't go past $b$). So, it must have a supremum (a tightly fitting upper boundary). Let's call this boundary point $\gamma$.
4. By looking at points inside $H$ getting closer and closer to $\gamma$ from the left, continuity tells us that $f(\gamma)$ must be $\le c$. 
5. By looking at points outside $H$ (which are strictly greater than $c$) getting closer to $\gamma$ from the right, continuity tells us that $f(\gamma)$ must be $\ge c$.
6. If $f(\gamma)$ is both $\le c$ and $\ge c$, it must be exactly exactly equal to $c$. We found our point!

**Corollary 16.3.4 (Existence of Roots):** 
Because of the Intermediate Value Theorem, we can prove that positive numbers always have roots. For any real number $A \ge 0$ and any integer $k \ge 1$, there is exactly one positive real number $B$ such that $B^k = A$.
*Why?* The function $f(x) = x^k$ starts at $0$ and goes up to infinity. Because it's continuous, it must pass through the value $A$ at some point.

**Theorem 16.3.5:** 
If you take any interval (open, closed, or half-and-half) and feed it through a continuous function, the resulting outputs will also form a solid interval (no gaps). 
*Proof:* This is a direct consequence of the Intermediate Value Theorem. Since the function must hit every value between any two points in its output, there can't be any holes in the output range.

### 16.4 Exercises
Here is your chance to test your understanding! 
1. The absolute value function is defined as $f(x) = |x|$. Using the formal definition of continuity, prove that this function is continuous at every real number. 
2. Imagine a very strange function called the Dirichlet function, $D(x)$. It equals $1$ if $x$ is a rational number (a fraction) and $0$ if $x$ is irrational (like $\pi$ or $\sqrt{2}$). Explain why this function is jagged everywhere and cannot be continuous at any single point on the real number line.
3. Imagine you have a continuous function $f$ defined on the interval $[a, b]$, and all of its outputs are also trapped between $a$ and $b$. Prove that the graph of this function must intersect the diagonal line $y = x$ at least once. (In math terms, prove there is a "fixed point" $c$ where $f(c) = c$). 
*Hint: Create a new function $g(x) = f(x) - x$ and think about how the Intermediate Value Theorem applies to it!*


---

## Chapter 17: Discontinuities and Convexity

In the previous chapter, we explored what it means for a function to be smooth, connected, and well-behaved—in other words, continuous. However, understanding a function often requires understanding where its good behavior breaks down. These breaking points are called **discontinuities**. 

After we figure out how to classify these breaking points, we'll look at a geometric property called **convexity** (which looks like a smiling bowl shape) and discover a surprising and beautiful rule: convexity actually forces a function to be continuous.

### 17.1 Classification of Discontinuities

First, let's define what a discontinuity actually is.

**Definition 17.1.1 (Discontinuity):** 
Suppose a function $f$ is defined everywhere immediately around a point $a$ (this is called a "punctured neighborhood," meaning we don't care if $f(a)$ itself is defined). If $f$ fails to be continuous at $a$, we call $a$ a **point of discontinuity** (in Hungarian math literature, this is called *szakadási hely*).

Why might a function fail to be continuous? Remember our three rules from Chapter 16: the limit must exist, the function must be defined there, and they must equal each other. Depending on which rule breaks, we can classify the discontinuity into one of three distinct types. We categorize them based on what happens to the left-sided limit and the right-sided limit.

**1. Removable Discontinuity (Megszüntethető szakadás):**
Think of this as a smooth road with a single pothole. The road is perfectly fine everywhere else.
Mathematically, the two-sided limit exists! The outputs from both the left and the right are honing in on a specific number (let's call it $b$). But, there is a problem: either the function is completely undefined at the pothole, or the function has a random, disconnected point (like $f(a)$ equals some weird number completely different from $b$). 
We call it "removable" because we can easily "fix" the function just by redefining $f(a) = b$ to fill in the hole.

**2. Jump Discontinuity (Ugrás):**
Think of a staircase. The road comes in from the left and stops at one height, and the road continues on the right starting from a completely different height.
Mathematically, the left-sided limit exists (it equals some finite number), and the right-sided limit exists (it equals a different finite number). Because they don't meet up, the overall limit does not exist. 

*Grouping them together:* Removable discontinuities and jump discontinuities are relatively well-behaved. The limits from the sides at least *exist* as finite numbers. Therefore, we group these two together and call them **discontinuities of the first kind** (elsőfajú szakadási hely).

**3. Essential Discontinuity (Másodfajú szakadás):**
This is the "everything else" category, where things go completely crazy. Any discontinuity that is not of the first kind is called a discontinuity of the second kind (or an essential discontinuity). 
This happens if at least one of the side limits either shoots off to infinity or simply refuses to settle on a single value (it oscillates forever).
*Examples:* 
*   $f(x) = 1/x$ at $x = 0$. As you get closer to 0, the graph rockets to infinity (or negative infinity). 
*   $f(x) = \sin(1/x)$ at $x = 0$. As you get closer to 0, the graph waves up and down infinitely fast between 1 and -1. It never settles, so the limit does not exist.

### 17.2 Discontinuities of Monotonic Functions

A **monotonic function** is one that is always heading in one direction. It's either always going up or staying flat (monotonically increasing) or always going down or staying flat (monotonically decreasing). 
Because they are so predictable, they have incredibly strict rules about how they can be discontinuous.

**Theorem 17.2.1:** 
If a function is monotonic on an interval, it can never go crazy. At any point inside the interval, both the left-sided limit and the right-sided limit are guaranteed to exist and be finite numbers. 

*Proof Intuition:* Let's assume the function is always going up. Imagine you are approaching a point $a$ from the left. Since the function is always going up, your heights are strictly increasing. But they are trapped! They can never go higher than $f(a)$. In math, a sequence that is always increasing but trapped by a ceiling must converge to a limit (it must hit a supremum). The same logic works approaching from the right, trapped by a floor.

**Corollary 17.2.2:** 
Because both side limits always exist for a monotonic function, it is mathematically impossible for a monotonic function to have an essential (second kind) discontinuity. It can only have jumps or removable holes (first kind).

**Theorem 17.2.3:** 
A monotonic function can only have, at most, "countably many" discontinuities. 
*(Note: "Countably many" means you could write them in a list: discontinuity 1, discontinuity 2, etc., like the integers. It means there aren't so many that they blur into a solid unlistable continuum, like the real numbers).*

*Proof Breakdown:* 
1. Imagine an increasing function that has jumps (since that's the only type of discontinuity it can really have). 
2. At every jump, there is a gap between the left limit and the right limit.
3. A fundamental property of numbers is that between any two different real numbers, no matter how close, you can always find a fraction (a rational number). 
4. So, inside every single jump's gap, we can pick a specific rational number. 
5. Because the function is always going up, none of these gaps will ever overlap. 
6. This means every jump gets its own unique rational number. 
7. Since the set of rational numbers is countable, the number of jumps must also be countable!

### 17.3 Convexity and Continuity

Now let's talk about **convexity**. Visually, a convex function looks like a bowl facing upwards (like $y = x^2$). 
The mathematical definition is: if you pick any two points on the graph and draw a straight line connecting them (called a **chord**), the graph of the function will always dip *below* (or equal to) that straight line between the two points.

The equation of a straight line connecting point $A (a, f(a))$ and point $B (b, f(b))$ is given by:
$$ h_{a,b}(x) = f(a) + \frac{f(b) - f(a)}{b - a}(x - a) $$
*(This is just the point-slope form of a line from algebra!)*

**Lemma 17.3.1:** 
If you draw that chord connecting points A and B, we know the graph dips *below* the chord between A and B. But what happens if you extend that straight line infinitely outward past A and B? The convex graph will actually sit *above* the extended line on the outsides. 
*Proof Intuition:* Convexity essentially means the "slope" of the graph is always increasing. It's getting steeper and steeper. If you extend a straight line, it keeps the same slope, but the graph curves upwards faster than the line, so it goes above it.

**Theorem 17.3.2:** 
If a function is convex on an *open* interval (an interval without its endpoints), then it is automatically guaranteed to be perfectly continuous on that interval!

*Proof Breakdown:* 
1. Pick any point $c$ in the middle of our open interval. We want to prove the function is continuous there.
2. Because it's an open interval, we have room on both sides. Let's pick a point $a$ to the left of $c$, and a point $b$ to the right of $c$. 
3. Draw a chord connecting $a$ and $c$. Let's call this line $L_{left}$. Draw another chord connecting $c$ and $b$. Let's call this line $L_{right}$. 
4. Look at the region between $c$ and $b$. The graph must dip *below* $L_{right}$. But by our Lemma, because we are "outside" the $a$-$c$ region, the graph must sit *above* the extended $L_{left}$ line. 
5. So, the graph is trapped! It is sandwiched exactly between the two straight lines $L_{left}$ and $L_{right}$. 
6. What happens as we zoom in exactly to the point $c$? Both of those straight lines intersect exactly at $f(c)$. 
7. By the **Squeeze Theorem** (Rendőrelv in Hungarian), if the graph is sandwiched between two lines that are both heading exactly to $f(c)$, the graph has no choice but to also head exactly to $f(c)$. The limit equals the function value! Thus, it is continuous.

*Crucial Remark:* Why did we specify an **open** interval? Because at the extreme hard edge of a closed interval, you don't have room to draw chords on both sides to sandwich the function. A convex function can actually have a discontinuity at the very edge. Imagine a bowl that suddenly spikes up an extra inch exactly on the rim. It's still technically convex, but discontinuous at the rim.

### 17.4 Exercises
Test your understanding with these problems:
1. Consider the "floor" function, $f(x) = \lfloor x \rfloor$, which takes any number and rounds it down to the nearest integer (e.g., $\lfloor 2.7 \rfloor = 2$). If you look at this function over all real numbers, what type of discontinuities does it have? 
2. Can you invent a function that has an essential (crazy) discontinuity exactly at $x = 0$, but if you square the entire function to make $f(x)^2$, it magically becomes a perfectly smooth, continuous function everywhere?
3. We know convex functions on an open interval $(a, b)$ are continuous everywhere inside. But what about the absolute edges? Prove that as you approach the left edge $a$ from the right side, the limit $\lim_{x \to a+0} f(x)$ must exist (though it might be infinity). 
*(Hint: Think about monotonicity. Does the slope of a convex function give you a clue about its limits?)*


---

## Chapter 18: Trigonometric Functions and their Inverses

When you hear "trigonometry," you might think of triangles. But in calculus and higher math, trigonometry is really the study of **circles** and cyclical, repeating motion. 

In this chapter, we will define sine and cosine geometrically, explore the rules they follow, prove that they are continuous, and finally learn how to reverse them.

### 18.1 Geometric Intuition and Definitions

Strictly speaking, defining the exact length of a curved line requires integral calculus (which we haven't covered yet!). For now, we will rely on our basic geometric intuition of what it means to measure distance along a curve.

**Definition (The Unit Circle):** 
Imagine a circle drawn on a 2D coordinate plane. The circle is centered exactly at the origin $(0,0)$, and it has a radius of exactly $1$. We call this the **unit circle**. Its equation is $x^2 + y^2 = 1$.

Now, imagine starting at the right-most edge of the circle, at the point $(1, 0)$. 
Take a walk along the edge of the circle in the counterclockwise direction. Let's say you walk a distance of exactly $x$ units. 
When you stop walking, you are standing at some new point $P$ on the circle. 

The trigonometric functions are simply the $(x, y)$ coordinates of where you are standing!
*   Your horizontal coordinate is defined as the **cosine**: $\cos x$
*   Your vertical coordinate is defined as the **sine**: $\sin x$
So, the point $P$ is exactly at $(\cos x, \sin x)$.

*(Note: In calculus, we always measure angles/distance $x$ in radians, not degrees. A full lap around the unit circle is $2\pi$ units long).*

**Periodicity (Wrapping Around):**
What happens if you keep walking? After walking $2\pi$ units, you've done a full lap and are back at $(1, 0)$. If you walk a distance of $x + 2\pi$, you'll end up in the exact same spot as if you just walked $x$. 
Because of this, we can extend sine and cosine to work for any number, no matter how huge. We just "unwrap" the extra laps. For any whole number of laps $k$:
$$ \sin(x + 2k\pi) = \sin x $$
$$ \cos(x + 2k\pi) = \cos x $$

### 18.2 Basic Properties and Identities

Because sine and cosine are just coordinates on a circle, they inherit a bunch of beautiful geometric properties. 

**Theorem 18.1 (The Basics):**
1. **Half-laps:** If you walk in increments of half-circles (distances of $\pi, 2\pi, 3\pi...$), you always land on the x-axis. Therefore, your vertical height (sine) is always $0$. Your horizontal position (cosine) alternates between $1$ and $-1$. In math: $\sin(k\pi) = 0$ and $\cos(k\pi) = (-1)^k$ for any integer $k$.
2. **Even and Odd Functions:** What if you walk *backwards* (clockwise) by a distance of $-x$? You end up directly below the point you would have reached by walking forward. Your x-coordinate didn't change, but your y-coordinate flipped upside down. 
   Therefore: $\cos(-x) = \cos x$ (it is an **even** function) and $\sin(-x) = -\sin x$ (it is an **odd** function).
3. **The Pythagorean Identity:** Because every point $P(\cos x, \sin x)$ sits exactly on the unit circle whose equation is $x^2 + y^2 = 1$, we can plug the coordinates in to get the most famous rule in trigonometry:
   $$ \sin^2 x + \cos^2 x = 1 $$

**Theorem 18.2 (Shift Identities):** 
$$ \cos\left(\frac{\pi}{2} - x\right) = \sin x \quad \text{and} \quad \sin\left(\frac{\pi}{2} - x\right) = \cos x $$
*Why?* The prefix "co" in cosine stands for "complementary." Geometrically, if you look at the angle $x$ inside a right triangle, the other angle is $90^\circ - x$ (or $\frac{\pi}{2} - x$ in radians). The opposite side for one angle is the adjacent side for the other! It just swaps the x and y coordinates.

**Theorem 18.3 (Addition Formulas):**
Sometimes you want to find the coordinates after walking distance $x$ and then walking distance $y$. The formulas for combining them are:
$$ \sin(x + y) = \sin x \cos y + \cos x \sin y $$
$$ \sin(x - y) = \sin x \cos y - \cos x \sin y $$
$$ \cos(x + y) = \cos x \cos y - \sin x \sin y $$
$$ \cos(x - y) = \cos x \cos y + \sin x \sin y $$

If we set $y = x$ in those formulas, we get the very useful **double-angle formulas**:
$$ \sin(2x) = 2 \sin x \cos x $$
$$ \cos(2x) = \cos^2 x - \sin^2 x $$
*(By using the Pythagorean identity $\sin^2 x + \cos^2 x = 1$, you can also rewrite $\cos(2x)$ as $2\cos^2 x - 1$ or $1 - 2\sin^2 x$).*

**Theorem 18.4 (Difference to Product):** 
In calculus, we often need to subtract two sines and figure out the limit. This identity is a lifesaver:
$$ \sin x - \sin y = 2 \sin\left(\frac{x-y}{2}\right) \cos\left(\frac{x+y}{2}\right) $$
*Proof Breakdown:* It looks complicated, but it's just a clever trick. Let's invent two new variables, $u = \frac{x+y}{2}$ and $v = \frac{x-y}{2}$. Notice that $u+v = x$ and $u-v = y$. 
If we plug these into the Addition Formulas from Theorem 18.3:
$\sin(u+v) - \sin(u-v)$
$= (\sin u \cos v + \cos u \sin v) - (\sin u \cos v - \cos u \sin v)$
The $\sin u \cos v$ terms cancel out, leaving $2 \cos u \sin v$. Swap $u$ and $v$ back to $x$ and $y$, and you have the formula!

### 18.3 Analytical Properties: Limits and Continuity

Because sine and cosine are trapped on a circle with a radius of 1, their outputs can never be bigger than 1 or smaller than -1. 
$$ -1 \le \sin x \le 1 \quad \text{and} \quad -1 \le \cos x \le 1 $$

**Theorem 18.5 (The Arc vs. The Straight Line):**
For any angle $x > 0$ (measured in radians), the sine of the angle is always strictly less than the angle itself: $\sin x < x$. 
More generally, for any non-zero $x$, we have $|\sin x| < |x|$.

*Proof Intuition:* Imagine a point $P$ on the unit circle. The vertical distance from the x-axis to $P$ is $\sin x$. The curved distance walking along the edge of the circle from the x-axis to $P$ is $x$. The straight vertical line is a "shortcut" compared to the curved walk along the edge. The shortcut must be shorter! Thus, $\sin x < x$. 

**Theorem 18.6 (Lipschitz Continuity):** 
For any two numbers $x$ and $y$:
1. $|\sin x - \sin y| \le |x - y|$
2. $|\cos x - \cos y| \le |x - y|$

*Proof Intuition:* This says that the straight-line vertical distance between any two points on the circle ($|\sin x - \sin y|$) is always less than or equal to the curved distance walking along the arc between those two points ($|x - y|$). Once again, the straight line is the shortest path!

**Corollary 18.7:** 
Because of the rule above, small changes in the input ($x$) result in small changes in the output. Therefore, both **$\sin x$ and $\cos x$ are continuous everywhere on the real number line.**

**Other Trig Functions:**
We define tangent and cotangent as ratios:
$$ \tan x = \frac{\sin x}{\cos x} \quad \text{and} \quad \cot x = \frac{\cos x}{\sin x} $$
Because dividing continuous functions results in a continuous function, tangent and cotangent are continuous everywhere **except** where their denominators equal zero (where they shoot off to infinity). 
*   $\tan x$ breaks when $\cos x = 0$ (at $\pi/2, 3\pi/2, -\pi/2$, etc.).
*   $\cot x$ breaks when $\sin x = 0$ (at $0, \pi, 2\pi$, etc.).

### 18.4 Inverse Trigonometric Functions

In algebra, an inverse function undoes the original function. If $f(2) = 5$, then the inverse $f^{-1}(5) = 2$.
Graphically, a function only has an inverse if it passes the "horizontal line test" (it never hits the same y-value twice). 

Trig functions fail this test miserably. Because they go in circles, they hit the same y-values infinitely many times! If I tell you $\sin(x) = 0$, you can't tell me what $x$ is. It could be $0, \pi, 2\pi$, etc.

To create inverse trig functions, we have to cheat. We take a "snapshot" of the graph—restricting the domain to a specific chunk where the function only goes in one direction (it is strictly monotonic) and doesn't repeat. 

1. **Arcsine ($\arcsin x$):** 
   We restrict $\sin x$ to the snapshot from $[-\frac{\pi}{2}, \frac{\pi}{2}]$. On this chunk, it smoothly goes from $-1$ up to $1$ without repeating. 
   The inverse function takes an input from $[-1, 1]$ and outputs an angle between $[-\frac{\pi}{2}, \frac{\pi}{2}]$.

2. **Arccosine ($\arccos x$):** 
   We restrict $\cos x$ to the snapshot from $[0, \pi]$. On this chunk, it smoothly goes from $1$ down to $-1$. 
   The inverse function takes an input from $[-1, 1]$ and outputs an angle between $[0, \pi]$.

3. **Arctangent ($\arctan x$):** 
   We restrict $\tan x$ to the snapshot between $(-\frac{\pi}{2}, \frac{\pi}{2})$. Here, it shoots from negative infinity up to positive infinity. 
   The inverse takes *any* real number input and outputs an angle strictly between $(-\frac{\pi}{2}, \frac{\pi}{2})$.

4. **Arccotangent ($\text{arccot } x$):** 
   We restrict $\cot x$ to the snapshot between $(0, \pi)$. Here, it falls from positive infinity down to negative infinity.
   The inverse takes *any* real number input and outputs an angle strictly between $(0, \pi)$.

**Theorem 18.9:** 
Just as sine and cosine are shifted by $\frac{\pi}{2}$, their inverses are related in a similar way:
For any $x$ between $-1$ and $1$: $\arccos x = \frac{\pi}{2} - \arcsin x$.
For any $x$: $\text{arccot } x = \frac{\pi}{2} - \arctan x$.

*Proof Intuition:* This is a direct result of the complementary angle rule ($\cos(\frac{\pi}{2} - \theta) = \sin \theta$). If you know the angle that gives a specific sine value, the complementary angle will give that exact same value for cosine!

### Examples

**Example 1.** Evaluate the famous calculus limit: $\lim_{x \to 0} \frac{\sin x}{x}$.
*Solution Breakdown.* 
We know from geometry that for a small positive angle $x$, the straight vertical distance ($\sin x$) is smaller than the arc length ($x$), which is smaller than the vertical tangent line drawn outside the circle ($\tan x$).
So: $\sin x < x < \tan x$.
If we divide the entire inequality by $\sin x$ (which is positive, so the signs don't flip):
$1 < \frac{x}{\sin x} < \frac{\tan x}{\sin x}$
Since $\tan x = \frac{\sin x}{\cos x}$, the right side simplifies to $\frac{1}{\cos x}$.
$1 < \frac{x}{\sin x} < \frac{1}{\cos x}$.
Now, flip all the fractions upside down (which flips the inequality signs!):
$\cos x < \frac{\sin x}{x} < 1$.
Now we use the **Squeeze Theorem**. As $x$ gets closer and closer to $0$, we know $\cos(0) = 1$. 
So, our function $\frac{\sin x}{x}$ is squeezed between $1$ (on the bottom) and $1$ (on the top). It has nowhere else to go! 
Therefore, the limit is exactly $1$.

### Exercises
Test your understanding:
1. Using the identities from Theorem 18.3, prove that the maximum possible value of the function $f(x) = \sin x + \cos x$ is exactly $\sqrt{2}$. 
2. Be careful! What is the exact value of $\arcsin(\sin(\frac{3\pi}{4}))$? (Hint: Does $\frac{3\pi}{4}$ fit inside the allowed "snapshot" window for the arcsine function? If not, what equivalent angle does?)
3. Prove that for any positive number $x > 0$, $\arctan x + \arctan(\frac{1}{x}) = \frac{\pi}{2}$. *(Hint: Draw a right triangle with sides $1$ and $x$!)*


---

## Chapter 19: Exponential and Logarithmic Functions

Welcome to Chapter 19! Have you ever wondered what it actually means to calculate $2^\pi$? We all know what $2^3$ means: it's just $2 \times 2 \times 2$. Multiplying a number by itself a whole number of times is easy to grasp. But you can't multiply a number by itself "pi" times. It sounds like nonsense! 

Our grand goal in this chapter is to build up the definition of $a^x$ starting from simple integers, moving to fractions (rational numbers), and finally taking a leap of faith (well, a leap of rigorous math) to define it for any real number $x$, like $\pi$ or $\sqrt{2}$. We will also introduce the logarithm, which is simply the "undo" button for exponentiation, and meet one of the most famous numbers in mathematics: Euler's number, $e$.

### 19.1 Powers with Rational Exponents

Let's start with what we know. For any real numbers $a$ and $b$, and any positive integers $x$ and $y$ (where $x, y \in \{1, 2, 3, \dots\}$), raising a number to a power just means repeated multiplication. For example, $a^3 = a \cdot a \cdot a$.

From this simple idea, we get three golden rules (often called power identities):
* **Rule I:** $(ab)^x = a^x b^x$. (If you multiply $a \cdot b$ three times, it's the same as multiplying $a$ three times and $b$ three times).
* **Rule II:** $a^{x+y} = a^x a^y$. (If you have $x$ copies of $a$, and $y$ more copies, you have $x+y$ copies total).
* **Rule III:** $(a^x)^y = a^{xy}$. (If you have $y$ groups of $x$ copies of $a$, you have $x \cdot y$ copies).

**Stepping down to zero and negative numbers**

We want to expand our universe. What should $a^0$ be? What about $a^{-3}$? We want our new definitions to still obey the golden rules, especially Rule II. 

If Rule II is to work for zero, then $a^{x+0}$ must equal $a^x \cdot a^0$. 
Since $x + 0 = x$, the left side is just $a^x$. 
So, $a^x = a^x \cdot a^0$. 
As long as $a \neq 0$, we can divide both sides by $a^x$ to discover that we *must* define:
$$a^0 = 1$$

What about negative numbers? Let's use Rule II again. 
$a^{x+(-x)} = a^x \cdot a^{-x}$.
The left side is $a^0$, which we just decided is $1$. 
So, $1 = a^x \cdot a^{-x}$. 
Dividing by $a^x$, we find that we *must* define:
$$a^{-x} = \frac{1}{a^x}$$
(Again, this only works if $a \neq 0$.)

Awesome! We now have exponentiation defined for all integers (positive, negative, and zero), denoted by the set $\mathbb{Z}$.

**Fractions (Rational Exponents)**

Next, let's figure out what a fractional exponent like $a^{1/3}$ should be. Let's assume $a > 0$ to avoid messy issues with negative roots (like square roots of negative numbers).
If Rule III is to work, then $\left(a^{\frac{1}{3}}\right)^3 = a^{\frac{1}{3} \cdot 3} = a^1 = a$.
What number, when cubed, gives $a$? That's the definition of the cube root! So $a^{1/3} = \sqrt[3]{a}$.

In general, for any fraction $\frac{p}{q}$ (where $p$ and $q$ are integers and $q > 0$), we define:
$$ a^{\frac{p}{q}} \overset{\text{def.}}{=} \sqrt[q]{a^p} $$
By convention, for positive $a$, we always choose the *positive* root.

But wait! We have a potential problem. We know that $\frac{1}{2}$ is exactly the same number as $\frac{2}{4}$. If we plug them into our new formula, do we get the same answer? If we don't, our definition is broken. This is called checking for "well-definedness."

> **Theorem 19.1. (Well-definedness)** 
> If $a > 0$, and we have two fractions that are equal, say $\frac{n}{m} = \frac{p}{q}$ (where $m$ and $q$ are positive integers), then $a^{\frac{n}{m}} = a^{\frac{p}{q}}$.
> 
> *Proof Breakdown:*
> We want to show that $\sqrt[m]{a^n} = \sqrt[q]{a^p}$.
> Roots can be annoying to work with, so let's raise both sides to a huge power to get rid of them. What power? If we raise a $m$-th root to the $m$ power, the root disappears. If we raise a $q$-th root to the $q$ power, it disappears. Let's raise both sides to the power of $(m \cdot q)$ to wipe out both roots at once!
> 
> *Formal Proof.* 
> Let's look at the $(mq)$-th power of the left side:
> $\left(\sqrt[m]{a^n}\right)^{mq} = \left( \left(\sqrt[m]{a^n}\right)^m \right)^q = (a^n)^q = a^{nq}$.
> 
> Now the $(mq)$-th power of the right side:
> $\left(\sqrt[q]{a^p}\right)^{mq} = \left( \left(\sqrt[q]{a^p}\right)^q \right)^m = (a^p)^m = a^{pm}$.
> 
> We know from our starting assumption that $\frac{n}{m} = \frac{p}{q}$. If we cross-multiply, we get $nq = pm$. 
> Because $nq = pm$, the expressions $a^{nq}$ and $a^{pm}$ are exactly the same! 
> Since both of our original roots were positive, and raising them to the same $(mq)$-th power gave the exact same result, the original root expressions must have been equal to begin with. $\blacksquare$

> **Theorem 19.2.** The three golden power identities hold for any positive real numbers $a, b > 0$ and any rational exponents $x, y \in \mathbb{Q}$.
> 
> *Proof.* We will prove identity II: $a^{x+y} = a^x a^y$. The others are very similar.
> Let's write our fractions as $x = \frac{p}{q}$ and $y = \frac{r}{s}$.
> To add fractions, we need a common denominator, which is $qs$. So $x+y = \frac{ps+rq}{qs}$.
> Let's evaluate $a^{x+y}$:
> $a^{\frac{p}{q} + \frac{r}{s}} = a^{\frac{ps+rq}{qs}}$. 
> Let's raise this whole thing to the power of $qs$ to get rid of the root:
> $\left(a^{\frac{ps+rq}{qs}}\right)^{qs} = a^{ps+rq}$.
> 
> Now let's look at the other side of the rule, $a^x \cdot a^y$, and raise it to the $qs$ power too:
> $\left(a^{\frac{p}{q}} \cdot a^{\frac{r}{s}}\right)^{qs} = \left(a^{\frac{p}{q}}\right)^{qs} \cdot \left(a^{\frac{r}{s}}\right)^{qs}$.
> Using integer exponent rules (since $qs$ is an integer), this simplifies to:
> $a^{ps} \cdot a^{rq} = a^{ps+rq}$.
> 
> Since both sides gave the exact same result when raised to the $qs$ power, they must be equal. $\blacksquare$

Before we move to irrational numbers, we need to know how rational powers behave regarding size (monotonicity).

> **Theorem 19.3.** Let $a > 0$ and let $r$ be a rational number. Then $a^r > 0$. 
> Furthermore, if we have two rational numbers where $r_1 < r_2$:
> - If $a > 1$, then $a^{r_1} < a^{r_2}$ (the function grows as the exponent grows; we call this strictly increasing).
> - If $0 < a < 1$, then $a^{r_1} > a^{r_2}$ (the function shrinks as the exponent grows; we call this strictly decreasing).
> 
> *Proof Breakdown:*
> If you have a positive number $a$, and you multiply it by itself, it's still positive. If you take a positive root, it's still positive. So $a^r$ is always positive.
> Let's tackle the case where $a > 1$. Think of $a=2$. Multiplying by 2 makes things bigger. So higher powers should be bigger. We prove this by showing that any positive rational power of a number bigger than 1 is *still* bigger than 1. Then we use a clever multiplication trick.
> 
> *Formal Proof.* 
> First, $a > 0 \implies a^p > 0 \implies \sqrt[q]{a^p} > 0$. So $a^r > 0$ always.
> Now assume $a > 1$. If $p, q$ are positive integers, then $a^p > 1$. We claim its $q$-th root is also $> 1$. Why? Suppose by contradiction that $\sqrt[q]{a^p} \le 1$. If you multiply a number $\le 1$ by itself $q$ times, the result is still $\le 1$. But we know the $q$-th power is $a^p$, which is $> 1$. This is a contradiction! Thus, for any positive rational number $r$, $a^r > 1$.
> 
> Now, suppose $r_1 < r_2$. This means the difference $r_2 - r_1$ is a positive rational number.
> From what we just proved, since $r_2 - r_1 > 0$, we know that $a^{r_2 - r_1} > 1$.
> Let's multiply both sides of that inequality by $a^{r_1}$ (which we know is positive, so the inequality direction doesn't change):
> $a^{r_1} \cdot a^{r_2 - r_1} > 1 \cdot a^{r_1}$.
> Using our power rules to add the exponents on the left:
> $a^{r_2} > a^{r_1}$. This proves the strictly increasing part!
> 
> For the case where $0 < a < 1$ (like $a = 1/2$), we can just look at $1/a$, which will be greater than 1. Applying the logic above to $1/a$ gives us the strictly decreasing result. $\blacksquare$


### 19.2 Real Exponents and the Exponential Function

Now for the grand finale: defining $a^x$ when $x$ is a crazy irrational number like $\pi$.
How do we calculate $2^\pi$? We know $\pi$ is roughly $3.14159...$
We can calculate $2^3$. 
We can calculate $2^{3.1}$. (That's $2^{31/10}$, which is the 10th root of $2^{31}$. It's a rational power!).
We can calculate $2^{3.14}$.
We can calculate $2^{3.141}$.
Because $2 > 1$, Theorem 19.3 tells us this sequence of numbers gets bigger and bigger. But it never shoots off to infinity because it's always trapped below, say, $2^4$.
In mathematical terms, we define $2^\pi$ as the "ceiling" (supremum) of all the rational powers that are smaller than $\pi$.

> **Definition (Real Exponentiation).** Let $x$ be any real number ($x \in \mathbb{R}$). 
> - For a base $a > 1$, we define $a^x$ as the smallest upper bound (supremum) of all rational approximations from below:
>   $$ a^x \overset{\text{def.}}{=} \sup \{a^r : r \text{ is rational, and } r < x\} $$
> - For a base $0 < a < 1$, we define $a^x$ as the greatest lower bound (infimum) of all rational approximations from below:
>   $$ a^x \overset{\text{def.}}{=} \inf \{a^r : r \text{ is rational, and } r < x\} $$
> - For $a = 1$, well, 1 to any power is just 1. $1^x \overset{\text{def.}}{=} 1$.

*Intuitive Remark.* Instead of taking rational numbers *smaller* than $x$, what if we approached $x$ from above, using rational numbers *bigger* than $x$? For $a > 1$, taking the "floor" (infimum) of those upper approximations yields the exact same number! There is no "gap" between the approximations from below and above. The rigorous proof involves showing that the ratio of an upper approximation and a lower approximation can be made as close to 1 as we like.

> **Theorem 19.4.** For any $a > 0$ and any real number $x$, $a^x > 0$. Furthermore, the function is strictly increasing for $a > 1$ and strictly decreasing for $0 < a < 1$.
> 
> *Proof Breakdown:* We just defined real powers using rational powers. Since all rational powers are positive, the supremum of positive things (that aren't all zero) is positive. To show it's increasing, we basically wedge rational numbers between any two real numbers.
> 
> *Formal Proof.* 
> Let $a > 1$. Choose any rational number $r$ that is smaller than $x$. By our definition, $a^x$ is the supremum (the upper bound) of the set, so $a^x$ must be at least as big as $a^r$. Since $a^r > 0$, we have $a^x \ge a^r > 0$.
> Now, suppose we have two real numbers $x_1 < x_2$. Between any two real numbers, there are always rational numbers. In fact, we can pick *two* rational numbers $r_1$ and $r_2$ such that $x_1 < r_1 < r_2 < x_2$.
> - Because $x_1 < r_1$, by our supremum definition, $a^{x_1} \le a^{r_1}$.
> - Because $r_1 < r_2$ are rational numbers, Theorem 19.3 guarantees $a^{r_1} < a^{r_2}$.
> - Because $r_2 < x_2$, the definition tells us that $a^{r_2}$ is in the set that $a^{x_2}$ is the upper bound of, so $a^{r_2} \le a^{x_2}$.
> Stringing these inequalities together: $a^{x_1} \le a^{r_1} < a^{r_2} \le a^{x_2}$. Therefore, $a^{x_1} < a^{x_2}$. $\blacksquare$

> **Theorem 19.5.** The exponential function is continuous. Specifically, if a sequence of numbers $x_n$ approaches $x$, then $a^{x_n}$ approaches $a^x$.
> 
> *Proof Breakdown:* Continuity means there are no sudden jumps. We prove this by trapping our target value $a^x$ between two close rational approximations. Since $x_n$ gets close to $x$, eventually it must also fall into that trap, forcing $a^{x_n}$ to be close to $a^x$.
> 
> *Formal Proof.* 
> Assume $a > 1$. Let's pick a tiny error margin, $\varepsilon > 0$. 
> Because of how suprema and infima work, we can find a rational number $r$ slightly below $x$, and a rational number $s$ slightly above $x$, such that $a^r$ and $a^s$ are squeezed very close to $a^x$. Specifically:
> $a^x - \varepsilon < a^r \le a^x \le a^s < a^x + \varepsilon$. 
> Since the sequence $x_n \to x$, eventually (for large enough $n$, say $n \ge n_0$), the terms $x_n$ will land strictly between $r$ and $s$. That is, $r < x_n < s$. 
> Because we proved $a^x$ is strictly increasing (Theorem 19.4), we can plug these into the base $a$:
> $a^r < a^{x_n} < a^s$. 
> Substituting this into our first squeeze inequality gives:
> $a^x - \varepsilon < a^{x_n} < a^x + \varepsilon$. 
> This exactly means that the distance between $a^{x_n}$ and $a^x$ is less than $\varepsilon$. Hence, $a^{x_n} \to a^x$. This implies the function $f(x) = a^x$ is continuous on all of $\mathbb{R}$, which we write as $a^x \in C(\mathbb{R})$. $\blacksquare$

> **Theorem 19.6.** The golden power identities hold for any positive real bases $a, b > 0$ and any real exponents $x, y \in \mathbb{R}$.
> 
> *Proof.* We already proved these rules for rational numbers. Thanks to continuity (Theorem 19.5), we can just take the limit of rational approximations!
> Let $r_n$ be a sequence of rational numbers approaching $x$.
> Then $(ab)^x = \lim_{n \to \infty} (ab)^{r_n}$. 
> Since $r_n$ is rational, we can use Rule I to split it: $\lim_{n \to \infty} (a^{r_n} b^{r_n})$.
> The limit of a product is the product of the limits: $(\lim a^{r_n}) \cdot (\lim b^{r_n}) = a^x b^x$. 
> The proofs for $a^{x+y}$ and $(a^x)^y$ follow the exact same logic. $\blacksquare$

> **Definition.** For a fixed base $a > 0$, the function that takes an input $x$ and outputs $a^x$ is called the **exponential function with base $a$**.

> **Theorem 19.7.** Limits at infinity: Where does the exponential function go?
> - If $a > 1$: As $x$ goes to $+\infty$, $a^x$ rockets to $+\infty$. As $x$ goes to $-\infty$, $a^x$ shrinks down to $0$.
> - If $0 < a < 1$: As $x$ goes to $+\infty$, $a^x$ shrinks down to $0$. As $x$ goes to $-\infty$, $a^x$ rockets to $+\infty$.
> 
> *Proof.* 
> Let's look at $a > 1$. We can write $a = 1 + b$, where $b > 0$. 
> For any positive integer $n$, a famous rule called Bernoulli's inequality tells us that $(1+b)^n \ge 1 + nb$. 
> As $n$ gets larger, $1 + nb$ gets infinitely large. So, $a^n \to +\infty$.
> What about real numbers $x$? For any huge target number $K$, we can find an integer $N$ large enough so that $a^N > K$. Since the function is increasing, for any real $x > N$, $a^x > a^N > K$. Thus, $\lim_{x \to \infty} a^x = +\infty$. 
> For the left side ($-\infty$), we look at $a^{-x}$, which is $1/a^x$. Since the denominator $a^x$ goes to $+\infty$, the fraction $1/\infty$ goes to $0$. The case for $0 < a < 1$ follows similarly. $\blacksquare$

### 19.3 Power Functions

Don't get confused between the exponential function ($a^x$, where the variable is in the exponent) and the power function ($x^b$, where the variable is in the base). 

> **Definition.** For a fixed number $b \in \mathbb{R}$, the function $x \mapsto x^b$ defined for $x > 0$ is called the **power function with exponent $b$**.
> Example: $x^2, x^{1/2}$ (which is $\sqrt{x}$), or $x^{-\pi}$.

> **Theorem 19.8.** 
> 1. If $b > 0$ (like $x^2$), the function is strictly increasing and continuous on $(0, +\infty)$. It starts near $0$ (as $x \to 0^+$) and shoots off to $+\infty$ (as $x \to +\infty$).
> 2. If $b < 0$ (like $x^{-1} = 1/x$), the function is strictly decreasing and continuous on $(0, +\infty)$. It drops down from $+\infty$ (as $x \to 0^+$) and flattens out toward $0$ (as $x \to +\infty$).
> 
> *Proof Breakdown:* We use a clever trick. Instead of comparing $x^b$ and $y^b$ directly, we look at their ratio $(y/x)^b$.
> 
> *Formal Proof.* 
> Let $b > 0$. If you have a number $t > 1$, then $t^b > t^0 = 1$. 
> Let's take two positive numbers $x$ and $y$ such that $x < y$. This means the ratio $y/x > 1$. 
> Substitute $t = y/x$ into our first observation: $(y/x)^b > 1$. 
> By power rules, this means $y^b / x^b > 1$. Multiplying both sides by $x^b$ gives $y^b > x^b$. This proves it is strictly increasing!
> To see that it goes to infinity: for any huge number $K > 0$, we can ensure $x^b > K$ simply by picking $x > K^{1/b}$. So $\lim_{x \to \infty} x^b = +\infty$. The limits at $0$ and the case where $b < 0$ follow similar logic. $\blacksquare$

### 19.4 Logarithmic Functions

The exponential function $a^x$ (for $a \neq 1$ and $a > 0$) is a continuous, strictly monotonic function that maps all real numbers $\mathbb{R}$ onto all positive real numbers $(0, +\infty)$. 
In mathematics, if a continuous function always goes strictly up or strictly down, it never hits the same y-value twice. This means we can reverse it! It has a valid, continuous, strictly monotonic inverse function.

> **Definition.** The inverse of the exponential function $f(x) = a^x$ is called the **logarithmic function with base $a$**, denoted $\log_a x$. 
> In plain English, $\log_a x$ asks the question: "To what power do I need to raise $a$ to get $x$?"
> $$ \log_a x = y \iff a^y = x $$

**Properties of the Logarithm:**
1. **Domain & Range:** You can plug any real number into $a^x$, and it spits out a positive number. Reversing this, you can only plug *positive* numbers into $\log_a x$, and it spits out any real number. Domain = $(0, +\infty)$. Range = $\mathbb{R}$.
2. **Continuity:** Since the exponential function is continuous, its inverse is also continuous on $(0, +\infty)$.
3. **Monotonicity:** If $a > 1$, raising the power gives a bigger result, so the inverse is also strictly increasing. If $0 < a < 1$, it is strictly decreasing.
4. **Limits:** If $a > 1$, as $x$ gets infinitely large, $\log_a x$ goes to $+\infty$. As $x$ gets closer and closer to $0$ from the right side, the logarithm plunges down to $-\infty$.
   *Proof snippet:* Pick a huge number $K$. We want $\log_a x > K$. By definition, this just means $x > a^K$. So as long as $x$ is larger than $a^K$, the logarithm is larger than $K$. This proves it goes to infinity.

Because logarithms are just exponents backwards, they inherit "reverse" versions of the golden power rules! Multiplication turns into addition.

> **Theorem 19.9. (Logarithm Identities)** For any positive numbers $x, y > 0$:
> - **Product Rule:** $\log_a (xy) = \log_a x + \log_a y$
> - **Quotient Rule:** $\log_a \left(\frac{x}{y}\right) = \log_a x - \log_a y$
> - **Power Rule:** $\log_a (x^y) = y \log_a x$
> 
> *Proof of the Power Rule.* 
> Let's assign a name to the left side: let $z = \log_a (x^y)$. 
> Using the core definition of the logarithm, this translates to: $a^z = x^y$.
> Now, let's look at the expression on the right side: $y \log_a x$. Let's raise $a$ to this power: $a^{y \log_a x}$.
> Using exponent Rule III, we can rewrite this as: $(a^{\log_a x})^y$.
> But $a^{\log_a x}$ is just $x$ (because $a$ to the power of "the power you raise $a$ to get $x$" is just $x$). So this whole thing is $x^y$.
> We have shown that $a^z = x^y$ and $a^{y \log_a x} = x^y$. 
> Therefore, $a^z = a^{y \log_a x}$. Since exponential functions don't give the same output for different inputs (they are injective), the exponents themselves must be exactly equal: $z = y \log_a x$. $\blacksquare$

### 19.5 Euler's Number and the Natural Logarithm

In math, there is one particular base for exponential and logarithmic functions that is more "natural" than any other. It arises when we look at continuous growth, like compounding interest in a bank account.

Let's look at two sequences: 
$e_n = \left(1+\frac{1}{n}\right)^n$  (This is what happens if you compound $100\%$ interest $n$ times a year).
$f_n = \left(1+\frac{1}{n}\right)^{n+1}$.

> **Theorem 19.10.** The sequence $(e_n)$ is strictly increasing (it gets bigger with each step), and the sequence $(f_n)$ is strictly decreasing (it gets smaller). For every $n$ and $m$, $e_n < f_m$, and both sequences eventually squeeze together and converge to the exact same limit.
> 
> *Proof Breakdown:* We will use a famous inequality called AM-GM (Arithmetic Mean - Geometric Mean inequality). It says that the simple average (arithmetic mean) of a bunch of positive numbers is always strictly greater than their multiplicative average (geometric mean), unless all the numbers are identical.
> 
> *Formal Proof.* 
> To prove $e_n$ is strictly increasing, let's apply AM-GM to a clever set of $n+1$ numbers. We will choose one $1$, and $n$ copies of $(1+\frac{1}{n})$. So: $a_1=1$ and $a_2 = a_3 = \dots = a_{n+1} = 1+\frac{1}{n}$.
> Let's find their Arithmetic Mean (AM). We sum them up and divide by $n+1$:
> $$ \text{AM} = \frac{1 + n(1+\frac{1}{n})}{n+1} = \frac{1 + n + 1}{n+1} = \frac{n+2}{n+1} = 1 + \frac{1}{n+1}. $$
> Now their Geometric Mean (GM). We multiply them all and take the $(n+1)$-th root:
> $$ \text{GM} = \sqrt[n+1]{1 \cdot \left(1+\frac{1}{n}\right)^n} = \left(1+\frac{1}{n}\right)^{\frac{n}{n+1}}. $$
> Because our numbers were not all identical (one was $1$, the others were $>1$), AM-GM tells us that $\text{GM} < \text{AM}$:
> $$ \left(1+\frac{1}{n}\right)^{\frac{n}{n+1}} < 1+\frac{1}{n+1} $$
> Now raise both sides to the power of $n+1$ to clear the fraction in the exponent:
> $$ \left(1+\frac{1}{n}\right)^n < \left(1+\frac{1}{n+1}\right)^{n+1} $$
> This literally says $e_n < e_{n+1}$! The sequence is strictly increasing.
> 
> A very similar application of AM-GM proves that $f_n > f_{n+1}$ (strictly decreasing).
> Notice that $f_n = e_n \cdot (1 + 1/n)$, so obviously $e_n < f_n$ for all $n$. 
> This means $e_n$ is growing, but it is forever trapped below $f_1 = (1+1)^2 = 4$. By a fundamental rule of calculus, any sequence that is increasing but trapped by an upper ceiling *must* converge to a limit. Let's call the limit of $e_n$ just $e$. Similarly, $f_n$ is decreasing but trapped above $e_1 = 2$, so it converges to a limit $f$.
> Finally, we check the difference between the sequences: 
> $f_n - e_n = e_n \left(1+\frac{1}{n}\right) - e_n = e_n \cdot \frac{1}{n}$. 
> Since $e_n < 4$, the difference is $< 4/n$. As $n$ goes to infinity, $4/n$ goes to $0$. Thus, the gap between the sequences vanishes, meaning their limits are identical: $e = f$. $\blacksquare$

> **Definition.** This unique, magic limit is called **Euler's number**, and it is denoted by $e$. Its value is an irrational number, approximately $2.71828...$
> $$ e = \lim_{n \to \infty} \left(1+\frac{1}{n}\right)^n $$
> The exponential function with base $e$, written as $e^x$, is the most important exponential function. 
> The logarithmic function with base $e$ is called the **natural logarithm**. Instead of writing $\log_e x$, mathematicians use the shorthand **$\ln x$** (and sometimes just $\log x$ in higher mathematics, where base 10 is ignored).

### Examples
**Example 1.** Solve the equation $2^x = 3$.
*Solution.* We can apply a logarithm to both sides to "pull down" the $x$. What base? We have options!
*Option 1:* Use base 2. $\log_2 (2^x) = \log_2 3$. Since $\log_2$ and $2^x$ cancel out, we immediately get $x = \log_2 3$.
*Option 2:* Use the natural logarithm, $\ln$.
$\ln(2^x) = \ln 3$.
Using the logarithm Power Rule, we can pull the $x$ down to the front:
$x \cdot \ln 2 = \ln 3$.
Divide by $\ln 2$ to get: $x = \frac{\ln 3}{\ln 2}$.
*Wait!* Both answers must be the same $x$. This means $\log_2 3 = \frac{\ln 3}{\ln 2}$. This beautifully demonstrates a universal rule called the **Change of Base Formula**: For any bases $a$ and $b$, $\log_a x = \frac{\log_b x}{\log_b a}$.

### Exercises
1. Prove that for any $a > 0$, the bizarre-looking number $a^{\sqrt{2}}$ is perfectly well-defined. Hint: Construct a sequence of rational numbers (like 1.4, 1.41, 1.414...) approximating $\sqrt{2}$ and compute $a^{\sqrt{2}}$ as a limit.
2. Prove the change of base formula for logarithms: $\log_a b \cdot \log_b c = \log_a c$.
3. Using the fact that $e_n$ is increasing and $f_n$ is decreasing, show simply that $2 < e < 4$.


---

## Chapter 20: Hyperbolic Functions and their Inverses

In trigonometry, the sine and cosine functions ($\sin x$ and $\cos x$) are intimately tied to the geometry of the circle. But what happens if we replace the circle with its mathematical cousin, the hyperbola? We get a new family of functions: the **hyperbolic functions**. 

While they might sound exotic, they are actually built out of something very familiar: the exponential function $e^x$. They show up everywhere in physics and engineering. For example, if you hang a heavy chain between two poles, the shape it forms is described exactly by a hyperbolic function!

### 20.1 Definitions and Basic Properties

> **Definition.** The **hyperbolic sine** (pronounced "shine" or "sinch") and **hyperbolic cosine** (pronounced "cosh") are defined for any real number $x \in \mathbb{R}$ as follows:
> $$ \text{sh } x = \frac{e^x - e^{-x}}{2} \quad \text{and} \quad \text{ch } x = \frac{e^x + e^{-x}}{2} $$
> *(Note: The standard international notation is $\sinh x$ and $\cosh x$. In this text, we will preserve the Hungarian shorthand notation $\text{sh}$ and $\text{ch}$.)*

Notice how similar these are! The only difference is the minus sign in $\text{sh } x$ and the plus sign in $\text{ch } x$. Because they are just simple combinations of $e^x$, they inherit some nice properties.

**Properties:**
1. **Continuity:** Since $e^x$ and $e^{-x}$ are continuous everywhere, their sums and differences are too. Thus, $\text{sh } x$ and $\text{ch } x$ are continuous on all real numbers (written as $C(\mathbb{R})$).
2. **Parity (Symmetry):** What happens if we plug in a negative number, $-x$?
   Let's test $\text{sh}(-x)$:
   $\text{sh}(-x) = \frac{e^{-x} - e^{-(-x)}}{2} = \frac{e^{-x} - e^x}{2}$. If we factor out a $-1$, we get $-\left(\frac{e^x - e^{-x}}{2}\right) = -\text{sh } x$. 
   Because $\text{sh}(-x) = -\text{sh } x$, we call it an **odd function** (it has rotational symmetry, like $x^3$ or $\sin x$).
   Now let's test $\text{ch}(-x)$:
   $\text{ch}(-x) = \frac{e^{-x} + e^{-(-x)}}{2} = \frac{e^{-x} + e^x}{2} = \text{ch } x$. 
   Because $\text{ch}(-x) = \text{ch } x$, we call it an **even function** (it mirrors across the y-axis, like $x^2$ or $\cos x$).
3. **Monotonicity (Growth):** As $x$ gets larger, $e^x$ gets rapidly larger, and $-e^{-x}$ gets less negative (moving towards zero). Adding them together means $\text{sh } x$ is strictly increasing across the entire number line.
4. **Limits:** Where do these functions go as $x$ heads to infinity?
   As $x \to \infty$, $e^x \to \infty$ and $e^{-x} \to 0$. So, $\text{sh } x \to \frac{\infty - 0}{2} = +\infty$.
   As $x \to -\infty$, $e^x \to 0$ and $e^{-x} \to \infty$. So, $\text{sh } x \to \frac{0 - \infty}{2} = -\infty$.
   For $\text{ch } x$, because it adds the two positive terms, it shoots off to $+\infty$ in *both* directions. A fun fact: exactly at $x=0$, $\text{ch } 0 = \frac{1+1}{2} = 1$.

### 20.2 Hyperbolic Identities

If you remember trigonometry, you know the most famous identity is $\cos^2 x + \sin^2 x = 1$. Hyperbolic functions have a very similar identity, but with a twist!

> **Theorem 20.1. (Fundamental Hyperbolic Identity)**
> $$ \text{ch}^2 x - \text{sh}^2 x = 1 $$
> 
> *Proof Breakdown:* We just substitute the definitions containing $e^x$, square them, and watch everything beautifully cancel out algebraically.
> 
> *Formal Proof.* 
> Let's calculate the left side.
> $$ \text{ch}^2 x - \text{sh}^2 x = \left(\frac{e^x + e^{-x}}{2}\right)^2 - \left(\frac{e^x - e^{-x}}{2}\right)^2 $$
> We square the numerators (remembering $(a+b)^2 = a^2 + 2ab + b^2$) and the denominators ($2^2 = 4$):
> $$ = \frac{(e^x)^2 + 2(e^x)(e^{-x}) + (e^{-x})^2}{4} - \frac{(e^x)^2 - 2(e^x)(e^{-x}) + (e^{-x})^2}{4} $$
> Since $e^x \cdot e^{-x} = e^0 = 1$, the middle terms are just $+2$ and $-2$. Let's combine the fractions:
> $$ = \frac{e^{2x} + 2 + e^{-2x} - e^{2x} + 2 - e^{-2x}}{4} $$
> The $e^{2x}$ and $e^{-2x}$ terms cancel each other out! We are left with:
> $$ = \frac{2 + 2}{4} = \frac{4}{4} = 1. \blacksquare $$

*Geometric insight:* In standard geometry, if you plot the points $(\cos t, \sin t)$ for any angle $t$, they draw the unit circle $x^2 + y^2 = 1$. If you instead plot the points $(\text{ch } t, \text{sh } t)$ for any number $t$, because $\text{ch}^2 t - \text{sh}^2 t = 1$, these points will perfectly trace out the right branch of the hyperbola $x^2 - y^2 = 1$. This is precisely why they are called "hyperbolic" functions!

Notice that since $\text{ch}^2 x = 1 + \text{sh}^2 x$, and squaring a number always gives a positive result, $\text{ch}^2 x$ is always at least 1. Since $\text{ch } x$ is always positive, this proves that $\text{ch } x \ge 1$ for all real numbers. It bottoms out at exactly 1 when $x=0$, and curves upwards symmetrically on both sides, looking somewhat like a parabola.

> **Theorem 20.2. (Addition Formulas)**
> Just like sine and cosine, hyperbolic functions have formulas for when you add inputs:
> $$ \text{sh}(x \pm y) = \text{sh } x \text{ch } y \pm \text{ch } x \text{sh } y $$
> $$ \text{ch}(x \pm y) = \text{ch } x \text{ch } y \pm \text{sh } x \text{sh } y $$
> *(Notice that for $\text{ch}$, the sign matches, unlike in regular trigonometry where $\cos(x+y)$ has a minus sign!)*
> 
> *Proof.* We will prove $\text{sh}(x+y)$ by simply expanding the right side and doing the algebra.
> $$ \text{sh } x \text{ch } y + \text{ch } x \text{sh } y = \left(\frac{e^x - e^{-x}}{2}\right)\left(\frac{e^y + e^{-y}}{2}\right) + \left(\frac{e^x + e^{-x}}{2}\right)\left(\frac{e^y - e^{-y}}{2}\right) $$
> Multiply the numerators out using FOIL (First, Outer, Inner, Last), and the denominators ($2 \times 2 = 4$):
> $$ = \frac{e^{x+y} + e^{x-y} - e^{-x+y} - e^{-x-y}}{4} + \frac{e^{x+y} - e^{x-y} + e^{-x+y} - e^{-x-y}}{4} $$
> Combine into one big fraction. The $+e^{x-y}$ cancels with $-e^{x-y}$, and $-e^{-x+y}$ cancels with $+e^{-x+y}$. 
> $$ = \frac{2e^{x+y} - 2e^{-(x+y)}}{4} $$
> Divide top and bottom by 2:
> $$ = \frac{e^{x+y} - e^{-(x+y)}}{2} = \text{sh}(x+y). \blacksquare $$

If we set $x = y$ in the addition formulas, we instantly get the "double angle" formulas: 
$\text{sh } 2x = 2 \text{sh } x \text{ch } x$ 
$\text{ch } 2x = \text{ch}^2 x + \text{sh}^2 x$

### 20.3 Hyperbolic Tangent and Cotangent

Just as $\tan x = \sin x / \cos x$, we define hyperbolic tangent and cotangent by dividing the primary functions.

> **Definition.** The **hyperbolic tangent** ($\text{th } x$) and **hyperbolic cotangent** ($\text{cth } x$) are:
> $$ \text{th } x = \frac{\text{sh } x}{\text{ch } x} = \frac{\frac{e^x - e^{-x}}{2}}{\frac{e^x + e^{-x}}{2}} = \frac{e^x - e^{-x}}{e^x + e^{-x}} $$
> $$ \text{cth } x = \frac{\text{ch } x}{\text{sh } x} = \frac{e^x + e^{-x}}{e^x - e^{-x}} = \frac{1}{\text{th } x} \quad (\text{defined only when } x \neq 0) $$

**Limits at Infinity:** What happens to $\text{th } x$ as $x$ gets really large? Let's take the fraction $\frac{e^x - e^{-x}}{e^x + e^{-x}}$ and divide the top and bottom by $e^x$. 
This gives $\frac{1 - e^{-2x}}{1 + e^{-2x}}$. 
As $x \to \infty$, the term $e^{-2x}$ becomes vanishingly small ($0$). So the fraction becomes $\frac{1-0}{1+0} = 1$. 
Thus, $\lim_{x \to \infty} \text{th } x = 1$. 
Similarly, as $x \to -\infty$, it heads to $-1$. This means the graph of $\text{th } x$ is trapped in a horizontal band between $-1$ and $1$.
For $\text{cth } x$, the limits at $\pm \infty$ are $\pm 1$. However, because it divides by $\text{sh } x$ (which is $0$ at $x=0$), $\text{cth } x$ explodes to $\pm \infty$ as $x$ approaches $0$.

### 20.4 Inverse Hyperbolic Functions (Area Functions)

Remember how the inverse of an exponential function is a logarithm? Because hyperbolic functions are built entirely from exponentials, it makes sense that their inverse functions will be built out of logarithms! 
These inverse functions are called **area hyperbolic functions** (in Hungarian: *area hiperbolikus függvények*), because in advanced math, they calculate the area trapped inside a hyperbola.

1. **Area Hyperbolic Sine ($\text{arsh } x$)**:
   The function $\text{sh } x$ smoothly covers every real number from $-\infty$ to $+\infty$ without ever reversing direction. Because it is a "one-to-one mapping" (a continuous bijection), we can reverse it for any input. Its inverse is $\text{arsh } x$, which accepts any real number and spits out a real number.

2. **Area Hyperbolic Cosine ($\text{arch } x$)**:
   The function $\text{ch } x$ drops down to $1$ and goes back up, meaning it fails the horizontal line test. It gives the same output for positive and negative inputs (like $\text{ch}(2) = \text{ch}(-2)$). To make an inverse, we must restrict it to just its right half: $x \ge 0$. On this half, it starts at $1$ and goes up to $+\infty$. Therefore, its inverse $\text{arch } x$ only accepts inputs that are $\ge 1$, and outputs a number $\ge 0$.

3. **Area Hyperbolic Tangent ($\text{arth } x$)**:
   The function $\text{th } x$ maps the whole real line into the narrow window $(-1, 1)$. Reversing this, its inverse $\text{arth } x$ only accepts inputs strictly between $-1$ and $1$, and can output any real number.

Because these are inverse functions, we can actually solve for them algebraically and write them down as explicit logarithmic formulas!

> **Theorem 20.3. (Explicit Formulas)**
> a) $\text{arsh } x = \ln(x + \sqrt{x^2 + 1})$ for any $x \in \mathbb{R}$.
> b) $\text{arch } x = \ln(x + \sqrt{x^2 - 1})$ for any $x \ge 1$.
> c) $\text{arth } x = \frac{1}{2} \ln\left(\frac{1+x}{1-x}\right)$ for any $x \in (-1, 1)$.
> 
> *Proof Breakdown:* For each formula, we set $y = \text{inverse}(x)$, which means $x = \text{original\_function}(y)$. We write out the exponential definition of the original function, treat $e^y$ as a variable, and use the quadratic formula to solve for $e^y$. Finally, taking the natural log ($\ln$) isolates $y$.
> 
> *Formal Proof of (a).*
> Let $y = \text{arsh } x$. By definition, this means $\text{sh } y = x$.
> Substitute the definition of $\text{sh}$:
> $$ \frac{e^y - e^{-y}}{2} = x $$
> To get rid of the fraction and the negative exponent, let's multiply the entire equation by $2e^y$:
> $$ (e^y)^2 - 1 = 2x e^y $$
> Rearrange it so everything is on one side:
> $$ (e^y)^2 - 2x e^y - 1 = 0 $$
> This is just a quadratic equation! Think of it like $u^2 - 2xu - 1 = 0$, where $u = e^y$. Using the quadratic formula to solve for $u$:
> $$ e^y = \frac{-(-2x) \pm \sqrt{(-2x)^2 - 4(1)(-1)}}{2} = \frac{2x \pm \sqrt{4x^2 + 4}}{2} $$
> We can factor out a $\sqrt{4}$ (which is 2) from the square root:
> $$ e^y = \frac{2x \pm 2\sqrt{x^2 + 1}}{2} = x \pm \sqrt{x^2 + 1} $$
> Now we have a choice: plus or minus? Well, $e^y$ is always positive. The term $\sqrt{x^2+1}$ is strictly bigger than $x$ (because $x^2+1 > x^2$). Therefore, $x - \sqrt{x^2+1}$ will always be a negative number. We must discard the minus sign. 
> So, $e^y = x + \sqrt{x^2+1}$. 
> Taking the natural logarithm of both sides gives us $y$:
> $$ y = \ln(x + \sqrt{x^2+1}). $$ This proves formula (a).
> 
> *Formal Proof of (c).*
> Let $y = \text{arth } x$. Then $\text{th } y = x$.
> $$ \frac{e^y - e^{-y}}{e^y + e^{-y}} = x $$
> Multiply both sides by the denominator:
> $$ e^y - e^{-y} = x(e^y + e^{-y}) $$
> We want to group the $e^y$ terms together and the $e^{-y}$ terms together. Let's expand the right side and rearrange:
> $$ e^y - xe^y = xe^{-y} + e^{-y} $$
> Factor out the exponential terms:
> $$ e^y(1 - x) = e^{-y}(1 + x) $$
> Multiply both sides by $e^y$ to clear the negative exponent, and divide by $(1-x)$:
> $$ e^{2y} = \frac{1+x}{1-x} $$
> To solve for $y$, take the natural logarithm of both sides, which brings down the $2y$:
> $$ 2y = \ln\left(\frac{1+x}{1-x}\right) \implies y = \frac{1}{2} \ln\left(\frac{1+x}{1-x}\right). \blacksquare $$

### Examples
**Example 1.** Prove algebraically that $\text{sh } 2x = 2 \text{sh } x \text{ch } x$.
*Solution.* Let's start with the right side and substitute the definitions.
$$ 2 \text{sh } x \text{ch } x = 2 \left(\frac{e^x - e^{-x}}{2}\right)\left(\frac{e^x + e^{-x}}{2}\right) $$
Notice this looks exactly like the algebraic identity $(A-B)(A+B) = A^2 - B^2$.
$$ = 2 \left( \frac{(e^x)^2 - (e^{-x})^2}{4} \right) = 2 \left( \frac{e^{2x} - e^{-2x}}{4} \right) $$
Cancel the 2 with the 4 in the denominator:
$$ = \frac{e^{2x} - e^{-2x}}{2} $$
This expression is the exact definition of $\text{sh}$ evaluated at $2x$! Thus, it equals $\text{sh } 2x$.

### Exercises
1. Prove the double-angle formula $\text{ch } 2x = \text{ch}^2 x + \text{sh}^2 x$ by just plugging in the exponential definitions of $\text{ch } x$ and $\text{sh } x$.
2. We defined $\text{arth } x$. Try to find the explicit logarithmic formula for $\text{arcth } x$ (the inverse of $\text{cth } x$). Also, determine what inputs (domain) are valid for this new function.
3. Solve the equation $\text{sh } x = 3$ for $x$. (Hint: use the explicit formula for $\text{arsh } x$!)


---

## Chapter 21: Differentiation: Definition and Basic Rules

Calculus is fundamentally the mathematics of change. Up until now, math has been somewhat static—calculating fixed values. Differentiation allows us to calculate how fast things are moving or changing at a single, frozen instant in time.

### 21.1 Intuition and Definition

Historically, the idea of the derivative (in Hungarian: *differenciálhányados*) was born from two major problems, one in physics and one in geometry. But beautifully, they turn out to be exactly the same math problem!

1. **Physics: Instantaneous Velocity.** 
   Imagine you are driving a car. Your position on the road at time $t$ is described by a function $s(t)$. 
   If you want to know your average speed between time $t_0$ and time $t$, you just take the distance traveled and divide by the time elapsed. This fraction is called the **difference quotient** (*differenciahányados*):
   $$ v_{\text{avg}} = \frac{s(t) - s(t_0)}{t - t_0} $$
   But what if you want to know your exact speed at the precise instant $t = t_0$ (what your speedometer reads right then)? You make the time interval smaller and smaller. You take the *limit* as $t$ approaches $t_0$:
   $$ v(t_0) = \lim_{t \to t_0} \frac{s(t) - s(t_0)}{t - t_0} $$

2. **Geometry: Tangent Lines.** 
   Imagine a curvy graph. If you pick two points on the curve, $(t_0, s(t_0))$ and $(t, s(t))$, you can draw a straight line through them, called a **secant line** (*húr*). The slope of this secant line is exactly the difference quotient formula above: "rise over run". 
   If you slide the second point closer and closer to the first point, the secant line tilts. In the limit, as the two points merge into one, the line gently rests against the curve, barely grazing it. This is the **tangent line** (*érintő*), and its slope is the instantaneous rate of change.

> **Definition (Differentiability).** 
> Let $f$ be a real-valued function. We say that $f$ is **differentiable at a point $a$** if the function is defined smoothly around $a$, and the following limit exists and results in a finite number:
> $$ \lim_{x \to a} \frac{f(x) - f(a)}{x - a} $$
> This resulting number is denoted by $f'(a)$ and is called the **derivative** of $f$ at the point $a$.

*Alternative Notation:* Sometimes it's easier to think about the distance between $x$ and $a$. Let's call that small distance $h$. So, $x = a + h$. As $x$ slides toward $a$, the distance $h$ shrinks to $0$. We can rewrite the exact same definition as:
$$ f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h} $$
You will see several ways to write the derivative. If $y = f(x)$, common symbols for the derivative include $f'(x)$, $\dot{f}(x)$ (common in physics), $y'$, or Leibniz's fraction notation $\frac{dy}{dx}$.

> **Definition (Tangent Line).** 
> If a function is differentiable at $a$, we can draw its tangent line. The equation for this straight line passing through the point $(a, f(a))$ with slope $f'(a)$ is:
> $$ y = f'(a)(x - a) + f(a) $$

> **Definition (Derivative Function).** 
> If we calculate the derivative at *every* possible point $x$ where it exists, we create a brand new function! This function, which maps $x \mapsto f'(x)$, is called the **derivative function** (*derivált függvény*), denoted simply as $f'$ or $\frac{df}{dx}$.

**Example:** Let's find the derivative of a straight line, $f(x) = mx + b$.
Using the $h$ definition for any point $x$:
$$ f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h} = \lim_{h \to 0} \frac{[m(x+h)+b] - [mx+b]}{h} $$
Let's simplify the numerator:
$$ = \lim_{h \to 0} \frac{mx + mh + b - mx - b}{h} = \lim_{h \to 0} \frac{mh}{h} $$
Since $h \neq 0$ inside the limit, we can cancel it out.
$$ = \lim_{h \to 0} m = m $$
This makes perfect sense! A linear function has a constant slope $m$, so its rate of change is always $m$.

> **Theorem (Power Rule for Natural Numbers).** For any positive integer $n$ (like 1, 2, 3...), the derivative of $f(x) = x^n$ is $f'(x) = n x^{n-1}$.
> (Example: the derivative of $x^3$ is $3x^2$. You just bring the power down to the front and reduce the power by 1.)
> 
> *Proof Breakdown:* We use the limit definition, and apply a classic algebraic factoring trick to simplify the scary-looking fraction.
> 
> *Formal Proof.* 
> Let's set up the limit definition for the derivative at point $x$, using a nearby point $y$:
> $$ \lim_{y \to x} \frac{y^n - x^n}{y - x} $$
> There is an algebraic formula for factoring $y^n - x^n$. For example, $y^2 - x^2 = (y-x)(y+x)$, and $y^3 - x^3 = (y-x)(y^2 + yx + x^2)$. In general:
> $y^n - x^n = (y - x)(y^{n-1} + y^{n-2}x + \dots + x^{n-1})$. 
> We plug this into the numerator. The $(y - x)$ term perfectly cancels with the denominator! For $y \neq x$, we are left with:
> $$ \lim_{y \to x} (y^{n-1} + y^{n-2}x + \dots + x^{n-1}) $$
> Now, we can safely let $y$ become $x$. Every single term in this sum turns into $x^{n-1}$. 
> How many terms are there? Exactly $n$ terms. 
> So, we have $\underbrace{x^{n-1} + x^{n-1} + \dots + x^{n-1}}_{n \text{ times}}$, which is exactly $n x^{n-1}$. $\blacksquare$

### 21.2 Continuity and Differentiability

Are continuity (being unbroken) and differentiability (being smooth) the same thing? No, but they are related!

> **Theorem.** If a function $f$ is differentiable at a point $a$, then it **must** be continuous at $a$.
> 
> *Proof Breakdown:* Continuity means the limit of $f(x)$ as $x \to a$ is just $f(a)$. Or equivalently, the difference $f(x) - f(a)$ shrinks to 0. We will force the derivative formula into this expression by multiplying and dividing by $(x-a)$.
> 
> *Formal Proof.* 
> We want to evaluate $\lim_{x \to a} (f(x) - f(a))$ and show it equals zero. 
> Let's multiply and divide the inside by $(x-a)$:
> $$ \lim_{x \to a} (f(x) - f(a)) = \lim_{x \to a} \left( \frac{f(x) - f(a)}{x - a} \cdot (x - a) \right) $$
> The limit of a product is the product of the limits:
> $$ = \left( \lim_{x \to a} \frac{f(x) - f(a)}{x - a} \right) \cdot \left( \lim_{x \to a} (x - a) \right) $$
> The first limit is exactly the definition of the derivative $f'(a)$ (which we know is a finite number because we assumed it's differentiable). The second limit is obviously $a - a = 0$.
> $$ = f'(a) \cdot 0 = 0 $$
> Since $f(x) - f(a) \to 0$, we have $f(x) \to f(a)$, meaning the function is continuous. $\blacksquare$

*Warning!* The reverse is **NOT true**. A function can be continuous but NOT differentiable. Differentiability is a strict VIP club. 
Think of the absolute value function, $f(x) = |x|$. It is a V-shape. At $x=0$, it is perfectly continuous—no breaks. But it has a sharp corner! 
If you calculate the slope from the right side, it's $+1$. If you calculate it from the left side, it's $-1$. Because the left and right slopes violently disagree at $x=0$, there is no single valid tangent line. Thus, it is not differentiable there.
In fact, mathematicians in the 19th century discovered horrifying functions that are continuous everywhere, but have such jagged, fractal-like corners everywhere that they are differentiable *nowhere*. The famous mathematician Charles Hermite wrote: *"I turn away with fright and horror from this lamentable plague of functions which do not have derivatives."*

To handle sharp corners, we can define one-sided derivatives.
> **Definition (One-Sided Derivatives).** A function has a **right-derivative** (*jobboldali derivált*), denoted $f'_+(a)$, if we only take the limit as $x$ approaches $a$ from the right ($x \to a+0$). The **left-derivative**, $f'_-(a)$, is defined from the left. 
> A standard derivative $f'(a)$ exists if and only if both the left and right derivatives exist and are perfectly equal.

### 21.3 Rules of Differentiation

Calculating derivatives using the limit definition every time is exhausting. Thankfully, derivatives follow strict algebraic rules that make our lives easier!

> **Theorem (Differentiation Rules).** Let $f$ and $g$ be two functions that are differentiable at $a$, and let $c$ be any constant number. Then we can confidently say:
> 1. **Constant Multiple Rule:** $(cf)'(a) = c \cdot f'(a)$. (Constants just tag along).
> 2. **Sum Rule:** $(f + g)'(a) = f'(a) + g'(a)$. (The derivative of a sum is the sum of derivatives).
> 3. **Product Rule (*Szorzatszabály*):** $(f \cdot g)'(a) = f'(a)g(a) + f(a)g'(a)$. (Take turns differentiating!).
> 
> Furthermore, if $g(a) \neq 0$, we can divide:
> 4. **Reciprocal Rule:** $\left( \frac{1}{g} \right)'(a) = -\frac{g'(a)}{[g(a)]^2}$
> 5. **Quotient Rule (*Hányadosszabály*):** $\left( \frac{f}{g} \right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{[g(a)]^2}$
> 
> *Proof of the Product Rule.*
> We set up the limit definition for $f(x)g(x)$:
> $$ \lim_{x \to a} \frac{f(x)g(x) - f(a)g(a)}{x - a} $$
> We use a classic mathematical trick: add 0 in a clever way. Let's subtract $f(a)g(x)$ and immediately add it back in the numerator:
> $$ = \lim_{x \to a} \frac{f(x)g(x) \mathbf{- f(a)g(x) + f(a)g(x)} - f(a)g(a)}{x - a} $$
> Now we split the fraction into two pieces and factor them:
> $$ = \lim_{x \to a} \left[ g(x) \frac{f(x) - f(a)}{x - a} \right] + \lim_{x \to a} \left[ f(a) \frac{g(x) - g(a)}{x - a} \right] $$
> Now evaluate the limits. Since $g$ is differentiable at $a$, it must be continuous at $a$, so $\lim_{x \to a} g(x)$ is simply $g(a)$. The fractions turn into $f'(a)$ and $g'(a)$.
> The result is exactly $g(a)f'(a) + f(a)g'(a)$. $\blacksquare$
> 
> *Proof of the Reciprocal Rule.*
> Setup the limit definition for $\frac{1}{g(x)}$:
> $$ \lim_{x \to a} \frac{\frac{1}{g(x)} - \frac{1}{g(a)}}{x - a} $$
> Find a common denominator for the top fractions:
> $$ = \lim_{x \to a} \frac{\frac{g(a) - g(x)}{g(x)g(a)}}{x - a} = \lim_{x \to a} \frac{g(a) - g(x)}{g(x)g(a)(x - a)} $$
> Let's pull out a negative sign to flip $g(a) - g(x)$ into $g(x) - g(a)$, so it looks like a derivative:
> $$ = \lim_{x \to a} \frac{-1}{g(x)g(a)} \cdot \frac{g(x) - g(a)}{x - a} $$
> Evaluate the limits. The fraction on the right becomes $g'(a)$. The fraction on the left, because $g$ is continuous, becomes $\frac{-1}{g(a)g(a)}$.
> Thus, we get $\frac{-1}{[g(a)]^2} g'(a)$. $\blacksquare$
> 
> The Quotient Rule (Rule 5) is proved simply by treating $\frac{f(x)}{g(x)}$ as a product of $f(x)$ and $\frac{1}{g(x)}$ and applying the rules we just proved!

### 21.4 The Chain Rule

How do we differentiate nested functions, like a function *inside* another function, such as $h(x) = \sin(x^2)$? We use the Chain Rule. 

To prove it cleanly, mathematicians use a clever workaround lemma credited to Carathéodory. It basically rewrites the derivative as a continuous function, avoiding messy division-by-zero problems when taking limits.

> **Lemma (Carathéodory's Theorem).** A function $f$ is differentiable at $a$ if and only if we can find a "helper" function $f^*(x)$ that is continuous at $a$, such that:
> $$ f(x) - f(a) = f^*(x)(x - a) $$
> If this works, then the value of the helper function at $a$ is exactly the derivative: $f^*(a) = f'(a)$.
> 
> *Proof Breakdown:* We just define $f^*(x)$ to be the difference quotient fraction when $x \neq a$, and to be the derivative $f'(a)$ right at $a$. Because the limit of the fraction *is* the derivative, this helper function connects perfectly and is continuous. $\blacksquare$

> **Theorem (Chain Rule / *Láncszabály*).** Let's say you have an inner function $f$ and an outer function $g$. If $f$ is differentiable at $a$, and $g$ is differentiable at the point $f(a)$, then their composition $h(x) = g(f(x))$ is differentiable at $a$.
> The rule to calculate it is:
> $$ h'(a) = g'(f(a)) \cdot f'(a) $$
> *(In words: Differentiate the outer function leaving the inside alone, then multiply by the derivative of the inner function).*
> 
> *Proof.* We use Carathéodory's Lemma on both functions. We know there exist continuous helper functions $f^*$ and $g^*$ such that:
> 1) For the inner function: $f(x) - f(a) = f^*(x)(x - a)$
> 2) For the outer function (using variables $u = f(x)$ and evaluated near point $f(a)$): 
>    $g(u) - g(f(a)) = g^*(u) \cdot (u - f(a))$
> 
> Let's look at the composite function $h(x) - h(a)$, which is $g(f(x)) - g(f(a))$. 
> Substitute $u = f(x)$ into equation 2:
> $$ h(x) - h(a) = g^*(f(x)) \cdot [f(x) - f(a)] $$
> Now replace the $[f(x) - f(a)]$ part using equation 1:
> $$ h(x) - h(a) = g^*(f(x)) \cdot f^*(x) \cdot (x - a) $$
> Notice that we have perfectly rewritten $h(x) - h(a)$ in the Carathéodory format! Our new combined helper function for $h$ is $h^*(x) = g^*(f(x)) \cdot f^*(x)$. 
> Since $f$, $f^*$, and $g^*$ are all continuous, this new product $h^*$ is continuous. 
> By Carathéodory's Lemma, $h$ is differentiable, and its derivative is simply $h^*(a)$:
> $$ h'(a) = h^*(a) = g^*(f(a)) \cdot f^*(a) = g'(f(a)) \cdot f'(a). \blacksquare $$

**Example:** Differentiate $h(x) = (x^2+1)^{13}$.
Here, the inner function is $f(x) = x^2+1$, and the outer function is $g(u) = u^{13}$.
We find their individual derivatives: $f'(x) = 2x$ and $g'(u) = 13u^{12}$.
Apply the Chain Rule: $h'(x) = g'(f(x)) \cdot f'(x) = 13(x^2+1)^{12} \cdot 2x$.

### 21.5 Derivative of an Inverse Function

If we know the derivative of a function, can we easily find the derivative of its inverse without doing all the hard work again? Yes!

> **Theorem (Inverse Function Rule).** Let $f$ be a continuous, strictly monotonic function (so it has a valid inverse). Suppose $f$ is differentiable at a point $c$, and its slope is not flat, meaning $f'(c) \neq 0$. 
> Then its inverse function, let's call it $\varphi$, is differentiable at the corresponding point $d = f(c)$. The rule is simply the reciprocal:
> $$ \varphi'(d) = \frac{1}{f'(c)} $$
> 
> *Proof Breakdown:* An inverse function flips the x and y axes. Because the axes flip, "rise over run" flips to "run over rise"! So a slope of $m$ becomes a slope of $1/m$.
> 
> *Formal Proof.* 
> Let $v$ be an input to the inverse function $\varphi$, and let it approach $d$. Because inverse functions of continuous monotonic functions are also continuous, $u = \varphi(v)$ will smoothly approach $\varphi(d) = c$. Also, because it's strictly monotonic, as long as $v \neq d$, we guarantee $u \neq c$.
> Let's set up the difference quotient for the inverse function $\varphi$:
> $$ \frac{\varphi(v) - \varphi(d)}{v - d} $$
> Substitute $u$ and $c$:
> $$ = \frac{u - c}{f(u) - f(c)} $$
> This is exactly upside-down from our normal derivative formula! Let's force it down into the denominator:
> $$ = \frac{1}{\frac{f(u) - f(c)}{u - c}} $$
> As $v \to d$, we know $u \to c$. The denominator limit becomes exactly the derivative $f'(c)$. As long as $f'(c) \neq 0$, the limit safely evaluates to $1/f'(c)$. $\blacksquare$

*Mnemonic:* If you use Leibniz notation, where $y = f(x)$ and $x = \varphi(y)$, this rule simply says $\frac{dx}{dy} = \frac{1}{\frac{dy}{dx}}$. It treats the derivatives like actual fractions!

**Example:** We know that $f(x) = x^k$ has the derivative $f'(x) = k x^{k-1}$. What is the derivative of its inverse, the k-th root function $\varphi(x) = \sqrt[k]{x} = x^{1/k}$?
Let $d > 0$. We maintained the variable. We need to evaluate at $c = \sqrt[k]{d}$.
$$ \varphi'(d) = \frac{1}{f'(c)} = \frac{1}{k c^{k-1}} $$
Substitute $c = d^{1/k}$:
$$ = \frac{1}{k (d^{1/k})^{k-1}} = \frac{1}{k d^{\frac{k-1}{k}}} = \frac{1}{k} d^{-\frac{k-1}{k}} = \frac{1}{k} d^{\frac{1}{k} - 1} $$
Replacing $d$ with a general variable $x$, we see that $(x^{1/k})' = \frac{1}{k} x^{\frac{1}{k}-1}$. The power rule works for fractions too!

### 21.6 Exercises
1. Using *only* the painful limit definition of the derivative (no rules!), find the derivative of $f(x) = 1/x$ at any point $x \neq 0$.
2. Here is a bizarre monster function: $f(x) = x^2 \sin(1/x)$ for $x \neq 0$, and we define $f(0) = 0$ to plug the hole in the middle. Prove that this function is actually differentiable at $x = 0$ by manually applying the limit definition.
3. Compute the derivative of the bell-curve-like function $f(x) = (1+x^2)^{-1}$ using the chain rule.
4. Generalize the power rule completely: prove that for any rational fraction $p/q$, the derivative is $(x^{p/q})' = \frac{p}{q}x^{p/q-1}$. (Hint: use the inverse rule and the chain rule!).


---

## Chapter 22: Derivatives of Elementary Functions

Welcome back! In previous chapters, we learned what a derivative is—the instantaneous rate of change of a function, or the slope of the tangent line at any given point. We also learned basic rules like the sum, product, and quotient rules. 

But what about the actual functions we use every day in math? The polynomials, the sines, the cosines, the exponentials? In this chapter, we are going to build a "toolkit" of derivatives for all these standard elementary functions. Once we have these, computing derivatives becomes less about evaluating messy limits and more about applying straightforward rules.

### 22.1 Polynomials

Let's start with the most friendly functions in algebra: polynomials. You might remember the power rule from our earlier discussions. The power rule states that if $f(x) = x^n$, then its derivative is $f'(x) = n x^{n-1}$. This simple rule, combined with the linearity of the derivative (meaning the derivative of a sum is the sum of derivatives, and we can pull constants out), gives us everything we need.

**Theorem (Derivative of a Polynomial).** 
Let $P(x)$ be a polynomial of degree $n$, written as:
$$ P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0 $$
where the $a$ terms are just constant numbers (the coefficients). The derivative of $P(x)$ is:
$$ P'(x) = n a_n x^{n-1} + (n-1)a_{n-1}x^{n-2} + \dots + a_1 $$

*Intuitive Commentary:*
Think of this as going down the line of terms one by one. For each term, you take the exponent, multiply it by the coefficient in front, and then drop the exponent by one. The constant term $a_0$ has no $x$ (which is like $x^0$), so its rate of change is just zero. It vanishes! 

*Example:* If $P(x) = 5x^3 - 4x^2 + 7x - 2$, then to find $P'(x)$:
- The derivative of $5x^3$ is $3 \cdot 5x^2 = 15x^2$.
- The derivative of $-4x^2$ is $2 \cdot (-4)x^1 = -8x$.
- The derivative of $7x$ is $1 \cdot 7x^0 = 7$.
- The derivative of $-2$ (a constant) is $0$.
So, $P'(x) = 15x^2 - 8x + 7$. It's that easy!

### 22.2 Trigonometric Functions

Now we move to trigonometric functions like sine and cosine. These represent waves and oscillations. Before we can find their derivatives, we need to know how they behave very close to zero. We'll establish two crucial "building block" limits first.

**Lemma 1 (The Fundamental Trig Limit).** 
$$ \lim_{x \to 0} \frac{\sin x}{x} = 1 $$
This implies that the derivative of $\sin x$ at $x=0$ is exactly $1$, meaning $\sin'(0) = 1$.

*Intuitive Commentary:*
If you plug $x=0$ into $\frac{\sin x}{x}$, you get $0/0$, which is undefined. But if you graph it or plug in very small numbers (like $x = 0.01$ radians), you'll get something very close to $1$. This lemma tells us that for extremely tiny angles, the sine of the angle is practically identical to the angle itself!

*Step-by-Step Proof:*
1. **Geometric Setup:** Imagine a circle of radius $1$ (the unit circle) centered at the origin $O$. Let's pick a very small positive angle $x$ (so $0 < x < \pi/2$). 
2. **Three Shapes:** We draw a slice of the circle (a sector) with angle $x$. Let the points be $O(0,0)$ and $A(1,0)$. The edge of the slice hits the circle at a point $P(\cos x, \sin x)$. Finally, we draw a vertical tangent line at $A$, and extend the line $OP$ until it hits this tangent line at a point $B$. The coordinates of $B$ will be $(1, \tan x)$.
3. **Comparing Areas:** We have three nested shapes:
   - The small triangle $\triangle OAP$ inside the circle slice.
   - The circle slice (sector) $OAP$ itself.
   - The large right triangle $\triangle OAB$ outside the circle.
   Since they are nested, their areas must follow an inequality:
   $$ \text{Area}(\triangle OAP) < \text{Area}(\text{Sector } OAP) < \text{Area}(\triangle OAB) $$
4. **Writing the Area Formulas:**
   - Area of $\triangle OAP = \frac{1}{2} \cdot \text{base} \cdot \text{height} = \frac{1}{2} \cdot 1 \cdot \sin x$.
   - Area of Sector $OAP = \frac{1}{2} \cdot r^2 \cdot \text{angle} = \frac{1}{2} \cdot 1^2 \cdot x = \frac{1}{2} x$.
   - Area of $\triangle OAB = \frac{1}{2} \cdot \text{base} \cdot \text{height} = \frac{1}{2} \cdot 1 \cdot \tan x$.
   Plugging these in:
   $$ \frac{1}{2} \sin x < \frac{1}{2} x < \frac{1}{2} \tan x $$
5. **Algebraic Manipulation:** Let's multiply everything by $2$ to clear the halves. We get $\sin x < x < \tan x$. Remember that $\tan x = \frac{\sin x}{\cos x}$. Let's divide the whole inequality by $\sin x$ (which is positive since $x$ is small and positive).
   $$ 1 < \frac{x}{\sin x} < \frac{1}{\cos x} $$
6. **Flipping the Fractions:** If we take the reciprocal (flip upside down) of all terms, the inequalities reverse their direction:
   $$ \cos x < \frac{\sin x}{x} < 1 $$
7. **The Squeeze:** Now, what happens as $x$ shrinks to $0$? The right side is always fixed at $1$. The left side, $\cos x$, approaches $\cos(0) = 1$. Our term $\frac{\sin x}{x}$ is "squeezed" between two things that are both approaching $1$. By the Squeeze Theorem, $\lim_{x \to 0^+} \frac{\sin x}{x} = 1$.
8. **Handling Negatives:** Since $\frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} = \frac{\sin x}{x}$, the function is completely symmetric (an even function). Thus, approaching from the left gives the same result. The two-sided limit is indeed $1$. $\blacksquare$

**Lemma 2.** 
$$ \lim_{x \to 0} \frac{\cos x - 1}{x} = 0 $$
This implies $\cos'(0) = 0$.

*Intuitive Commentary:*
Visually, the graph of $\cos x$ peaks at $(0,1)$. The tangent line at the peak of a smooth wave should be perfectly flat. A flat line has a slope of $0$, which perfectly aligns with our limit being $0$.

*Step-by-Step Proof:*
We can use a clever trigonometric identity: the half-angle formula, which states that $1 - \cos x = 2\sin^2(x/2)$. This means $\cos x - 1 = -2\sin^2(x/2)$. Let's substitute this into our limit:
$$ \lim_{x \to 0} \frac{\cos x - 1}{x} = \lim_{x \to 0} \frac{-2 \sin^2(x/2)}{x} $$
We can rewrite this fraction strategically to make it look like the limit we proved in Lemma 1:
$$ = \lim_{x \to 0} \left( -\sin(x/2) \right) \cdot \frac{\sin(x/2)}{x/2} $$
Let's analyze the two pieces as $x \to 0$:
1. $-\sin(x/2)$ simply approaches $-\sin(0) = 0$.
2. $\frac{\sin(x/2)}{x/2}$ is exactly the structure from Lemma 1! As the inside $(x/2)$ goes to $0$, this fraction approaches $1$.
Multiplying these together, the limit is $0 \cdot 1 = 0$. $\blacksquare$

With these two lemmas, we are now ready to tackle the derivatives of sine and cosine for *any* value of $x$, not just at 0.

**Theorem (Derivatives of Sine and Cosine).** 
For all real numbers $x$:
$$ (\sin x)' = \cos x \quad \text{and} \quad (\cos x)' = -\sin x $$

*Intuitive Commentary:*
This creates a beautiful, never-ending cycle! The rate of change of a sine wave is a cosine wave. The rate of change of a cosine wave is an upside-down sine wave. If you keep taking derivatives, they loop: $\sin x \to \cos x \to -\sin x \to -\cos x \to \sin x$...

*Step-by-Step Proof for Sine:*
1. **The Definition:** We go back to the formal definition of the derivative using limits:
   $$ (\sin x)' = \lim_{h \to 0} \frac{\sin(x+h) - \sin x}{h} $$
2. **Angle Addition:** We use the trigonometric identity $\sin(x+h) = \sin x \cos h + \cos x \sin h$. Substituting this in:
   $$ = \lim_{h \to 0} \frac{\sin x \cos h + \cos x \sin h - \sin x}{h} $$
3. **Rearranging:** Let's group the terms with $\sin x$ together and the term with $\cos x$ separately:
   $$ = \lim_{h \to 0} \left( \sin x \frac{\cos h - 1}{h} + \cos x \frac{\sin h}{h} \right) $$
4. **Applying our Lemmas:** Notice the pieces in the fractions! The variable changing in the limit is $h$, so we treat $x$ like a constant.
   - $\lim_{h \to 0} \frac{\cos h - 1}{h} = 0$ (from Lemma 2)
   - $\lim_{h \to 0} \frac{\sin h}{h} = 1$ (from Lemma 1)
   So the expression becomes:
   $$ = \sin x \cdot (0) + \cos x \cdot (1) = \cos x. $$

*Step-by-Step Proof for Cosine:*
Instead of using limits again, let's be clever and use the Chain Rule along with the co-function identity $\cos x = \sin(\pi/2 - x)$.
$$ (\cos x)' = (\sin(\pi/2 - x))' $$
By the Chain Rule, we first take the derivative of the "outside" function (sine), which becomes cosine, keeping the inside the same. Then we multiply by the derivative of the "inside" function $(\pi/2 - x)$, which is $-1$.
$$ = \cos(\pi/2 - x) \cdot (-1) $$
Using the identity $\cos(\pi/2 - x) = \sin x$, we get:
$$ = -\sin x. \ \blacksquare $$

What about the other trig functions? We can derive them using the Quotient Rule!

**Theorem (Derivatives of Tangent and Cotangent).** 
Wherever these functions are defined:
$$ (\tan x)' = \frac{1}{\cos^2 x} \quad \text{and} \quad (\cot x)' = -\frac{1}{\sin^2 x} $$

*Step-by-Step Proof for Tangent:*
1. **Rewrite:** Recall that $\tan x = \frac{\sin x}{\cos x}$.
2. **Quotient Rule:** The rule is $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$. Here, $u = \sin x$ and $v = \cos x$. We know $u' = \cos x$ and $v' = -\sin x$.
   $$ (\tan x)' = \frac{(\sin x)'\cos x - \sin x(\cos x)'}{\cos^2 x} $$
   $$ = \frac{(\cos x)(\cos x) - (\sin x)(-\sin x)}{\cos^2 x} $$
3. **Simplify:** Multiply things out to get:
   $$ = \frac{\cos^2 x + \sin^2 x}{\cos^2 x} $$
   By the most famous Pythagorean identity, $\cos^2 x + \sin^2 x = 1$. Thus:
   $$ = \frac{1}{\cos^2 x} $$
The proof for cotangent is extremely similar and is left as a fun exercise! $\blacksquare$

### 22.3 Inverse Trigonometric Functions

Sometimes we need to go backward. Instead of "what is the sine of this angle?", we ask "what angle gives me this sine value?" This is where inverse trigonometric functions come in. To find their derivatives, we'll use a powerful tool called the Inverse Function Rule. 

The Inverse Function Rule says that if a function $f$ and its inverse $\varphi$ exist, then $\varphi'(x) = \frac{1}{f'(\varphi(x))}$. Think of it geometrically: if a line has slope $m$, its reflection across the line $y=x$ has slope $1/m$.

**Theorem.** 
The derivatives of the inverse trigonometric functions are:
1. $(\arcsin x)' = \frac{1}{\sqrt{1-x^2}}$ for $-1 < x < 1$
2. $(\arccos x)' = \frac{-1}{\sqrt{1-x^2}}$ for $-1 < x < 1$
3. $(\arctan x)' = \frac{1}{1+x^2}$ for all real $x$

*Step-by-Step Proof:*
1. **Derivative of Arcsine:**
   Let $y = \arcsin x$. This is the exact same statement as saying $x = \sin y$, where we restrict the angle $y$ to be between $-\pi/2$ and $\pi/2$ to make sure it's a true function (so it passes the horizontal line test).
   Using the Inverse Function Rule, we know that if $f(y) = \sin y$, then $f'(y) = \cos y$. Therefore:
   $$ (\arcsin x)' = \frac{1}{f'(y)} = \frac{1}{\cos y} $$
   But we want our answer in terms of $x$, not $y$. We know $x = \sin y$. From the Pythagorean identity $\cos^2 y + \sin^2 y = 1$, we can deduce that $\cos y = \sqrt{1 - \sin^2 y}$ (it's positive because $y \in [-\pi/2, \pi/2]$).
   Substituting $\sin y = x$, we get $\cos y = \sqrt{1 - x^2}$.
   Therefore, $(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}$.

2. **Derivative of Arccosine:**
   There is a beautiful geometric relationship: for any $x$, $\arcsin x + \arccos x = \pi/2$ (a right angle). 
   This means $\arccos x = \pi/2 - \arcsin x$.
   Taking the derivative of both sides, the constant $\pi/2$ vanishes, and we just get the negative of the arcsine derivative!
   $$ (\arccos x)' = -\frac{1}{\sqrt{1 - x^2}} $$

3. **Derivative of Arctangent:**
   Let $y = \arctan x$, which means $x = \tan y$, restricted to $y \in (-\pi/2, \pi/2)$.
   Let $f(y) = \tan y$. We know from earlier that $f'(y) = \frac{1}{\cos^2 y}$.
   By the Inverse Function Rule:
   $$ (\arctan x)' = \frac{1}{f'(y)} = \frac{1}{\frac{1}{\cos^2 y}} = \cos^2 y $$
   Again, we must rewrite this in terms of $x$. We know $x = \tan y$. We use the identity $1 + \tan^2 y = \frac{1}{\cos^2 y}$. 
   Taking the reciprocal, $\cos^2 y = \frac{1}{1 + \tan^2 y}$.
   Substituting $x = \tan y$, we get:
   $$ (\arctan x)' = \frac{1}{1 + x^2}. \ \blacksquare $$

### 22.4 Exponential and Logarithmic Functions

Exponentials (like $2^x$) and logarithms (like $\log_2 x$) represent exponential growth, decay, and scaling. There is one specific base that is the undisputed king of calculus: the number $e$ (approximately $2.718$).

Recall that $e$ is often defined via sequences as $e = \lim_{n \to \infty} (1 + 1/n)^n$. We first need to show that this works for continuous variables too, not just integers.

**Lemma 3.** 
As $x$ approaches positive or negative infinity continuously, $\lim_{x \to \pm\infty} \left(1 + \frac{1}{x}\right)^x = e$. 
Equivalently, if we let $t = 1/x$, as $t$ approaches $0$, $\lim_{t \to 0} (1+t)^{1/t} = e$.

*Intuitive Commentary:*
This just means that if you compound your interest at the bank more and more frequently—down to the exact continuous millisecond—your money doesn't blow up to infinity. It smoothly approaches a growth factor of $e$.

*Step-by-Step Proof:*
We will "squeeze" our continuous variable $x$ between two whole numbers. 
1. For large positive $x$, let $n$ be the integer just below $x$ (so $n \le x < n+1$).
2. This gives us two bounds. The base $\left(1 + \frac{1}{x}\right)$ is sandwiched between $\left(1 + \frac{1}{n+1}\right)$ and $\left(1 + \frac{1}{n}\right)$. 
3. Similarly, the exponent $x$ is between $n$ and $n+1$. 
4. Combining these, we can construct the inequality:
   $$ \left(1 + \frac{1}{n+1}\right)^n < \left(1 + \frac{1}{x}\right)^x < \left(1 + \frac{1}{n}\right)^{n+1} $$
5. Let's look at the outer bounds as $n \to \infty$. 
   The lower bound is slightly smaller than the classic sequence for $e$, but it approaches $e$. 
   The upper bound is slightly larger, but it can be split into $(1 + 1/n)^n \cdot (1 + 1/n)$. The first part goes to $e$, the second part goes to $1+0=1$, so the product goes to $e$.
6. Since the left and right sides both squeeze in on $e$, the middle continuous term must also be $e$. A similar trick works for negative infinity. Substituting $t = 1/x$ proves the second version of the limit. $\blacksquare$

Now, let's find the derivative of logarithms!

**Theorem (Derivative of Logarithms).** 
For any base $a > 0$ (and $a \neq 1$) and $x > 0$:
$$ (\log_a x)' = \frac{1}{x \ln a} $$
Crucially, if the base is $e$ (the natural logarithm, written as $\ln x$), then $\ln e = 1$, so the derivative simplifies beautifully to:
$$ (\ln x)' = \frac{1}{x} $$

*Intuitive Commentary:*
This is a stunning result! It bridges two completely different worlds. On one side, we have logarithms, which are all about exponents and powers. On the side, we have $1/x$, a simple algebraic hyperbola. This connection is fundamental to all of higher mathematics.

*Step-by-Step Proof:*
1. **Definition of Derivative:**
   $$ (\log_a x)' = \lim_{h \to 0} \frac{\log_a(x+h) - \log_a x}{h} $$
2. **Log Properties:** The difference of two logs is the log of their division: $\log_a(A) - \log_a(B) = \log_a(A/B)$.
   $$ = \lim_{h \to 0} \frac{1}{h} \log_a\left( \frac{x+h}{x} \right) = \lim_{h \to 0} \frac{1}{h} \log_a\left( 1 + \frac{h}{x} \right) $$
3. **A Clever Trick:** We want to use Lemma 3, which requires the exponent to be the flip of what's inside. Inside we have $\frac{h}{x}$, so we want the outside multiplier to be $\frac{x}{h}$. Let's multiply the outside by $\frac{x}{x}$ (which is just 1, so it changes nothing):
   $$ = \lim_{h \to 0} \frac{1}{x} \frac{x}{h} \log_a\left( 1 + \frac{h}{x} \right) $$
4. **Moving the Coefficient:** Another log property allows us to bring a coefficient out front up into the exponent: $C \log(A) = \log(A^C)$.
   $$ = \frac{1}{x} \lim_{h \to 0} \log_a \left[ \left(1 + \frac{h}{x}\right)^{x/h} \right] $$
5. **Applying the Lemma:** Let $t = h/x$. As $h \to 0$, $t \to 0$. Let's pull the limit inside the continuous log function.
   $$ = \frac{1}{x} \log_a \left[ \lim_{t \to 0} (1+t)^{1/t} \right] $$
   By Lemma 3, the limit inside the brackets is exactly $e$!
   $$ = \frac{1}{x} \log_a e $$
6. **Change of Base:** Finally, using the change of base formula, $\log_a e = \frac{\ln e}{\ln a} = \frac{1}{\ln a}$. 
   So the derivative is $\frac{1}{x \ln a}$. $\blacksquare$

**Theorem (Derivative of Exponentials).** 
For any base $a > 0$:
$$ (a^x)' = a^x \ln a $$
Most importantly, when the base is $e$:
$$ (e^x)' = e^x $$

*Intuitive Commentary:*
The function $e^x$ is the holy grail of calculus. It is its own derivative! The slope of the curve at any point is exactly equal to the height of the curve at that point. No other function (besides 0) does this. If the base isn't $e$, we just get an extra scaling factor of $\ln a$.

*Step-by-Step Proof:*
Just like with inverse trig functions, the exponential $y = a^x$ is the inverse of the logarithm $x = \log_a y$. We can use the Inverse Function Rule again!
Let $f(y) = \log_a y$. Its derivative is $f'(y) = \frac{1}{y \ln a}$.
$$ (a^x)' = \frac{1}{f'(y)} = \frac{1}{\frac{1}{y \ln a}} = y \ln a $$
Substitute $y = a^x$ back in, and we immediately get:
$$ (a^x)' = a^x \ln a. \ \blacksquare $$

**Theorem (Derivative of Arbitrary Powers).** 
You might wonder: the power rule works for integer powers like $x^2$, but what about crazy powers like $x^{\pi}$ or $x^{\sqrt{2}}$? The rule still holds! For any real exponent $a$ and $x > 0$:
$$ (x^a)' = a x^{a-1} $$

*Step-by-Step Proof:*
We can rewrite any base $x$ using $e$ and natural log, since they cancel each other out: $x = e^{\ln x}$. Therefore, $x^a = (e^{\ln x})^a = e^{a \ln x}$.
Now we just use the Chain Rule:
$$ (x^a)' = \left( e^{a \ln x} \right)' $$
The derivative of $e^{\text{something}}$ is just $e^{\text{something}}$, multiplied by the derivative of the "something".
$$ = e^{a \ln x} \cdot (a \ln x)' $$
We know $(a \ln x)' = a \cdot \frac{1}{x}$. Also, remember that $e^{a \ln x}$ is just $x^a$.
$$ = x^a \cdot \frac{a}{x} = a x^{a-1}. \ \blacksquare $$

**Example: A Function with Variables in Both Base and Exponent**
Let us differentiate $f(x) = x^x$ for $x > 0$. We can't use the power rule (because the exponent isn't constant), and we can't use the exponential rule (because the base isn't constant).
The trick is to rewrite it using $e$ just like we did above: $f(x) = e^{x \ln x}$.
Now we apply the Chain Rule and the Product Rule:
$$ (x^x)' = \left( e^{x \ln x} \right)' = e^{x \ln x} \cdot (x \ln x)' $$
Using the product rule for $(x \ln x)'$:
$$ (x \ln x)' = (x)'(\ln x) + (x)(\ln x)' = (1)(\ln x) + (x)\left(\frac{1}{x}\right) = \ln x + 1 $$
Putting it all together (and converting $e^{x \ln x}$ back to $x^x$):
$$ (x^x)' = x^x (\ln x + 1). $$
A beautiful and surprisingly neat result!

### 22.5 Exercises
1. Follow the steps of the tangent proof to prove that $(\cot x)' = -1/\sin^2 x$.
2. Compute the derivative of the inverse hyperbolic sine, $f(x) = \text{arsh } x = \ln(x + \sqrt{x^2+1})$. (Hint: Use the chain rule carefully!)
3. Find the derivative of $x^{\sin x}$ for $x > 0$. (Hint: Rewrite the base using $e^{\ln x}$).
4. Calculate $\lim_{x \to \infty} x(\ln(x+1) - \ln x)$. (Hint: Use log properties to combine them, then think about $e$).

---


---

## Chapter 23: Applications of the Derivative

Now that we know how to calculate derivatives, what can we actually do with them? It turns out the derivative is like an X-ray machine for functions. By simply looking at the derivative, we can deduce the hidden shape, trends, peaks, and valleys of the original function. 

In this chapter, we will learn how to connect the "local" behavior of a function (what happens exactly at a specific point) to its "global" behavior (what the function looks like over a large interval). 

### 23.1 Local Monotonicity and Extrema

Before we look at large intervals, let's zoom in very close to a single point. 

**Definition (Local Monotonicity).** 
Imagine standing on a specific point $a$ on the graph of a function. We say a function $f$ is *locally increasing* (or *lokálisan növekvő* in Hungarian) at the point $a$ if you can draw a tiny bubble (a neighborhood of radius $\delta > 0$) around $a$ where:
- Everything slightly to the left of $a$ is lower than or equal to $f(a)$ (so $f(x) \le f(a)$ for $x < a$).
- Everything slightly to the right of $a$ is higher than or equal to $f(a)$ (so $f(a) \le f(x)$ for $x > a$).
If the inequalities are strict (no "or equal to", just strictly $<$ and $>$), we say $f$ is *strictly locally increasing* (*szigorúan lokálisan növekvő*). Local decreasing is defined in the exact opposite way.

*Intuitive Commentary:*
Being "locally increasing" just means that if you zoom in close enough to $a$, the function looks like it's generally going uphill as you move from left to right through that specific point. 

*Cautionary Remark:* 
You might assume that if a function is locally increasing at $0$, it must be going uphill in a smooth, normal way near $0$. But math can be weird! Consider this monstrous function:
$$ f(x) = \begin{cases} x \sin^2(1/x), & x \neq 0 \\ 0, & x = 0 \end{cases} $$
Because $\sin^2$ is always between $0$ and $1$, the value of $f(x)$ is positive for $x > 0$ and negative for $x < 0$. This perfectly satisfies our definition of being locally increasing at $0$. However, because $\sin^2(1/x)$ oscillates infinitely fast near $0$, the graph is violently vibrating up and down. It isn't monotonically increasing on *any* actual interval around $0$, no matter how tiny! It just happens to pass through $0$ on an upward trend compared to the immediate sides. 

**Theorem (Fermat's Theorem and Monotonicity).** 
Suppose a function $f$ has a derivative at a point $a$. The slope of the tangent line tells us a lot:
1. If $f$ is locally increasing at $a$, then the slope must be pointing upwards or be flat: $f'(a) \ge 0$.
2. If $f$ is locally decreasing at $a$, then the slope must be pointing downwards or be flat: $f'(a) \le 0$.
3. If $f$ has a local extremum (a local peak or valley) at $a$, then the tangent line must be perfectly horizontal: $f'(a) = 0$.

*Step-by-Step Proof:*
Let's prove part 1 (the others follow similar logic). 
1. If $f$ is locally increasing, we know that for points $x$ just to the right of $a$ (so $x > a$), we have $f(x) \ge f(a)$.
2. The difference quotient (which measures average slope) is $\frac{f(x)-f(a)}{x-a}$. 
3. Since $f(x) \ge f(a)$, the numerator is positive or zero. Since $x > a$, the denominator is positive. A positive divided by a positive is positive. Thus, the fraction is $\ge 0$.
4. The derivative $f'(a)$ is the limit of this fraction as $x$ approaches $a$. By the laws of limits, the limit of something that is always $\ge 0$ must also be $\ge 0$. So, $f'(a) \ge 0$.
For part 3 (a local extremum), imagine a peak. On the left, it's acting like it's increasing, so the slope must be $\ge 0$. On the right, it's acting like it's decreasing, so the slope must be $\le 0$. The only number that is both $\ge 0$ and $\le 0$ is exactly $0$. $\blacksquare$

What if we know the derivative is strictly positive? Can we go backward and say the function is increasing? Yes!

**Theorem.** 
If a function $f$ has a derivative at $a$ and $f'(a) > 0$, then $f$ is strictly locally increasing at $a$.

*Step-by-Step Proof:*
1. The derivative is the limit: $f'(a) = \lim_{x \to a} \frac{f(x)-f(a)}{x-a} > 0$.
2. If the limit of a fraction is strictly positive, the fraction itself must be strictly positive if we stay close enough to $a$ (excluding $a$ itself, where it's undefined). Let's call this tiny neighborhood $\dot{B}(a, \delta)$.
3. In this neighborhood, $\frac{f(x)-f(a)}{x-a} > 0$. 
4. If we pick an $x$ to the right of $a$ ($x > a$), the bottom $x-a$ is positive. For the fraction to be positive, the top must also be positive: $f(x) - f(a) > 0$, which means $f(x) > f(a)$.
5. If we pick an $x$ to the left of $a$ ($x < a$), the bottom $x-a$ is negative. For the fraction to be positive, the top must also be negative: $f(x) - f(a) < 0$, which means $f(x) < f(a)$.
6. This matches the exact definition of strictly locally increasing! $\blacksquare$

*A Quick Warning:* The reverse is NOT always true. A function can be strictly locally increasing, but its derivative might still be $0$. Think of $f(x) = x^3$ at $x=0$. It's definitely always going uphill, but it briefly flattens out to a slope of $0$ right at the origin.

### 23.2 Mean Value Theorems (Középérték tételek)

These are arguably the most important theoretical tools in all of calculus. They are the bridge that connects the derivative at a single point to the overall change of the function over a large interval. 

**Theorem (Rolle's Theorem).** 
Imagine drawing a continuous curve between two points that are at the exact same height on the y-axis, say $f(a) = f(b)$. If the curve is smooth (differentiable) in between them, there must be at least one point $c$ in the middle where the tangent line is perfectly horizontal ($f'(c) = 0$).

*Intuitive Commentary:*
Think of driving a car. If you start at mile marker 10, drive around for an hour, and finish exactly back at mile marker 10, then at some point during your trip, you must have stopped going forward and started going backward (or vice versa). At that exact turnaround moment, your velocity (derivative) was exactly zero. 

*Step-by-Step Proof:*
1. **The Boring Case:** If the function is a flat, constant horizontal line, then the slope is $0$ everywhere. Pick any point $c$; it works!
2. **The Interesting Case:** The function goes up or down. Let's say it goes up, so it takes on values greater than the endpoints.
3. Because the function is continuous on a closed interval $[a,b]$, the Extreme Value Theorem guarantees that it must reach a highest point (an absolute maximum) somewhere. Let's call the $x$-coordinate of this peak $c$.
4. Because the function goes higher than the endpoints, this peak $c$ cannot be $a$ or $b$. It must be strictly inside the interval, so $c \in (a,b)$.
5. Since $c$ is a local maximum inside the interval, Fermat's Theorem (from the previous section) swoops in and guarantees that the derivative there is zero: $f'(c) = 0$. $\blacksquare$

We can tilt Rolle's Theorem to make it even more powerful.

**Theorem (Lagrange's Mean Value Theorem).** 
If $f$ is continuous on a closed interval $[a,b]$ and smooth (differentiable) on the open interval $(a,b)$, then there is at least one point $c$ inside where the instantaneous slope matches the average slope:
$$ f'(c) = \frac{f(b) - f(a)}{b - a} $$

*Intuitive Commentary:*
Back to the car analogy: if you drive 60 miles in 1 hour, your average speed is 60 mph. Lagrange's theorem guarantees that at some exact split-second during your trip, your speedometer must have read exactly 60 mph. Geometrically, the secant line connecting the start and end points is parallel to the tangent line at some point $c$.

*Step-by-Step Proof:*
We will mathematically "tilt" the function so we can just use Rolle's Theorem!
1. The equation of the secant line connecting the start point $(a, f(a))$ to the end point $(b, f(b))$ is $y = f(a) + \frac{f(b) - f(a)}{b - a} (x - a)$.
2. Let's define a new function $g(x)$ that measures the vertical distance between our function $f(x)$ and this secant line:
   $$ g(x) = f(x) - \left[ f(a) + \frac{f(b) - f(a)}{b - a}(x - a) \right] $$
   To simplify taking derivatives later, let's just write:
   $$ g(x) = f(x) - \frac{f(b) - f(a)}{b - a}x + \text{constants} $$
3. Let's check the endpoints of $g(x)$. At $x=a$, the function and the secant line touch, so the distance $g(a) = 0$. At $x=b$, they touch again, so $g(b) = 0$. 
4. Perfect! Since $g(a) = g(b) = 0$, we can apply Rolle's Theorem to $g(x)$. This means there must be some point $c$ where $g'(c) = 0$.
5. Let's find $g'(x)$. The derivative of the $f(x)$ part is $f'(x)$. The derivative of the line part is just its slope. The constants disappear.
   $$ g'(x) = f'(x) - \frac{f(b) - f(a)}{b - a} $$
6. Plugging in $c$ and setting it to $0$:
   $$ 0 = f'(c) - \frac{f(b) - f(a)}{b - a} \implies f'(c) = \frac{f(b) - f(a)}{b - a} $$
   And we are done! $\blacksquare$

Cauchy generalized this even further for parametric equations (curves defined by $x=g(t)$ and $y=f(t)$).

**Theorem (Cauchy's Mean Value Theorem).** 
Let $f$ and $g$ be continuous on $[a,b]$ and differentiable on $(a,b)$. If $g'(x)$ is never zero inside the interval, then there exists a $c \in (a,b)$ such that:
$$ \frac{f'(c)}{g'(c)} = \frac{f(b) - f(a)}{g(b) - g(a)} $$

*Step-by-Step Proof:*
1. First, we must ensure the denominator on the right isn't zero. If $g(a)$ equaled $g(b)$, Rolle's Theorem would force $g'(x) = 0$ somewhere, which violates our rule that $g'(x) \neq 0$. Thus, $g(a) \neq g(b)$.
2. We create another clever measuring function, very similar to Lagrange's, but scaling by $g$ instead of $x$:
   $$ h(x) = f(x) - \frac{f(b) - f(a)}{g(b) - g(a)} (g(x) - g(a)) $$
3. If you plug in $x=a$, the second term becomes $0$, so $h(a) = f(a)$.
4. If you plug in $x=b$, the fraction cancels out with $(g(b)-g(a))$, leaving $f(x) - (f(b) - f(a))$, which means $h(b) = f(a)$.
5. Since $h(a) = h(b)$, we invoke Rolle's Theorem! There must be a $c$ where $h'(c) = 0$.
6. Taking the derivative of $h(x)$ yields:
   $$ h'(x) = f'(x) - \frac{f(b) - f(a)}{g(b) - g(a)} g'(x) $$
7. Setting $h'(c) = 0$ and dividing by $g'(c)$ gives exactly Cauchy's formula. $\blacksquare$

### 23.3 The Darboux Property of the Derivative

Here is a mind-bending fact about derivatives. 

**Definition (Darboux Property).** 
A function has the "Darboux property" (also known as the Intermediate Value Property) if it never "skips" values. If the function equals $2$ at one spot and $10$ at another spot, it must hit every single number between $2$ and $10$ somewhere in between. 
We know continuous functions do this naturally (think of drawing a line without lifting your pen). But what if a function is NOT continuous? Can it still have this property? Yes—derivatives have it, even when they are broken and discontinuous!

**Theorem (Darboux's Theorem).** 
If a function $f$ is differentiable everywhere on an interval $[a,b]$, then its derivative $f'$ takes on every possible value between the slope at $a$, $f'(a)$, and the slope at $b$, $f'(b)$. 

*Intuitive Commentary:*
This means a derivative function can't suddenly jump from a slope of $-1$ to $+1$ without passing through a slope of $0$. It transitions through every intermediate slope, no matter how weird the function is.

*Step-by-Step Proof:*
1. Suppose the starting slope $f'(a)$ is small, and the ending slope $f'(b)$ is large. Pick any target slope $d$ between them, so $f'(a) < d < f'(b)$. We want to prove there is a point $c$ where the slope is exactly $d$.
2. Let's create a tilted function: $g(x) = f(x) - dx$. The derivative is $g'(x) = f'(x) - d$.
3. At the start, $g'(a) = f'(a) - d < 0$. Since the slope is negative, the function $g(x)$ is going downhill right as it leaves $a$. So, the lowest point of $g(x)$ cannot be $a$.
4. At the end, $g'(b) = f'(b) - d > 0$. Since the slope is positive, the function $g(x)$ is going uphill right as it arrives at $b$. So, the lowest point cannot be $b$ either.
5. Because $f$ is differentiable, it is continuous. $g$ is also continuous on the closed interval $[a,b]$. The Extreme Value Theorem guarantees $g$ has an absolute minimum somewhere.
6. Since we proved the minimum isn't at $a$ or $b$, it must be at some interior point $c$. 
7. By Fermat's Theorem, at this interior minimum $c$, the derivative must be zero! So $g'(c) = 0$.
8. Since $g'(c) = f'(c) - d = 0$, we have found that $f'(c) = d$. We hit the target slope! $\blacksquare$

*A Fascinating Consequence:* The step function (which is $-1$ for negative numbers, and $+1$ for positive numbers) can never be the derivative of any function. Why? Because it jumps from $-1$ to $1$ and completely skips $0$. Darboux's Theorem says true derivatives don't do that.

### 23.4 Monotonicity Conditions

Now for the grand finale of the chapter. We will use the Mean Value Theorem to create a foolproof test to see if a function is increasing or decreasing over an entire interval, not just locally!

**Theorem (Monotonicity Test).** 
Let $f$ be continuous on $[a,b]$ and differentiable on $(a,b)$.
1. The function $f$ is monotonically increasing across the whole interval if and only if $f'(x) \ge 0$ everywhere inside.
2. If $f'(x) = 0$ everywhere inside, then $f$ is perfectly flat—a constant function.
3. If $f'(x) > 0$ strictly everywhere inside, then $f$ is strictly monotonically increasing across the whole interval.

*Intuitive Commentary:*
This makes perfect physical sense. If your speed is always positive (even if you slow down to zero for a millisecond), your total distance traveled will always increase.

*Step-by-Step Proof:*
1. **Part 1 (If derivative is positive, function goes up):** 
   Take any two points $x_1$ and $x_2$ where $x_1 < x_2$. We want to prove $f(x_2) \ge f(x_1)$.
   We apply Lagrange's Mean Value Theorem on the chunk between $x_1$ and $x_2$. It says there is a $c$ in between where:
   $$ f(x_2) - f(x_1) = f'(c)(x_2 - x_1) $$
   We know $f'(c) \ge 0$ (because the derivative is $\ge 0$ everywhere). We also know $x_2 - x_1 > 0$. A positive times a positive is positive!
   So $f(x_2) - f(x_1) \ge 0$, meaning the function went up.
2. **Part 1 (Reverse: If function goes up, derivative is positive):**
   If a function always goes up, it is locally increasing at every point. By Fermat's Theorem, the derivative at every point must be $\ge 0$.
3. **Part 2 (Zero derivative means constant):**
   If $f'(x) = 0$ everywhere, then it is $\ge 0$ (so the function is increasing) AND it is $\le 0$ (so the function is decreasing). The only way a function can go both up and down at the same time is if it doesn't move at all. It must be constant.
4. **Part 3 (Strictly positive derivative):**
   The logic is identical to the first half of Part 1. Since $f'(c)$ is strictly $>0$, the result $f(x_2) - f(x_1)$ is strictly $>0$. The function is strictly increasing. $\blacksquare$

*A Nuanced Detail:* The reverse of Part 3 is false! The function $f(x) = x^3$ is strictly increasing forever. However, its derivative is $f'(x) = 3x^2$, which becomes exactly $0$ at the origin. A strictly increasing function is allowed to have a derivative of zero, as long as it doesn't stay flat on an entire stretch (an interval). 

### 23.5 Exercises
1. Show that $f(x) = x - \sin x$ is strictly increasing everywhere. (Hint: Take the derivative and think about the maximum value of cosine).
2. Verify Rolle's Theorem works for the parabola $f(x) = x^2 - 3x + 2$ on the interval $[1, 2]$. (Find where $f(x)=0$, then find where the derivative is $0$).
3. Prove that the polynomial equation $x^5 + 10x + 3 = 0$ has exactly one real root. (Hint: Use the Intermediate Value Theorem to show it has *at least* one root, then assume it has two roots and use Rolle's Theorem to show a contradiction).
4. Use Lagrange's Mean Value Theorem to prove the famous inequality $\ln(1+x) < x$ for all $x > 0$. (Hint: apply the theorem to $f(t) = \ln(1+t)$ on the interval $[0, x]$).

---


---

## Chapter 24: Extreme Value Problems and Higher Derivatives

In this chapter, we get to the most satisfying part of calculus: optimization. Finding the best, the biggest, the cheapest, or the fastest. These are known as extreme value problems (in Hungarian, *szélsőérték-feladatok*). After solving these, we will explore what happens when you take the derivative of a derivative, creating higher-order tools to help us analyze curves.

### Extreme Value Problems (*Szélsőérték-feladatok*)

When you want to find the absolute maximum or minimum of a function in the real world, you are looking for the absolute highest or lowest point on its graph. Thanks to Fermat's Theorem, we know that peaks and valleys usually happen where the derivative (the slope) is zero. We call these spots "critical points."

Let's dive straight into a classic geometric puzzle.

**Example 1: The Largest Cylinder in a Sphere**
Imagine a perfect glass sphere with a radius of $1$. You want to fit a solid cylinder inside it so that the corners of the cylinder just touch the inside of the sphere. Out of all the possible cylinders (short and wide, or tall and skinny), which one has the largest volume?

*Step-by-Step Solution:*
1. **Set up the geometry:** Let the sphere have radius $R=1$. Let the cylinder have a radius $r$ and a total height of $2h$ (so it extends a height of $h$ above the center, and $h$ below).
2. **Find the constraint:** If you slice this in half and look at it from the side, you see a right triangle formed by the sphere's radius (hypotenuse 1), the cylinder's radius $r$, and the half-height $h$. By the Pythagorean theorem, $h^2 + r^2 = 1$. This means $r^2 = 1 - h^2$.
3. **Build the formula:** The volume of any cylinder is $V = \text{base area} \times \text{height} = \pi r^2 (2h)$. We want everything in terms of one variable, $h$. Let's swap out the $r^2$:
   $$V(h) = \pi (1 - h^2) (2h) = 2\pi h - 2\pi h^3$$
4. **Determine the limits:** The half-height $h$ can't be less than $0$, and it can't be more than the sphere's radius $1$. So $h$ must be in the closed interval $[0, 1]$.
5. **Take the derivative:** To find the peak volume, we look for where the rate of change is zero. 
   $$V'(h) = 2\pi - 6\pi h^2 = 2\pi (1 - 3h^2)$$
6. **Find the critical points:** Set $V'(h) = 0$. This gives $1 - 3h^2 = 0 \implies 3h^2 = 1 \implies h^2 = 1/3$. The positive solution is $h = \frac{1}{\sqrt{3}}$.
7. **Check all contenders:** To find the absolute maximum, we must check the interior critical point AND the boundary edges!
   - At $h = 0$ (a flat disc), Volume $= 0$.
   - At $h = 1$ (a stick with zero radius), Volume $= 0$.
   - At $h = \frac{1}{\sqrt{3}}$, the Volume is $2\pi \left(\frac{1}{\sqrt{3}}\right) - 2\pi \left(\frac{1}{\sqrt{3}}\right)^3 = \frac{4\pi}{3\sqrt{3}}$.
   Since this is the only positive answer, it must be our absolute maximum!

This logic gives us a universal rule for finding extreme values on a restricted domain.

**Theorem (Absolute Extrema on Closed Intervals).** 
If you have a continuous function on a closed interval $[a,b]$, and you want to find the absolute highest or lowest value, you only need to check a specific list of suspects:
1. Every interior point where the derivative is zero (the critical points $x_1, x_2, \dots, x_n$).
2. The starting boundary $a$.
3. The ending boundary $b$.
Just calculate the function at all these points. The biggest number is your absolute maximum, and the smallest is your absolute minimum. 
*Always remember to check the endpoints! Ignoring them is the most common mistake in calculus.*

**Example 2: The Danger of Endpoints**
Find the highest and lowest values of $f(h) = h - h^3$ on the interval $[-10, 10]$.
*Solution:* 
1. The derivative is $f'(h) = 1 - 3h^2$. Setting it to zero gives critical points $h = \frac{1}{\sqrt{3}}$ and $h = -\frac{1}{\sqrt{3}}$.
2. Let's evaluate the function at the critical points:
   $f(1/\sqrt{3}) \approx 0.38$ (a small peak)
   $f(-1/\sqrt{3}) \approx -0.38$ (a small valley)
3. Now evaluate the endpoints!
   $f(10) = 10 - 1000 = -990$
   $f(-10) = -10 - (-1000) = 990$
The absolute maximum is $990$ (at the boundary $h=-10$), and the absolute minimum is $-990$ (at the boundary $h=10$). The little peak and valley in the middle were totally meaningless compared to the extreme behavior at the edges!

What if your interval goes on forever, like $[0, \infty)$? You can't check an endpoint at infinity. Instead, you must check the *limit* as the variable goes to infinity. If the limit shoots up to $\infty$, the function has no absolute maximum.

### How to Tell a Peak from a Valley

If you find a point where the slope is zero, how do you know if it's the top of a hill or the bottom of a bowl? 

**Theorem (First Derivative Test).** 
Suppose the derivative $f'(x) = 0$ at a point $a$. Look at the slope slightly to the left and slightly to the right.
1. **Minimum:** If the slope is negative on the left (going downhill) and positive on the right (going uphill), you are at the bottom of a valley. You have a local minimum.
2. **Maximum:** If the slope is positive on the left (going uphill) and negative on the right (going downhill), you are at the top of a hill. You have a local maximum.

### Higher Derivatives (*Magasabb rendű deriváltak*)

What if we take the derivative of a derivative? A derivative measures the rate of change. So the second derivative measures the *rate of change of the rate of change*. In physics, if the function is your position, the first derivative is your speed, and the second derivative is your acceleration!

If we differentiate $f(x)$ twice, we call it the second derivative, written as $f''(x)$ or $\frac{d^2f}{dx^2}$. We can keep going to the third derivative $f'''(x)$, or the $k$-th derivative $f^{(k)}(x)$.

**Example 4: Endless Derivatives of a Polynomial**
Let $f(x) = x^3$. Let's keep differentiating:
1st derivative: $f'(x) = 3x^2$
2nd derivative: $f''(x) = 6x$
3rd derivative: $f'''(x) = 6$
4th derivative: $f^{(4)}(x) = 0$
For any polynomial, if you take enough derivatives, it eventually grinds down to zero. 

The second derivative is incredibly useful for optimization. It tells us how the graph is curving. If the second derivative is positive, the slopes are increasing (like going from negative, to zero, to positive), which means the graph looks like a smile ($\cup$). If the second derivative is negative, the graph looks like a frown ($\cap$).

**Theorem (Second Derivative Test).** 
If you find a critical point where $f'(a) = 0$, you can just check the second derivative at that spot to see if it's a peak or a valley!
1. If $f''(a) > 0$ (smiling), the point is a local minimum.
2. If $f''(a) < 0$ (frowning), the point is a local maximum.

*Intuitive Commentary:*
This is much faster than the First Derivative Test because you don't have to test numbers to the left and right; you just plug the point itself into the second derivative equation! 

*Warning:* What if $f''(a) = 0$? The test fails! It is inconclusive. The graph is too flat to tell. For example, $y = x^3$, $y = x^4$, and $y = -x^4$ all have $f'(0)=0$ and $f''(0)=0$. Yet $x^3$ has no peak/valley, $x^4$ has a minimum, and $-x^4$ has a maximum. You have to go back to the First Derivative Test.

### Leibniz's Rule

You know the product rule for first derivatives: $(fg)' = f'g + fg'$. But what if you need the 10th derivative of two functions multiplied together? You wouldn't want to apply the product rule 10 times manually. Gottfried Wilhelm Leibniz discovered a pattern that looks exactly like the Binomial Theorem.

**Theorem (Leibniz's Rule).** 
To find the $n$-th derivative of a product of two functions, $f \cdot g$, you can use this formula:
$$ (f \cdot g)^{(n)} = \sum_{k=0}^{n} \binom{n}{k} f^{(k)} g^{(n-k)} $$
*(Note: $f^{(0)}$ just means the original function $f$ with zero derivatives taken. And $\binom{n}{k}$ are the binomial coefficients from Pascal's triangle).*

*Step-by-Step Proof:*
We prove this using mathematical induction.
1. **Base Case ($n=1$):** 
   According to the formula for $n=1$, we should get: 
   $\binom{1}{0} f^{(0)}g^{(1)} + \binom{1}{1} f^{(1)}g^{(0)} = 1 \cdot f \cdot g' + 1 \cdot f' \cdot g = fg' + f'g$. 
   This perfectly matches the standard product rule!
2. **Inductive Step:** We assume the formula works perfectly for the $n$-th derivative. We need to prove it works for the $(n+1)$-th derivative.
   To get the $(n+1)$-th derivative, we take the derivative of our big summation formula:
   $$ (f \cdot g)^{(n+1)} = \left( \sum_{k=0}^{n} \binom{n}{k} f^{(k)} g^{(n-k)} \right)' $$
3. When we apply the standard product rule to every single item inside that sum, each term splits into two:
   $$ = \sum_{k=0}^{n} \binom{n}{k} \left[ f^{(k+1)} g^{(n-k)} + f^{(k)} g^{(n+1-k)} \right] $$
4. If you write out all these terms and shift them around to group matching derivatives together, their coefficients add up. Specifically, the coefficients will look like $\binom{n}{k-1} + \binom{n}{k}$. 
5. By Pascal's identity (the rule that builds Pascal's triangle), adding two adjacent numbers in one row gives the number in the row below it: $\binom{n}{k-1} + \binom{n}{k} = \binom{n+1}{k}$. 
6. Plugging this newly combined coefficient back in gives us the exact Leibniz formula for $n+1$. The pattern is proven! $\blacksquare$

### Exercises
1. Find the dimensions of the rectangle of maximum area that can be inscribed inside a circle of radius $R$. (Hint: Set up the center at $(0,0)$, let a corner be $(x,y)$, so area is $(2x)(2y)$. Use $x^2 + y^2 = R^2$ to substitute).
2. Prove that if a function is super flat, such that $f'(a) = f''(a) = f'''(a) = 0$, but the 4th derivative $f^{(4)}(a)$ is strictly positive, then $a$ is a local minimum.
3. Compute the 10th derivative of $f(x) = x^2 e^x$ using Leibniz's rule. (Hint: let $g(x) = x^2$ and notice that its derivatives go to zero very quickly, so most of the terms in the sum will just disappear!)

---


---

## Chapter 25: Convexity, Inflexion Points, and Function Analysis

When we study the shape of a curve, knowing where it goes up or down (increasing or decreasing) is just half the battle. Imagine driving a car on a winding road: the speedometer tells you how fast you're going forward, but the steering wheel tells you how the road curves. In mathematics, this "steering" is what we call **curvature** or **convexity**. 

### Convexity (*Konvexitás*)

A function is **convex** (often called "concave up" in some textbooks) if it bends upwards, like a smiling face or a bowl that can hold water. A function is **concave** (or "concave down") if it bends downwards, like a frowning face or an umbrella.

Before we dive into the math, here is a simple intuition: if a curve is convex, its slope keeps getting steeper (increasing) as you move from left to right. Think of climbing a hill that gets steeper and steeper. 

Let's formalize this with a theorem.

**Theorem.** Let $f$ be a differentiable function (meaning it has a derivative, $f'$, everywhere) on an interval $I$.
1. $f$ is convex on $I$ if and only if its derivative $f'$ is monotonically increasing on $I$. (The slope keeps going up).
2. $f$ is strictly convex on $I$ if and only if $f'$ is strictly monotonically increasing on $I$. (The slope is always strictly going up, never staying flat).

The same logic applies to concave functions: $f$ is concave (respectively, strictly concave) if and only if $f'$ is monotonically decreasing (respectively, strictly decreasing).

#### Let's Prove It!
*Proof of the convex case.* We will split this into two parts. First, we'll show that if a function is convex, its derivative is increasing. Then, we'll show the reverse.

**Part 1: If $f$ is convex, then $f'$ is increasing. ($\Rightarrow$)**
Assume $f$ is convex on our interval $I$. Pick any two points $a$ and $b$ in $I$ where $a < b$. The geometric definition of convexity tells us that the secant line connecting any two points on the curve lies *above* the curve. 

Because of this, if we look at the average rate of change (the slope of the secant line) starting from $a$, it must increase as we stretch the line further to the right. 
For a point $x$ between $a$ and $b$ (so $x < b$ and $x \neq a$), the slope from $a$ to $x$ is less than or equal to the slope from $a$ to $b$:
$$ \frac{f(x)-f(a)}{x-a} \le \frac{f(b)-f(a)}{b-a} $$

Now, what happens if we slide $x$ closer and closer to $a$? The average rate of change becomes the instantaneous rate of change—the derivative at $a$, $f'(a)$. 
Taking the limit as $x \to a$, we get:
$$ f'(a) \le \frac{f(b)-f(a)}{b-a} $$

Similarly, if we look at the average rate of change from $b$ going backward to a point $x$ (where $x > a$ and $x \neq b$), convexity tells us the slope of the smaller segment must be steeper or equal:
$$ \frac{f(b)-f(a)}{b-a} \le \frac{f(x)-f(b)}{x-b} $$
Taking the limit as $x \to b$, the right side becomes the derivative at $b$:
$$ \frac{f(b)-f(a)}{b-a} \le f'(b) $$

Combining these two inequalities, we see that $f'(a) \le f'(b)$. Since $a < b$, this means the derivative $f'$ is monotonically increasing!

**Part 2: If $f'$ is increasing, then $f$ is convex. ($\Leftarrow$)**
Now let's go the other way. Assume the slope $f'$ is monotonically increasing. Pick two points $a < b$ in $I$, and pick any point $x$ strictly between them, so $a < x < b$. 

We want to show that the curve lies below the straight secant line connecting $(a, f(a))$ and $(b, f(b))$. To do this, we use a trusty tool: the **Lagrange Mean Value Theorem**. This theorem says that between any two points on a smooth curve, there's at least one point where the instantaneous slope (the derivative) perfectly matches the average slope (the secant line).

Applying this theorem to the interval $[a, x]$, there is some point $u$ between $a$ and $x$ where:
$$ f'(u) = \frac{f(x)-f(a)}{x-a} $$

Applying it again to the interval $[x, b]$, there is some point $v$ between $x$ and $b$ where:
$$ f'(v) = \frac{f(b)-f(x)}{b-x} $$

Since $u$ is to the left of $x$ and $v$ is to the right of $x$, we know $u < v$. Our starting assumption was that $f'$ is increasing, so the derivative at $u$ must be less than or equal to the derivative at $v$:
$$ f'(u) \le f'(v) $$

Substitute our fraction forms back into this inequality:
$$ \frac{f(x)-f(a)}{x-a} \le \frac{f(b)-f(x)}{b-x} $$

Now, let's do some algebra to clean this up. Cross-multiply by $(x-a)(b-x)$, which we know is positive because $x$ is strictly between $a$ and $b$:
$$ (f(x)-f(a))(b-x) \le (f(b)-f(x))(x-a) $$
$$ f(x)(b-x) - f(a)(b-x) \le f(b)(x-a) - f(x)(x-a) $$

Group the $f(x)$ terms together on the left side:
$$ f(x)(b-x) + f(x)(x-a) \le f(a)(b-x) + f(b)(x-a) $$
$$ f(x)(b-x + x-a) \le f(a)(b-x) + f(b)(x-a) $$
$$ f(x)(b-a) \le f(a)(b-x) + f(b)(x-a) $$

Divide by the positive number $(b-a)$:
$$ f(x) \le f(a)\frac{b-x}{b-a} + f(b)\frac{x-a}{b-a} $$
We can rewrite this in a more recognizable form:
$$ f(x) \le f(a) + \frac{f(b)-f(a)}{b-a}(x-a) $$

This is precisely the algebraic definition of convexity! It means that the value of the function at $x$ is less than or equal to the value of the straight line connecting $a$ and $b$ evaluated at that same $x$. Thus, $f$ is convex.

#### The Second Derivative Test for Convexity

Since convexity is all about whether the first derivative $f'$ is increasing or decreasing, we can use the **second derivative** $f''$ to make our lives incredibly easy. The second derivative is just the derivative of the derivative—it tells us the rate of change of the slope itself.

**Theorem.** Let $f$ be twice differentiable on $I$ (meaning $f''$ exists).
- $f$ is convex $\iff f'' \ge 0$. (The slope is increasing).
- $f$ is concave $\iff f'' \le 0$. (The slope is decreasing).
- If $f'' > 0$ strictly for all points in the interval, then $f$ is strictly convex.
- If $f'' < 0$ strictly for all points in the interval, then $f$ is strictly concave.

*Remark.* Strict convexity doesn't guarantee that $f'' > 0$ strictly everywhere. For example, think about $f(x) = x^4$. It's a nice, U-shaped bowl, so it's strictly convex. But at $x = 0$, its second derivative is $12(0)^2 = 0$. The slope momentarily stops changing at zero, but it never actually decreases, so the curve is still strictly convex.

**Example 1.** Let $f(x) = \sin x$. The first derivative is $\cos x$, and the second derivative is $f''(x) = -\sin x$. 
- Between $0$ and $\pi$, $\sin x$ is positive, so $f''(x) \le 0$. This means $\sin x$ is strictly concave (an umbrella shape) on $[0, \pi]$.
- Between $\pi$ and $2\pi$, $\sin x$ is negative, so $f''(x) \ge 0$. This means $\sin x$ is strictly convex (a bowl shape) on $[\pi, 2\pi]$.

**Example 2.** Let $f(x) = \log x$ (the natural logarithm). The first derivative is $1/x$, and the second derivative is $f''(x) = -1/x^2$. Since $x^2$ is always positive for $x > 0$, $-1/x^2$ is always negative. Thus, $\log x$ is strictly concave on $(0, \infty)$.

### Inequalities via Convexity

Convexity isn't just useful for drawing graphs; it's a superpower for proving inequalities. One of the most famous results is **Jensen's Inequality**, which essentially says that for a concave function like the logarithm, evaluating the function on an average gives a larger result than averaging the function's values.

Because $\log x$ is concave, we can plug in a weighted average. Let $p$ and $q$ be positive numbers such that $\frac{1}{p} + \frac{1}{q} = 1$ (for example, $p=2, q=2$ or $p=3, q=1.5$). Let $a, b > 0$.
Jensen's inequality gives us:
$$ \log\left( \frac{1}{p}a^p + \frac{1}{q}b^q \right) \ge \frac{1}{p}\log(a^p) + \frac{1}{q}\log(b^q) $$

By the rules of logarithms, $\frac{1}{p}\log(a^p) = \frac{1}{p} \cdot p \log a = \log a$. So the right side simplifies beautifully:
$$ \frac{1}{p}\log(a^p) + \frac{1}{q}\log(b^q) = \log a + \log b = \log(ab) $$

So we have:
$$ \log\left( \frac{1}{p}a^p + \frac{1}{q}b^q \right) \ge \log(ab) $$

Since the exponential function $e^x$ is strictly increasing, applying it to both sides preserves the inequality direction. This gives us **Young's inequality**:

**Theorem (Young's Inequality).** If $a, b, p, q > 0$ and $\frac{1}{p} + \frac{1}{q} = 1$, then:
$$ ab \le \frac{a^p}{p} + \frac{b^q}{q} $$
*Intuition:* This limits the product $ab$ based on a mix of their individual powers. If $p=2$ and $q=2$, this is just $ab \le \frac{a^2}{2} + \frac{b^2}{2}$, which is algebraically equivalent to $0 \le (a-b)^2$.

Using Young's Inequality, we can build something even bigger:

**Theorem (Hölder's Inequality).** Let $p, q > 0$ with $1/p + 1/q = 1$. For any sequences of non-negative numbers $a_1, a_2, \dots, a_n$ and $b_1, b_2, \dots, b_n$, we have:
$$ \sum_{k=1}^n a_k b_k \le \left( \sum_{k=1}^n a_k^p \right)^{1/p} \left( \sum_{k=1}^n b_k^q \right)^{1/q} $$
*Intuition:* This limits how large the sum of multiplied pairs can be, bounded by the total sizes of the individual sequences.

*Proof.* Let's define the total "size" of our $a$ and $b$ sequences using the terms on the right side:
$A = \left(\sum_{k=1}^n a_k^p\right)^{1/p}$ and $B = \left(\sum_{k=1}^n b_k^q\right)^{1/q}$. 
If $A=0$ or $B=0$, all the elements in that sequence are zero, and the inequality is trivially $0 \le 0$. So we assume $A > 0$ and $B > 0$.

We want to show that $\sum (a_k b_k) \le AB$. Let's divide by $AB$ and show the result is $\le 1$.
Apply Young's inequality to the normalized values $\frac{a_k}{A}$ and $\frac{b_k}{B}$:
$$ \frac{a_k b_k}{AB} \le \frac{1}{p}\frac{a_k^p}{A^p} + \frac{1}{q}\frac{b_k^q}{B^q} $$

Now, sum this up for all $k$ from $1$ to $n$:
$$ \frac{1}{AB} \sum_{k=1}^n a_k b_k \le \frac{1}{p} \frac{\sum_{k=1}^n a_k^p}{A^p} + \frac{1}{q} \frac{\sum_{k=1}^n b_k^q}{B^q} $$

By our definitions, $\sum_{k=1}^n a_k^p = A^p$, so $\frac{\sum_{k=1}^n a_k^p}{A^p} = 1$. The same goes for the $B$ terms. The right side becomes:
$$ \frac{1}{p}(1) + \frac{1}{q}(1) = \frac{1}{p} + \frac{1}{q} = 1 $$

Thus, $\frac{1}{AB} \sum_{k=1}^n a_k b_k \le 1$, which proves Hölder's Inequality!

Setting $p=2$ and $q=2$ gives the famous **Cauchy-Buniakovszkij-Schwarz inequality** (often just called Cauchy-Schwarz), a foundational result in linear algebra:
$$ \sum_{k=1}^n a_k b_k \le \sqrt{\sum_{k=1}^n a_k^2} \sqrt{\sum_{k=1}^n b_k^2} $$

### Inflexion Points (*Inflexiós pontok*)

Imagine driving along an S-shaped curve. First, you are turning the steering wheel to the left (your path is convex). Then, halfway through the S, you must straighten the wheel for a split second before turning it to the right (your path becomes concave). That exact split second where the wheel is straight is an **inflexion point**.

**Definition.** A point $a$ is an inflexion point of a function $f$ if $f$ has a derivative at $a$ (even an infinite one, like a vertical tangent line), and the curvature changes sign at $a$. Specifically, there must be a small window around $a$ (with some radius $\delta > 0$) where $f$ is convex on one side of $a$ and concave on the other side. 

**Theorem.** If $f$ is twice differentiable at $a$ and $a$ is an inflexion point, then $f''(a) = 0$.
*Proof.* If $f$ is convex to the left of $a$, its slope $f'$ is increasing there. If it is concave to the right, its slope $f'$ is decreasing there. This means the slope $f'$ goes up, hits a peak at $a$, and then goes down. Therefore, the first derivative $f'$ has a local maximum at $a$. By Fermat's theorem (the derivative of a function is zero at a smooth local peak), the derivative of $f'$ at $a$ must be zero. Thus, $(f')'(a) = f''(a) = 0$.

But beware! Just because $f''(a) = 0$ doesn't automatically mean $a$ is an inflexion point. (Remember $f(x) = x^4$ at $x=0$? The second derivative is $0$, but the curve doesn't change from convex to concave). We need to know that the second derivative actually *crosses* zero and changes sign.

**Theorem (Higher Derivative Test).** If $f''(a) = 0$ and $f''$ changes sign at $a$ (meaning it goes from positive to negative, or negative to positive locally), then $a$ is an inflexion point. 
Furthermore, if $f$ is thrice differentiable (has a third derivative) and $f''(a) = 0$ but the next derivative $f'''(a) \neq 0$, then $a$ is definitely an inflexion point. (Because a non-zero third derivative means the second derivative is strictly slicing through zero without flattening out).

### Complete Function Analysis (*Teljes függvényvizsgálat*)

When you want to truly understand a function and sketch its graph perfectly, you combine everything you know into a systematic checklist.

Here are the steps for a complete function analysis:
1. **Domain $D(f)$:** Where is the function defined? Look out for dividing by zero, negative square roots, or logarithms of zero or negative numbers.
2. **Points of continuity:** Where is the graph unbroken?
3. **Limits:** What happens near points of discontinuity, and what happens as $x$ goes to very large positive or negative numbers ($\pm\infty$)?
4. **Monotonicity (First Derivative):** Find $f'$. Where is $f' > 0$ (going up) and $f' < 0$ (going down)?
5. **Extrema:** Find where $f' = 0$ or is undefined. These are the candidate peaks (local maxima) and valleys (local minima).
6. **Convexity/Concavity (Second Derivative):** Find $f''$. Where is $f'' > 0$ (bowl shape $\cup$) and $f'' < 0$ (umbrella shape $\cap$)?
7. **Inflexion Points:** Where does $f'' = 0$ and change sign? These are the points where the curvature flips.
8. **Other properties:** Is it symmetric? (Even function: $f(-x)=f(x)$, symmetric across the y-axis; Odd function: $f(-x)=-f(x)$, rotationally symmetric around the origin). Is it periodic? Does it have asymptotes?

*Note on asymptotes:* An asymptote at $+\infty$ is a straight line $y = ax+b$ that the function hugs infinitely closely as $x$ gets huge. Mathematically, $\lim_{x \to \infty} (f(x) - (ax+b)) = 0$.

**Example 3: The Witch of Agnesi (*Agnesi görbe*)**
Let's analyze the beautiful bell-shaped curve $f(x) = \frac{1}{1+x^2}$.

1-3. **Domain and Limits:** Since $1+x^2$ is never zero, the domain is all real numbers, $\mathbb{R}$. The function is continuous everywhere. If we plug in huge positive or negative numbers for $x$, the denominator gets massive, so $\lim_{x \to \pm\infty} f(x) = 0$. This means the x-axis ($y=0$) is a horizontal asymptote. Also, since $f(-x) = f(x)$, it's an even function, meaning it's perfectly symmetrical left and right.

4-5. **First Derivative (Slope):** Using the quotient rule, $f'(x) = \frac{-2x}{(1+x^2)^2}$. 
The denominator is always positive. 
- If $x < 0$, then $-2x$ is positive, so $f'(x) > 0$. The curve is climbing up.
- If $x > 0$, then $-2x$ is negative, so $f'(x) < 0$. The curve is sliding down.
- At $x = 0$, $f'(0) = 0$. Since it goes from climbing to sliding, $x=0$ is an absolute maximum. The peak height is $f(0) = \frac{1}{1+0} = 1$.

6-7. **Second Derivative (Curvature):** Using the quotient rule on $f'$:
$$ f''(x) = \frac{-2(1+x^2)^2 - (-2x) \cdot 2(1+x^2) \cdot 2x}{(1+x^2)^4} $$
Factor out one copy of $(1+x^2)$ from the numerator to cancel with the denominator:
$$ f''(x) = \frac{-2(1+x^2) + 8x^2}{(1+x^2)^3} = \frac{6x^2-2}{(1+x^2)^3} $$
Where does $f''(x) = 0$? When the numerator is zero: $6x^2 - 2 = 0 \implies x^2 = 1/3 \implies x = \pm \frac{1}{\sqrt{3}}$.
- For large negative $x$ (e.g., $x < -1/\sqrt{3}$) and large positive $x$ (e.g., $x > 1/\sqrt{3}$), the numerator $6x^2 - 2$ is positive. So $f'' > 0$, meaning the curve is convex ($\cup$)—it flares outwards near the bottom tails.
- In the middle, when $-1/\sqrt{3} < x < 1/\sqrt{3}$, $6x^2 - 2$ is negative. So $f'' < 0$, meaning the curve is concave ($\cap$)—this forms the top of the bell.
Thus, $x = \pm 1/\sqrt{3}$ are the inflexion points where the tails meet the bell.

### Exercises
1. Prove that $f(x) = e^x$ is strictly convex on $\mathbb{R}$. *(Hint: What is its second derivative?)*
2. Perform a complete function analysis of $f(x) = x^2 e^{-x^2}$.
3. Show that $f(x) = x^5$ has an inflexion point at $x=0$ using the higher derivative test. *(Hint: Take the first, second, and third derivatives at zero).*

---


---

## Chapter 26: L'Hôpital's Rule and Taylor Polynomials

### L'Hôpital's Rule (*L'Hospital szabály*)

Imagine you are trying to calculate the limit of a fraction, like $\lim_{x \to 0} \frac{\sin x}{x}$. If you simply plug in $x = 0$, you get $\frac{0}{0}$. What does $\frac{0}{0}$ mean? It's a tug-of-war! The numerator wants the fraction to shrink to $0$, and the denominator wants the fraction to explode to infinity. We call this an **indeterminate form** because we can't determine the winner just by looking at it. The same thing happens with $\frac{\infty}{\infty}$.

L'Hôpital's rule (named after the Marquis de l'Hôpital, who actually bought the rule from his tutor Johann Bernoulli) gives us a brilliant way to settle this tug-of-war: we just take the derivative of the top and the bottom separately and see who is growing faster!

**Theorem (L'Hôpital's Rule).** Let $f$ and $g$ be differentiable functions in a punctured neighborhood around a point $a$ (everywhere near $a$, except possibly at $a$ itself). Suppose $g(x) \neq 0$ and $g'(x) \neq 0$ near $a$. Assume we are in one of two tug-of-war scenarios:
(1) Both go to zero: $\lim_{x \to a} f(x) = 0$ and $\lim_{x \to a} g(x) = 0$, OR
(2) The bottom explodes: $\lim_{x \to a} |g(x)| = \infty$.

If the limit of their derivatives exists (let's call it $A$, which can be a real number or infinity):
$$ \lim_{x \to a} \frac{f'(x)}{g'(x)} = A $$
Then the original limit also equals $A$:
$$ \lim_{x \to a} \frac{f(x)}{g(x)} = A $$

#### Let's Prove It!
*Proof.* Let's prove the most common case: we are approaching $a$ from the right ($x \to a+0$), the limit $A$ is a real number $b$, and we are in the $\frac{0}{0}$ scenario (condition 1).

We know that $\lim_{x \to a+0} \frac{f'(x)}{g'(x)} = b$. By the formal epsilon-delta definition of a limit, this means that if we pick a tiny error margin $\varepsilon > 0$, we can find a small window $(a, a+\delta)$ where the ratio of the derivatives is trapped very close to $b$:
$$ \left| \frac{f'(x)}{g'(x)} - b \right| < \frac{\varepsilon}{2} $$
In plain English, for any $x$ in this window, $\frac{f'(x)}{g'(x)}$ is squeezed between $b - \frac{\varepsilon}{2}$ and $b + \frac{\varepsilon}{2}$.

Now, pick two points $x$ and $y$ in this window, such that $a < y < x < a+\delta$. 
We are going to use a heavy-duty tool called the **Cauchy Mean Value Theorem**. It's like the regular Mean Value Theorem, but for two functions at once. It says there must be some point $c$ between $y$ and $x$ where the ratio of their average rates of change matches the ratio of their instantaneous rates of change:
$$ \frac{f(x)-f(y)}{g(x)-g(y)} = \frac{f'(c)}{g'(c)} $$

Because $c$ is strictly between $y$ and $x$, it is also in our window $(a, a+\delta)$. This means $\frac{f'(c)}{g'(c)}$ is also trapped near $b$:
$$ \frac{f(x)-f(y)}{g(x)-g(y)} \in \left(b-\frac{\varepsilon}{2}, b+\frac{\varepsilon}{2}\right) $$

Here is the magic step. Hold $x$ completely still, and let $y$ slide down closer and closer to $a$ ($y \to a+0$). Because we are in the $\frac{0}{0}$ scenario, we know that $f(y) \to 0$ and $g(y) \to 0$. 
So, the left side of our equation becomes:
$$ \lim_{y \to a+0} \frac{f(x)-f(y)}{g(x)-g(y)} = \frac{f(x) - 0}{g(x) - 0} = \frac{f(x)}{g(x)} $$

Since the fraction was trapped near $b$ the whole time, its limit must also be trapped near $b$ (we use closed brackets now because limits can touch the boundaries):
$$ \frac{f(x)}{g(x)} \in \left[b-\frac{\varepsilon}{2}, b+\frac{\varepsilon}{2}\right] $$

Because this is true for *any* $x$ in our window, as we shrink the window (letting $x \to a+0$), we force $\frac{f(x)}{g(x)}$ to become exactly $b$. Therefore, $\lim_{x \to a+0} \frac{f(x)}{g(x)} = b$.

**Example 1.** Let's evaluate $\lim_{x \to 0+0} x \log x$. 
Right now, this is $0 \cdot (-\infty)$, which isn't a fraction. Let's force it to be a fraction by pushing $x$ to the denominator: $\lim_{x \to 0+0} \frac{\log x}{1/x}$. Now it's the indeterminate form $\frac{-\infty}{\infty}$. 
Apply L'Hôpital's rule by taking the derivative of the top and bottom separately (do NOT use the quotient rule!):
$$ \lim_{x \to 0+0} \frac{1/x}{-1/x^2} $$
Simplify the fraction by multiplying top and bottom by $-x^2$:
$$ \lim_{x \to 0+0} -x = 0 $$
So, $x$ shrinks to $0$ faster than $\log x$ grows to $-\infty$.

**Example 2.** Evaluate $\lim_{x \to 0} \frac{\cos x - 1}{x^2}$. 
Plugging in $0$ gives $\frac{1 - 1}{0} = \frac{0}{0}$. 
Apply L'Hôpital:
$$ \lim_{x \to 0} \frac{-\sin x}{2x} $$
This is still $\frac{0}{0}$! We can apply L'Hôpital again:
$$ \lim_{x \to 0} \frac{-\cos x}{2} = \frac{-1}{2} = -\frac{1}{2} $$

### Taylor Polynomials (*Taylor polinomok*)

A tangent line gives us a great linear (straight-line) approximation of a function near a point $a$: 
$$ T_1(x) = f(a) + f'(a)(x-a) $$
This line perfectly matches the function's height and its slope (first derivative) at $a$. But functions are curvy! To get a better approximation, what if we made a parabola that matches the height, the slope, *and* the curvature (second derivative)? What if we matched the third derivative? The fourth?

If a function $f$ can be differentiated $n$ times at a point $a$, we can build an $n$-th degree polynomial that perfectly mimics the function's first $n$ derivatives at that point. This is called the **$n$-th Taylor polynomial**:
$$ T_n(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x-a)^n = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k $$

*Wait, why the factorials ($2!, 3!, \dots$)?* If you take the second derivative of $(x-a)^2$, the exponent $2$ drops down in front. We divide by $2!$ (which is $2 \cdot 1$) to cancel it out, so the coefficient matches $f''(a)$ exactly. The same happens for the $n$-th term: taking $n$ derivatives brings down $n(n-1)\dots(1) = n!$, which perfectly cancels the $n!$ in the denominator.

#### The Error (Remainder)
Approximations are great, but in rigorous math, we need to know exactly how wrong we are. The difference between the true function $f(x)$ and our approximation $T_n(x)$ is called the **remainder**, $R_n(x)$. So, $f(x) = T_n(x) + R_n(x)$.

**Theorem (Taylor's Formula).** Suppose $f$ can be differentiated $n+1$ times on the interval between $a$ and $x$. Then there exist points $c$ and $d$ somewhere strictly between $a$ and $x$ such that the remainder can be written in two useful ways:
1. **Lagrange Remainder:** $R_n(x) = \frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1}$
*(Notice this looks exactly like the next term in the polynomial, but evaluated at some mystery point $c$ instead of $a$!)*
2. **Cauchy Remainder:** $R_n(x) = \frac{f^{(n+1)}(d)}{n!}(x-d)^n (x-a)$

*Proof.* For a fixed destination point $x$, let's define a remainder function $R(t)$ for a variable starting point $t$ between $a$ and $x$. We ask: "If we built the Taylor polynomial at $t$ and evaluated it at $x$, how far off would we be?"
$$ R(t) = f(t) + \frac{f'(t)}{1!}(x-t) + \dots + \frac{f^{(n)}(t)}{n!}(x-t)^n - f(x) $$

Let's check the endpoints. 
- If $t = x$, then all the $(x-t)$ terms become zero, leaving $R(x) = f(x) - f(x) = 0$.
- If $t = a$, then this is exactly our Taylor polynomial at $a$ minus $f(x)$. So, $R(a) = T_n(x) - f(x)$, which is exactly $-R_n(x)$. Our goal is to find $-R(a)$.

Let's take the derivative of $R(t)$ with respect to $t$. We have to use the product rule on each term. A beautiful thing happens: a massive chain of cancellations (a telescoping sum). The second half of the product rule for one term exactly cancels the first half of the product rule for the next term!
$$ R'(t) = f'(t) + \left[ \frac{f''(t)}{1!}(x-t) - f'(t) \right] + \dots + \left[ \frac{f^{(n+1)}(t)}{n!}(x-t)^n - \frac{f^{(n)}(t)}{(n-1)!}(x-t)^{n-1} \right] $$
Everything cancels except the very last piece of the very last term:
$$ R'(t) = \frac{f^{(n+1)}(t)}{n!}(x-t)^n $$

To get the Lagrange remainder, we apply the Cauchy Mean Value Theorem to our $R(t)$ function and a helper function $h(t) = (x-t)^{n+1}$ on the interval $[a, x]$. 
The theorem says there is some $c$ between $a$ and $x$ where:
$$ \frac{R(x)-R(a)}{h(x)-h(a)} = \frac{R'(c)}{h'(c)} $$
We know $R(x) = 0$ and $h(x) = 0$. The derivative is $h'(t) = -(n+1)(x-t)^n$. Let's plug it all in:
$$ \frac{-R(a)}{-(x-a)^{n+1}} = \frac{\frac{f^{(n+1)}(c)}{n!}(x-c)^n}{-(n+1)(x-c)^n} $$
Cancel the $(x-c)^n$ on the right, and combine $n! \cdot (n+1) = (n+1)!$:
$$ \frac{R(a)}{(x-a)^{n+1}} = -\frac{f^{(n+1)}(c)}{(n+1)!} $$
Multiply both sides by $(x-a)^{n+1}$ to solve for $R(a)$:
$$ R(a) = - \frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1} $$
Since our true error is $-R(a)$, we flip the sign, giving us the Lagrange remainder! The Cauchy form is derived the exact same way, just by picking a simpler helper function: $h(t) = x-t$.

### Differentials

If a function $f$ is differentiable at $a$, the first-order Taylor polynomial is just the tangent line: $f(x) \approx f(a) + f'(a)(x-a)$.
If we let $h = x - a$ (a small step away from $a$), we can rewrite this as $f(a+h) - f(a) \approx f'(a)h$. 
The linear function $dl(h) = f'(a)h$ is called the **differential** of $f$ at $a$. 

In physics and engineering, the differential is an incredible tool for making small, quick approximations without complex calculations. 
For example, for very small angles $x$, $\sin x \approx x$. Why? Because near $a=0$, the step is $h = x$. Thus, $\sin(x) - \sin(0) \approx \cos(0) \cdot x = 1 \cdot x = x$. 

### Exercises
1. Evaluate $\lim_{x \to 0} \frac{e^x - 1 - x}{x^2}$. *(Hint: You might need to use L'Hôpital twice).*
2. Write down the 3rd Taylor polynomial of $\log(1+x)$ around $a=0$.
3. Use the differential to approximate $\sqrt{1.01}$. *(Hint: Let $f(x) = \sqrt{x}$, $a=1$, and $h=0.01$).*

---


---

## Chapter 27: Power Series and Differential Equations

### Taylor Series Convergence

In the previous chapter, we saw that a Taylor polynomial gives a great approximation of a function near a point. But polynomials eventually stop—what if we just kept adding terms forever? If we let the degree $n$ go to infinity, we get an infinite sum called a **Taylor series**. The big question is: does this infinite series actually equal the original function exactly?

**Lemma.** Let $I$ be the closed interval between a starting point $a$ and an end point $x$. If a function $f$ is infinitely differentiable on $I$ (meaning you can keep taking derivatives forever without it breaking), and its derivatives don't grow too insanely fast—specifically, there is some maximum ceiling $M$ such that $|f^{(n)}(y)| \le M$ for all points $y \in I$ and all $n \in \mathbb{N}$—then the infinite series perfectly equals the function:
$$ f(x) = \sum_{n=0}^\infty \frac{f^{(n)}(a)}{n!}(x-a)^n $$

#### Let's Prove It!
*Proof.* Remember Taylor's formula from the last chapter? The true function is the polynomial plus an error term (the remainder):
$$ f(x) = T_n(x) + R_n(x) $$
Where the Lagrange remainder is $R_n(x) = \frac{f^{(n+1)}(c_n)}{(n+1)!}(x-a)^{n+1}$ for some mystery point $c_n$ between $a$ and $x$.

We want to show that as $n \to \infty$, the polynomial $T_n(x)$ becomes exactly $f(x)$. This is exactly the same as showing that the error $R_n(x)$ shrinks to zero. 
Let's look at the absolute value of the error:
$$ |f(x) - T_n(x)| = |R_n(x)| = \left| \frac{f^{(n+1)}(c_n)}{(n+1)!}(x-a)^{n+1} \right| $$
We know the derivative part is bounded by our ceiling $M$. So:
$$ |R_n(x)| \le \frac{M}{(n+1)!}|x-a|^{n+1} $$
Here is a beautiful fact about factorials: they grow much, much faster than exponents! For any fixed real number $K$ (like $|x-a|$), as $n$ gets huge, the factorial $(n+1)!$ in the denominator completely overpowers $K^{n+1}$ in the numerator, pulling the fraction down to $0$. 
Therefore, the error goes to 0 as $n \to \infty$. Thus, the infinite series perfectly converges to $f(x)$.

Using this, we can derive the **Maclaurin series** (which is just a Taylor series centered at $a=0$) for standard elementary functions.

For $f(x) = e^x$, taking the derivative over and over again always gives $e^x$. On the interval between $0$ and $x$, the maximum value of $e^x$ is simply $e^x$ (if $x>0$) or $e^0=1$ (if $x<0$). So there is a clear ceiling $M$. Thus:
$$ e^x = \sum_{n=0}^\infty \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots $$
If we plug in $x=1$, we get a beautiful formula for the famous number $e$:
$$ e = \sum_{n=0}^\infty \frac{1}{n!} = 1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \dots $$

Similarly, for $\sin x$ and $\cos x$, the derivatives cycle through $\sin x, \cos x, -\sin x, -\cos x$. All of these are always trapped between $-1$ and $1$, so our ceiling is simply $M=1$.
$$ \sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \dots = \sum_{n=0}^\infty \frac{(-1)^n}{(2n+1)!}x^{2n+1} $$
$$ \cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \dots = \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!}x^{2n} $$

**Definition.** An infinite series that looks like $\sum_{n=0}^\infty a_n (x-x_0)^n$ is called a **power series** (*hatványsor*) centered at $x_0$. Taylor series are a specific, very useful type of power series.

### Introduction to Differential Equations (*Differenciálegyenletek*)

Normally in algebra, we solve equations to find an unknown *number* $x$. A **differential equation** is an equation where the unknown is a *function*, and the equation relates the function to its own derivatives!

Imagine a freely falling body dropped from a height $h_0$ at time $t=0$. Gravity accelerates it downwards, so its velocity is $v(t) = -gt$ (where $g$ is the gravitational constant). But wait! Velocity is just the rate of change of height, so $v(t) = h'(t)$. 
This gives us a simple differential equation:
$$ h'(t) = -gt $$
What function $h(t)$, when differentiated, gives $-gt$? By trial and error (or basic integration rules), one obvious answer is $h_1(t) = -\frac{gt^2}{2}$.
However, when you take the derivative of a constant number, it vanishes! So $h(t) = -\frac{gt^2}{2} + 5$ is also a valid solution. Or $+ 10$. In fact, adding *any* constant $C$ gives a valid solution.

**Proposition.** *All* solutions to $h'(t) = -gt$ look like $h(t) = -\frac{gt^2}{2} + C$.
*Proof.* Suppose $f(t)$ is some other mysterious solution. Let's look at the difference between our mystery solution and our known solution: $f(t) - h_1(t)$. 
If we take the derivative of this difference:
$$ (f(t) - h_1(t))' = f'(t) - h_1'(t) $$
Since both are valid solutions, $f'(t) = -gt$ and $h_1'(t) = -gt$. So:
$$ -gt - (-gt) = 0 $$
If a function's derivative is zero everywhere, the function isn't changing at all. It must be a perfectly flat horizontal line—a constant $C$.
So, $f(t) - h_1(t) = C$, which means $f(t) = h_1(t) + C$. 

To find out exactly what $C$ is, we use our **initial condition**. At time $t=0$, the height is $h_0$. 
$$ h(0) = -\frac{g(0)^2}{2} + C = h_0 \implies C = h_0 $$
So the exact formula for the falling body is $h(t) = -\frac{gt^2}{2} + h_0$.

#### Modeling Exponential Growth and Decay
One of the most important differential equations in the world occurs when the rate of change of something is directly proportional to how much of that something you currently have. 
- The more rabbits you have, the faster they reproduce (Population Growth).
- The more radioactive atoms you have, the more atoms decay per second (Radioactive Decay).

Let $f(t)$ be the quantity. The differential equation is:
$$ f'(t) = k \cdot f(t) $$
where $k$ is some constant multiplier.

**Proposition.** The unique family of solutions to $f'(t) = k f(t)$ is $f(t) = C_0 e^{kt}$.
*Proof.* It's easy to check that it works: the derivative of $C_0 e^{kt}$ is $C_0 e^{kt} \cdot k$, which is exactly $k \cdot f(t)$. 
To prove it's the *only* solution, we use a clever trick. Let's invent a helper function $g(t) = f(t) e^{-kt}$. 
We take the derivative using the product rule:
$$ g'(t) = f'(t)e^{-kt} + f(t) \cdot (-k)e^{-kt} $$
Factor out the $e^{-kt}$:
$$ g'(t) = (f'(t) - k f(t))e^{-kt} $$
Since $f(t)$ is a solution to our original equation, we know $f'(t) - k f(t)$ is exactly $0$. 
So $g'(t) = 0 \cdot e^{-kt} = 0$. 
Just like before, if the derivative is zero, $g(t)$ must be a constant $C_0$.
$$ g(t) = C_0 \implies f(t) e^{-kt} = C_0 \implies f(t) = C_0 e^{kt} $$

If $k > 0$, the amount grows exponentially. If $k < 0$, it decays exponentially.

**Example (Radioactive Decay).** The Carbon-14 isotope decays into C-12 with a half-life of $T = 5700$ years. This means no matter how much you start with, half of it will be gone in 5700 years. What percentage decays in 2000 years?
*Solution.* Let $t_0$ be the start time. We know $f(t_0 + 5700) = \frac{1}{2}f(t_0)$. 
Using our formula $f(t) = C_0 e^{kt}$:
$$ C_0 e^{k(t_0 + 5700)} = \frac{1}{2} C_0 e^{kt_0} $$
Divide both sides by $C_0 e^{kt_0}$:
$$ e^{5700k} = \frac{1}{2} $$
Take the natural logarithm of both sides to solve for $k$:
$$ 5700k = \log(1/2) = -\log 2 \implies k = \frac{-\log 2}{5700} $$
Now, what fraction remains after 2000 years? We want the ratio $\frac{f(t_0 + 2000)}{f(t_0)}$:
$$ \frac{e^{k(t_0+2000)}}{e^{kt_0}} = e^{2000k} = e^{-\frac{2000 \log 2}{5700}} \approx 0.784 $$
So $78.4\%$ remains, meaning about $21.6\%$ has decayed.

**Newton's Law of Cooling (*Newton fűtési/hűtési törvénye*)**
Imagine taking a hot pizza out of the oven. The rate at which it cools down is proportional to the difference between the pizza's temperature $T(t)$ and the room temperature $T_\infty$.
The differential equation is:
$$ T'(t) = k(T(t) - T_\infty) $$
Let's make this look like our previous equation by defining a new function $f(t) = T(t) - T_\infty$ (this is just the temperature difference between the pizza and the room).
Since $T_\infty$ is constant, its derivative is zero, so $f'(t) = T'(t)$. 
Substitute this in:
$$ f'(t) = k \cdot f(t) $$
We already know the solution to this! $f(t) = C_0 e^{kt}$.
Substitute $T(t)$ back in:
$$ T(t) - T_\infty = C_0 e^{kt} \implies T(t) = T_\infty + C_0 e^{kt} $$
At time $t=0$, the initial temperature is $T_0$. So $T_0 = T_\infty + C_0 \implies C_0 = T_0 - T_\infty$.
Our final cooling formula is: $T(t) = T_\infty + (T_0 - T_\infty)e^{kt}$ (where $k$ is negative because it's cooling).

**Example.** A hot soup at $100^\circ\text{C}$ is placed in a $20^\circ\text{C}$ room. After 1 minute, it cools to $95^\circ\text{C}$. When will it be $45^\circ\text{C}$?
*Solution.* Using our formula with $T_\infty = 20$ and $T_0 = 100$:
$$ T(t) = 20 + 80e^{kt} $$
Use the 1-minute mark to find the cooling constant $k$:
$$ T(1) = 20 + 80e^k = 95 \implies 80e^k = 75 \implies e^k = \frac{75}{80} \implies k = \log(75/80) \approx -0.0645 $$
Now, set the temperature to $45^\circ\text{C}$ and solve for $t$:
$$ 45 = 20 + 80e^{kt} $$
$$ 25 = 80e^{kt} \implies e^{kt} = \frac{25}{80} $$
Take the logarithm of both sides:
$$ kt = \log(25/80) \implies t = \frac{\log(25/80)}{k} \approx 18.02 \text{ minutes.} $$

### Exercises
1. Find the Maclaurin series for the hyperbolic functions $\sinh x$ and $\cosh x$.
2. Solve the differential equation $f'(t) = 2f(t)$ with the initial condition $f(0) = 5$.
3. A cup of coffee cools from $90^\circ\text{C}$ to $80^\circ\text{C}$ in 5 minutes in a room at $22^\circ\text{C}$. Find its temperature after another 5 minutes (so at $t=10$).

---


---

## Afterword: What Comes Next?

With the rigorous foundation of sequences, limits, continuity, and differentiation established in this text, you have mastered the first major pillar of Mathematical Analysis (Differential Calculus).

The core topic that comes next in this mathematical journey is:

1. **Integration** — the Riemann integral as a limit of sums, and the Fundamental Theorem of Calculus.

As explicitly noted by the professor at the very end of these lecture notes, integration is deferred to "next semester" (*"jövő félévben integrálással"*). Every concept of integration will rest squarely on the properties developed in this book — especially the supremum, continuity, and limits.

The journey from here is long and beautiful. Enjoy it.

---

> *"The essence of mathematics lies in its freedom."*
> — Georg Cantor

---

### Appendix: Summary of Notation

| Symbol | Meaning |
|---|---|
| ℕ | Natural numbers {1, 2, 3, ...} |
| ℤ | Integers {..., −2, −1, 0, 1, 2, ...} |
| ℚ | Rational numbers |
| ℝ | Real numbers |
| ℝ̄ | Extended real line ℝ ∪ {−∞, +∞} |
| ∈ | "is an element of" |
| ∉ | "is not an element of" |
| ⊂ | "is a subset of" |
| ∀ | "for all" |
| ∃ | "there exists" |
| ⇒ | "implies" |
| ⟺ | "if and only if" |
| ∧ | "and" (logical) |
| ∨ | "or" (logical) |
| \|x\| | Absolute value of x |
| sup H | Supremum (least upper bound) of H |
| inf H | Infimum (greatest lower bound) of H |
| max H | Maximum of H |
| min H | Minimum of H |
| ∎ | End of proof (QED) |

---

*End of Book*
