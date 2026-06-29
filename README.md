# Walpurgis Findus Patch

## Related Projects

* **Findus Patch:** [https://github.com/Predictabowl/Walpurgis_Findus_Patch_repo](https://github.com/Predictabowl/Walpurgis_Findus_Patch_repo)
* **Minor Fixes:** [https://github.com/Predictabowl/Walpurgis_Findus_MinorFixes](https://github.com/Predictabowl/Walpurgis_Findus_MinorFixes)
* **Faithless Trilogy Compatibility:** [https://github.com/Predictabowl/Walpurgis_Findus_Faith_Tri_repo](https://github.com/Predictabowl/Walpurgis_Findus_Faith_Tri_repo)

## Setup & Compatibility

This patch is designed **SPECIFICALLY** for use with: `+Walpurgis-JT-1.0-A.pk3`.

It **MUST** be loaded **AFTER** the main file.

For simplicity, this patch replaces entire actor files. Loading it with different versions of Walpurgis may cause compatibility issues or unexpectedly override original weapon behaviors from those versions.

---

## Version History

### v2.2.1

* **Bardiche**: Slightly increased Mana consumption.

### v2.2.0

* **New Stun**: Added a new stun mechanic.
* **Bardiche**: Changed Mana consumption mechanic.
* **Ichival**: Primary Attack values change

### v2.1.1

* **Aestus:** Changes to the secondary attack variants
* **Hammer of Retribution:** Further Increased single target damage of primary mutated

### v2.1.0

* **Timon's Axe:** Bugfix/balance

### v2.0.9

* **Fulgor:** Primary Attack mutation mana cost reduced
* **Hebiko:** Primary Attack mutation mana cost increased
* **Driad Mode:** Primary Attack mana cost increased

### v2.0.8

* **Aestus:** reduced mana cost
* **Algor:** can now inflict pain

### v2.0.7

* **Bardiche:** the mutation now takes 1 mana per swing instead of 1.5
* **Hammer of Retribution:** Increased single target damage of primary mutated

### v2.0.6

* Minor fix for SturmSpear

### v2.0.5

* Changes to Aestus Secondary fire. Base version restored as the original.

### v2.0.4

* Minor changes for Lightbringer and Bardiche

### v2.0.1

* Restored full file replacement for Ichival, because using inheritance would break the custom Walpurgis HUD, preventing it from showing the complete version of the weapon.

### v2.0.0 - BREAKING CHANGE

This version replaces the original files with inheritance, fundamentally changing how the patch integrates with Walpurgis. As such, it will **BREAK WEAPONS IN ONGOING GAMES**. You will need to start a new game to use this patch version properly.

### v1.1.0

* Transitioning from file replacement to decorator inheritance
* Quietus Mana increase from +50% to +33%

---

## Philosophy & Reasoning

The aim of these changes is **NOT** to balance classes against each other, but to balance all the weapons within the same class. Choosing which weapon to use should be a ponderous choice, rather than simply defaulting to the "ultimate" weapon because it is objectively better in every way. Most original values are left untouched to preserve the core feel.

---

## Changelog

### General Changes

#### Weapon Slot Reorganization

All classes have been moved to an expanded 1-6 weapon slot configuration via `KEYCONF`. This removes the "Slot Sharing" found in the original mod, allowing every weapon in a class's arsenal to be accessed directly via its own dedicated hotkey (1-6) without the need for weapon cycling or inventory scrolling.

#### New Stun Mechanic

Added a new stun mechanic that will work on all enemies, even ones not from Walpurgis, even if will not be as much spectacular. Is based on the pain chance and it can be triggered also outside of the pain chance with a multiplcative probability, so it should be configured carefully to avoid to stunlock every enemy.
The new stun system is fairly customizabile but, if I can find the time, will be expanded upon.
For now only the *Timon's Axe* and *Sturm Spear* mutations use it.

---

### Crusader

#### Haven Sever

* **Bugfix (Map Decoration Pushing & Bleeding)**
  Fixed an issue where the secondary attack projectiles would violently push and apply bleeding status effects to indestructible map decorations upon impact. These effects are now properly restricted to actual monsters only.

#### Star Hammer

* **Primary Attack**
  Increased the cost of the first swing (2+2 -> 3+3), while the second swing remains at 2+2. This increases the total cost of a standard 2-hit combo by +25% (total 5+5). If only single swings are used, the cost is consistently 3+3.
* **Tertiary Attack (Black Hole)**
  Mana cost increased from 16+16 to 20+20 (+25%).

#### Sturm Spear

* **Primary Attack (Holy Shock Mutation)**
  Damage increased by +11%. Changed (Fixed?) a state that made it use a fast stab (upgraded version) attack during the combo; now it will only use shock attacks. Changed mana expenditure from "spend and refund when missing" to "spend only when hitting." Also corrected a bug that wouldn't expend any mana on the finishing blow.

> **Consideration:** While playing, the mutated variant felt weaker than the Upgraded one. To verify, I ran frame-by-frame analysis and DPS calculations four separate times from scratch. It turned out the Upgraded version has roughly 11-12% higher DPS. The shock knockback is useful but unreliable; some monsters just don't get even fazed by it, and in conclusion, it wasn't powerful enough to compensate for burning 1 mana per hit and less damage. I bumped the mutated damage by +11% to match the upgraded DPS, making the mana cost a real tradeoff against the shock's stagger utility instead of a penalty.

#### Lightbringer

* **Primary Attack (Base Version)**
  The mana cost was decreased from 3 to 2 per shot. Raised slightly the projectile so it will align with the crosshair.
  > **Considerations:** The base version felt inefficient compared to the rest of the Crusader's arsenal. When compared to the Druid's Dagon's Cane—which features a very similar primary attack—the Lightbringer was heavily outclassed. The upgraded version still costs 3 mana, since before it was giving +110% damage for the same mana cost (now is +110% damage but +50% mana), and the mutated version is even more efficient, albeit very imprecise.
* **Primary Attack (Upgraded Version)**
  Spread pattern slightly changed, to make it more viable over long distances.
  > **Considerations:** Unlike the base version's perfect accuracy, both the upgraded and mutated variants were previously very imprecise at range. I often defaulted to the mutated fire mode because its rapid, low-cost shots would eventually hit distant targets. The new pattern for the upgraded version ensures the three shots stay reasonably packed together, making it a semi-viable long-distance tool in contrast to the still intentionally imprecise mutated version, which shines in close quarters.

---

### Myrmidon

The Myrmidon's core strength is being a highly mana-efficient class. While I personally prefer more intensive resource management, I've avoided reckless cost increases to maintain the class's identity.

The main issue was that the Quietus was so inexpensive compared to other Myrmidon weapons that it effectively rendered them obsolete. These changes ensure that choosing a weapon remains a meaningful decision.

#### Queensbury Gaunlets

* **Bugfix (Map Decoration Pushing & Bleeding)**
  Fixed an issue where the Tertiary attack (Pilum projectile) would apply bleeding status and a violent backward thrust to map decorations. These effects and the resulting physics kick are now restricted to monsters only, preventing the weapon from moving indestructible scenery or breaking map geometry.

#### Timon's Axe

* **Primary Attack (Electric Mutation)**
  Mana is now only consumed when successfully hitting an enemy. This allows for "air swings" while repositioning without wasting mana.
  > **RPG Lore:** The electrical charge is held within the axe and only discharges upon direct contact with a conductor (the target).
  >
  > ---
  >
  > **Considerations:** Even with this buff to efficiency, the Electric Mutation remains the most expensive primary attack in the Myrmidon's kit. However, its stunlocking capability makes it the premier choice for efficiently neutralizing single, high-threat targets.

* **Secondary Attack**
  * Mutation (Bugfix): Changed Explosion mechanic to simulate more accurately the power of base version.
    > **Considerations:** The original mutation was intended to narrow the slash from horizontal to vertical—making it taller but narrower—while maintaining power and reducing mana cost. However, the mutation uses a NOCLIP projectile to pass through geometry without crashing into walls, which disables actor collision. This prevents the projectile's Damage property from applying, since it can't interact with targets. To fix this, I replaced the single explosion with two smaller explosions offset on the Z-axis to simulate a tall, narrow impact. This allows targets at the center to take full damage (matching the base version) while those on the sides receive minimal damage.
  * All versions (Bugfix?): Mana consumption base and upgrade from 9 to 8. Mana consumption mutation from 5 to 4.
    > **Considerations:** Whether this qualifies as a bugfix is debatable. The original has an inconsistency: all secondary attack variants check for 8 mana, yet the base and upgraded versions consume 9 mana (allowing usage with insufficient resources), while the mutation consumes 5 mana (preventing usage when you have enough). Evidence of copy-paste code suggests this is an oversight. Since the mutation promises roughly 50% cost reduction, the adjusted values of 8 and 4 better reflect the intended balance. For these reasons, I made this change.

#### Hammer

The Hammer is a very powerful weapon... if you ignore the primary attack.

* **Primary Attack (Explosion Mutation)**
  * **Mana Consumption (On Impact Only):**
    * **Enemy Hit:** 2 Green Mana
    * **Environment Hit (Wall/Floor):** 1 Green Mana
  * **Physical Damage (Direct Hit):**
    * Increased to be on par as the basic hammer (now 80% of base, up from 60%).
    * *Note: This is a minor buff to single-target viability, as the explosion remains the primary source of damage.*
  > **RPG Lore:** Mana is expended only when the explosion is triggered. Strikes against living targets are flavored to be more violent, requiring more energy.
  >
  > ---
  >
  > **Considerations:** Hitting the floor or walls triggers an explosion; a 1G mana cost prevents players from exploiting this for free AoE damage while still providing a discount for missed direct hits.
  >
  >The physical portion of the damage from the mutation was 60% of the base version and, while the AoE explosion more than make up for it, in my opinion at 2G per attack was not worth it, especially when compared with the AoE primary attack of the Bardiche. Furthermore some enemies are resistant to the fire effect, resulting in pitiful damage; paradoxically when out of mana, the attack revert to its base form, resulting in a more effective attack against such enemies. Last but not least, the Hammer have the shortest melee range of any weapon, which means is often too risky to use even against melee enemies.
  >
  >For these reasons I changed the hammer single target damage to 80% of the damage of the base version. Since its intended as an AoE tool anyway, when fighting against a group of enemies will barely make a difference: a direct hit against weaker enemies would still result in 1 hit kill, so nothing is gained. On the other hand it will be at least viable (but noticeably worse than the other upgrade) against single high health enemies, especially since the hammer's other fire modes are already AoE-heavy.

* **Bugfix (Map Decoration Pushing)**
  Fixed an issue where the rocks spawned by the Mutated Tertiary Attack (Ground Slam) would unconditionally apply a velocity kick to whatever they impacted upon death, causing immovable map decorations to shift and potentially break maps. The knockback is now restricted to actual monsters only via an `ISMONSTER` check on the impact target.

#### Bardiche

I do honestly think that the Bardiche primary attack is overtuned. Even if it's slow it does a lot of damage, it has a lot of range, it hits multiple targets in an AoE, it forces pain on enemies, and has life leech. Compared to the Hammer primary attack, which is short range, single target, and does not force pain, it shows even more the huge gap between the primary attacks. Of course you cannot compare 2 weapons from the primary attack alone, and yet this disparity made me want to avoid to use this weapons.

* **Primary Attack (Base & Upgraded)**
  * Drains 0.75 Green mana every swing, but only if it hit an enemy. If the player does not have enough mana available, the attack suffers approximately -20% damage and range penalties, and lifesteal on hit is disabled.
  > **Considerations:** The Bardiche is difficult to balance—I genuinely feel its primary attack is overpowered. I wanted to avoid completely redesigning it since this patch aims for minimal, targeted changes. However, I also wanted to avoid adding a mana cost entirely, as free primary attacks define the Myrmidon's core identity. I ultimately settled on a hybrid solution: a modest mana drain paired with a fallback penalty system. This way, players low on mana can still use the weapon at reduced effectiveness rather than losing it entirely.

* **Primary Attack (Upgraded)**
  The Upgraded version now correctly implements the promised +20% damage and +20% AoE radius bonus to both slash attack variants:
  * **Vertical Slash:**
    * Damage Before: +27% damage increase vs base
    * Damage After: +20% damage increase vs base
    * Radius: Untouched (it's around from +17% to +20% vs base, not consistent for all components)
  * **Horizontal Slash:**
    * Damage Before: +83% damage increase vs base (yes, it was very high)
    * Damage After: +20% damage increase vs base
    * Radius Before: This was weird, it was mostly shrinked vs base
    * Radius After: It was standardized to increase in percentage like the Vertical Slash, so around +20%. Which means horizontal slash now has a lot of range.
  > **Considerations:** The original upgrade was overtuned, especially if compared to other similar upgrades for the Axe, Gladius and Hammer of Retribution. The rebalance normalizes both variants to faithfully represent what the in-game upgrade page promises: a clean +20% increase across both damage and Area of Effect radius. The Horizontal slash was especially weird, as the upgrade massively increased the damage and slightly reduce the AoE radius. I've noticed that with the original values, the upgraded Horizontal was almost the same as the upgraded Vertical, while in the base version the Horizontal is a lot less damaging but have much more AoE radius. I preferred to keep the base attacks as they are, and just upscale the upgraded to +20% across the board. If you think it's low, consider that increasing +20% damage and +20% Aoe have a multiplicative DPS increase, not additive.

* **Primary Attack (Triple Projectiles - Mutation)**
  Consumes 1G mana per swing, plus 0.25G mana if it hits (for a total of 1.25 mana per swing). Projectiles will no longer spawn if mana is depleted.
  > **RPG Lore:** The Bardiche uses a small amount of magical energy to manifest ethereal projectiles during the swing.
  >
  > ---
  >
  > **Considerations:** While it has less AoE potential compared to the upgraded version, if you use the 3 projectiles as a shotgun it's a massive single burst damage increase, that reduces by a LOT the TTK (Time to Kill). Plus you have ranged projectiles to finish off weakened enemies from a distance. If you pair with the corpse explosion tertiary, it will cost more mana per swing, but with shorter TTK and earlier corpse availability, I believe it's worth it.

* **Secondary Attack (Spiky Retort - Geyser/Spikes)**
  Restricted the pull/knockback effect to only affect monsters (`ISMONSTER` check). This prevents the weapon's projectiles from moving indestructible map decorations and breaking map geometry.

#### Quietus

* **Primary Attack**
  Consumes 1+1 mana at the start of the combo, which then powers the weapon for all 4 subsequent slashes.
  > **RPG Lore:** The blade is infused with a brief burst of magical resonance, lasting just long enough for a whirlwind of strikes.
  >
  > ---
  >
  > **Considerations:** Charging 1+1 per swing felt frustrating, as it punished players for missing or overkilling enemies. This "per-combo" cost keeps it economical while ensuring the "ultimate" weapon still has a per-use price.
* **Secondary Attack (Torpedo)**
  The visual effect while charging the torpedo now uses Additive rendering instead of Translucent, maintaining a static opacity rather than getting progressively more solid.
  > **Considerations:** Previously, the charging visual effect would grow in size and opacity, eventually blocking the player's crosshair and making it difficult to aim at targets while charging. The additive rendering ensures that the energy effect looks bright but won't obstruct geometry or targets behind it.
* **Tertiary Attack**
  Mana cost increased from 6+6 to 8+8 (+33%). The previous cost was tuned too low, making this powerful ability overly spammable.

---

### Druid

#### Dagon's Cane

* **Bugfix (Map Decoration Pushing)**
  Fixed an issue where water impacts unconditionally pushed everything around them, causing immovable map decorations to shift and potentially break maps. This fix applies to the Upgraded Primary attack (Water Blast) and all Secondary attacks (Base/Upgraded Geyser and Mutated Whirlpool), ensuring they now only move real monsters.
* **Tertiary Fire (Aqua Charge - Mutation)**
  Increased the overall damage of the water waves by approximately +100%, making it a more viable offensive option during combat. Additionally, the wave now acts as a moving shield, blocking enemy projectiles along its wide path.
  > **Considerations:** While the goal is to stay as faithful to the original as possible, the mutated version felt like a downgrade compared to the standard and upgraded versions which offer invulnerability and mobility. By adding projectile deflection, it becomes a meaningful tactical choice: trading personal mobility for powerful battlefield control and moving cover.

#### Hebiko

* **Primary Fire**
  * Mutation: Mana cost increased +100%.
  > **Considerations:** The mutation deals an insane amount of damage for minimal mana. Compared to Algor, it does more than double the damage for the same cost. Compared to Firestorm, it deals comparable damage for half the mana cost—and unlike Firestorm, it inflicts pain.
  >
  >Doubling the mana cost brings it more in line with these similar attacks while remaining superior (which still feels wrong): it has double the DPS of Algor and inflicts pain that Firestorm lacks.

#### Dryad Mode

* **Primary Fire**
  * Base and Upgrade: Mana cost increased from 3 to 4 (+33%).
  > **Considerations:** I get all the shortcomings of this weapons, it's slow and short ranged, but the damage it does is simply out of this world. If you set mobs life to 5x you won't even notice since they will still be one shotted most of the times by the base, not upgraded, version. Bosses becomes a mere nuisance as they die in seconds. Lastly it damage everything in its path, as it's an excellent AoE againt grounded enemies. Despite this I undestand that there are scenarios where this weapon is hard to use, but you have different weapons for different situations, so I don't even think its a problem unless you don't have any other weapon available.
  >
  >The least I could do was to increae the mana cost as it really felt way too cheap otherwise.

#### Ichival

The original Ichival, in my opinion, is the worst ultimate weapon among all classes. While this is not a problem for the class, since the other weapons are very powerful, I quickly realized that specifically because of that, I didn't really find a reason to use it at all, save for a few rare cases.
It also lacks an affordable single-target option, since all its attacks are AoE—making it unsuitable for single strong enemies where other ultimate weapons excel.

* **Primary Attack (Standard & Upgraded)**
  * Mana cost reduced from 8+8 to 6+6.
  * Explosion radius reduced for both versions: from 212 to 128
  * Explosion full damage radius normalized and reduced: from 170 to 64 for the base version, and from 80 to 64 for upgraded version (the upgraded version was worse than the base).
  * Direct impact single target damage: from 4-32 to 110-170 for the base version.
  * Base version AoE damage decreased from 197-268 to 150-210.
  * Upgraded version whole  damage is now increased by +15% compared to the base, as advertised in the upgrade screen. Before only the single target got the bonus (about +9), but the AoE was the same as the base version.
  > **Considerations:** I felt that this weapon sorely needed a viable single-target attack, and the primary attack is the best candidate: its precision aiming, time-slowing effect, and deliberate rate of fire make it well-suited to being a precision weapon. Furthermore, AoE effectiveness is substantially subpar compared to the other fire modes (Secondary and Tertiary), which also have a higher rate of fire.
  >
  >A side note: the upgraded version dealt the same AoE damage as the base (with only a paltry increase of +9 average single target damage), but had a worse minimum damage radius (170 for the base, 80 for the upgraded), so it was not really worth upgrading. I suspect it was a bug or an oversight.

---

### Magister

#### Lapis Flos

* **Bugfix (Map Decoration Pushing)**
  Fixed an issue where the rocks and fists created by the primary attack would unconditionally push everything around them upon impact, causing immovable map decorations to shift and potentially break maps. This fix ensures that the displacement knockback now only affects real monsters.

#### Vis Expello

* **Bugfix (Map Decoration Pushing)**
  Fixed an issue where the telekinetic force blasts (Primary and Secondary) and the Force Stasis bubble (Tertiary) would violently displace indestructible map objects and decorations. The push-back and lifting effects are now properly restricted to monsters only.

#### Aestus

* **Primary Attack**
  Upgrade now reduces mana cost by -50% (removed cost from even/right shots).
  > **Considerations:** The comparison between the upgraded and mutated versions was heavily lopsided. Despite being slower, the mutated variant's AoE and high single-target damage allow it to kill enemies faster and more efficiently than the upgraded fire. For example, killing a Maulotaur with the upgraded fire required three times more mana and significantly more time than the mutated version—a disparity that grows even more apparent against crowds. Selecting the upgrade over the mutation was effectively a self-imposed handicap. I considered doubling the mutated mana cost but instead decided to halve the upgraded cost. This aligns with other Magister primary fires while providing a reason not to always default to the mutated version, which remains superior in both single-target and AoE scenarios.
  >
  > Just for reference, I also compared the original upgraded Aestus with the Lightbringer Mutated Fire (rapid fire), they have basically the same DPS, and while the Lightbringer has spread, it's a lot more mana efficient (Almost double), and has a small AoE on projectiles (radius 40, sometimes will damage 2 enemies).
* **Secondary Attack (Meteor)**
  * **Upgrade (Flying):** Added substantial impact damage upon contact. No Longer Shootable or Destroyable.
  * **Mutation (Falling):** Increased flame AoE and Explosion radius by +25%.
  > **RPG Lore:** The physical weight of a summoned celestial rock should be felt by anything unfortunate enough to be directly under it.
  >
  > ---
  >
  > **Considerations:** The secondary attack upgrades felt underwhelming as an AoE option. If you want AoE coverage, the mutated primary fire is objectively the better choice, so I felt I needed to differentiate the two variants rather than redesign the entire secondary.
  >
  > **Falling Meteor** is now better suited for Area of Effect coverage. I increased the explosion radius by +25%, which should make it significantly more viable against groups. Since falling meteors can land in the middle of a group is also more suited for area denial than the other versions, which ofter explode on the nearest enemy (wasting AoE) or are shooted down even before that.
  >
  > **Flying Meteor** is now better suited for strong single targets. I added direct impact damage on contact while making it no longer shootable or destroyable, improving reliability. The fact that needs manual targeting rewarding careful aim with both precision impact damage and guaranteed delivery—making it the superior choice for eliminating priority threats.
  >
  > This mirrors the primary attack mutation, which transforms it from single-target to AoE—here.
* **Tertiary Attack (Fire Whip)**
  Increased the casting speed of the fire whip wind-up animation (casting time reduced by ~40%).
  > **Considerations:** As a short-range button, the original wind-up was too slow and required preemptive use. This was less a matter of balance and more that the sluggish animation simply didn't feel responsive or fun to use.

#### Algor

* **Primary Attack**
  Upgrade: now the blizzards can inflict pain.
  > **Considerations:** Much like the Aestus, the upgraded version was significantly outclassed by the mutation. The mutated fire offers superior range, area-of-effect capabilities, and comparable damage. Crucially, it can effectively stunlock enemies, whereas the upgraded version originally lacked a pain-state trigger. This, combined with its short range, meant players were frequently hit while using it, making the mutation the only viable choice. To address this, the upgrade's additional blizzards can now inflict pain. While this provides much-needed defensive utility, the mutated version still remains superior by a noticeable margin.

#### Fulgur

* **Primary Attack (Mutation / Helix)**
  * **BugFix:** Fixed an issue where the Helix would strike the player when strafe-running towards the East-SouthEast. To resolve this, the damage type was changed from a split of "Electric/Holy Shock" to pure "Electric".
  > **Considerations:** This solution was chosen because the Magister is not immune to Holy Shock, unlike the Crusader. Since modifying the player class via inheritance is not a viable solution for this trait, and I wanted to avoid replacing the entire player file or implementing a complex ZScript Event Handler, switching the attack to pure "Electric" damage was the most efficient fix. This change remains thematic since the Magister is not a "holy" class, and it has no practical impact on combat as very few enemies distinguish between these two damage types.
  * **Mana cost Reduction:** Helix mana cost was reduced from 6 to 5.
  >**Considerations:** The Helix felt underwhelming compared to the Chain Lightning, as the extended range is not a significant advantage when weighed against its inferior DPS and high mana cost. To properly contextualize this, one must compare it with other similar upgraded primary attacks: Dagon's Cane (3 blue mana), the Hammer of Retribution (5 Green mana), and the Lightbringer (3 blue mana) are all objectively better than the Helix. Dagon's Cane, in particular, is mechanically similar but far more effective. I have reduced the mana cost to improve its viability, though it still remain underwhelming compared to the Chain Lightning.
  >
  >Another flaw inherent to the original Fulgur package is that selecting the Helix mutation forced every attack to be high-cost and high-damage. This often left enemies with only a sliver of health, requiring a full 6 green mana investment just to finish them off. Since weapon switching is too slow to be a viable strategy, this resulted in significant mana inefficiency.
  