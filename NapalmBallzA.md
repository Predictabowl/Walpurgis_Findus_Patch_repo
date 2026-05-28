# The Geometry

- **Monster radius:** 32 → total hitbox diameter = **64 units**
- **NapalmBallzA radius:** 7 → adds to collision on both sides = **+14 units**
- **Total distance to travel through:** 64 + 14 = **78 units**

---

## Speed

`NapalmBallzA` inherits **Speed 15** from `NapalmBallz`, but it also has:

``` code
ThrustThing(random(1,255), random(0,5), 0, 0);  // adds 0–5 horizontal
ThrustThingZ(0, random(0,25), 0, 1);            // adds 0–25 vertical
```

So horizontal speed ranges from **15+0 = 15** to **15+5 = 20** units/tic

---

## BUT — Gravity

``` code
Gravity 1.2
-NOGRAVITY
```

Gravity pulls it down each tic, bleeding off vertical speed. This affects **how straight** the path is but the horizontal component stays roughly constant for the short time it crosses an enemy.

---

## Tics to Cross

``` code
tics = 78 / speed
```

| | Speed | Tics to cross |

|---|---|---|
| **Slowest** | 15 | 78 / 15 = **~5.2 → 6 tics** |
| **Fastest** | 20 | 78 / 20 = **~3.9 → 4 tics** |

---

## Revised Average Damage (single pass)

| | Tics | Avg damage |

|---|---|---|
| **Slowest** | 6 | 6 × 3.6 = **~21.6** |
| **Fastest** | 4 | 4 × 3.6 = **~14.4** |
| **Average** | 5 | 5 × 3.6 = **~18** |

Much more conservative than the infinite loop scenario — though if the ball bounces back into the same enemy (`BounceCount 3`!) it could pass through **up to 4 times**, potentially hitting for **~72 average damage** from `NapalmBallzA` alone.
