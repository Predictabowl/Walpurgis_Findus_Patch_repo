## Fourth Evaluation

### Frame Counts (My Independent Tic Count)

| Attack | Tic-by-Tic | **Total** |
| :--- | :--- | :--- |
| FireThrust | J1+K1+L2+M1+N2+N1+N0+M1+L2+K1 | **12** |
| FireThrustFast | J1+K1+L1+M1+N1+N1+M1+L1+K1 | **9** |
| FireThrustShock | identical to FireThrust | **12** |
| FireStab | TNT1+TNT1+O1+Z2+P1+[2+Q1+A2+[1+P2+O1+TNT1+TNT1 | **17** |
| FireStabFast | TNT1+TNT1+O1+Z**1**+P1+[**1**+Q1+A**1**+[1+P**1**+O1+TNT1+TNT1 | **13** |
| FireStabShock | identical to FireStab (Z2, [2, A2, P2) | **17** |
| FireChop | R1+TNT2+S1+T1+U2+V1+W1+X1+Y1+TNT3 | **14** |
| FireChopFast | R1+TNT**1**+S1+T1+U**1**+V1+W1+X1+Y1+TNT**2** | **11** |
| FireChopShock | same as FireChop except W**2** | **15** |


---

### DPS Table (35 tics/sec, 50% Stab / 25% Chop / 25% Thrust weighting)

$$\text{DPS} = \frac{\text{Avg Dmg}}{\text{Avg Tics}} \times 35$$

| Version | Avg Dmg | Avg Tics | **DPS** | **vs Base** |
| :--- | :--- | :--- | :--- | :--- |
| **Base** | $0.5(88)+0.25(73)+0.25(67) = 79.0$ | $0.5(17)+0.25(14)+0.25(12) = 15.0$ | **184** | — |
| **Upgraded** | $0.5(97.5)+0.25(79)+0.25(71) = 86.3$ | $0.5(13)+0.25(11)+0.25(9) = 11.5$ | **262** | **+42%** |
| **Mutated** | $0.5(115.5)+0.25(97.5)+0.25(81) = 102.4$ | $0.5(17)+0.25(15)+0.25(12) = 15.25$ | **235** | **+28%** |

**Upgraded vs Mutated: Upgraded is ~11.5% higher DPS.**

---

### On the Mana Cost Justification — This is the Key Finding

**The mana refund system for normal combat.**

Looking at `SpearShockPuffRefunder` at line 562:

- The **Crash** state gives back `PunchRight` (→ mana refund) — this fires when the puff hits a **wall or floor**
- The **Melee** state spawns a visual only, **no refund** — this fires when the puff hits an **enemy**

In combat you are always hitting enemies → **Melee state fires → no refund → you permanently pay 1 mana per hit.** The Crash refund only triggers on wall hits.

So the actual value proposition of Mutated vs Upgraded is:

| | Upgraded | Mutated |
| :--- | :--- | :--- |
| DPS | **262** | 235 |
| Mana cost | **0** | 1 per hit |
| Damage type | Holy | **HolyShock** |
| Knockback | none | **yes (−5 vel push)** |
| Bleed | yes | yes |

**Bottom line:** Mutated pays a real, permanent mana cost for ~11% lower DPS than Upgraded, receiving in return only the HolyShock damage type and the knockback. Unless you're specifically fighting enemies that are resistant to Holy but weak to HolyShock, **the mana cost is not justified by the damage output alone.** The knockback/stagger is the only practical defensive utility that Upgraded lacks.