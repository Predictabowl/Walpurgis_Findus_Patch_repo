_______________________________________________________________________________
 __      __         .__                             .__        
/  \    /  \ _____  |  |  ______  __ _________  ____ |__| ______
\   \/\/   / \__  \ |  |  \____ \|  |  \_  __ \/ ___\|  |/  ___/
 \        /   / __ \|  |__|  |_> >  |  /|  | \/ /_/  >  |\___ \ 
  \__/\  /   (____  /____/|   __/|____/ |__|  \___  /|__/____  >
       \/         \/      |__|               /_____/         \/ 
                      ___________.__            .___                
                      \_   _____/|__| ____    __| _/_ __  ______    
                       |    __)  |  |/    \  / __ |  |  \/  ___/    
                       |     \   |  |   |  \/ /_/ |  |  /\___ \     
                       \___  /   |__|___|  /\____ |____//____  >    
                           \/            \/      \/          \/     
                               __________         __         .__   
                               \______   \_____ _/  |_  ____ |  |__
                                |     ___/\__  \\   __\/ ___\|  |  \
                                |    |     / __ \|  | \  \___|   Y  \
                                |____|    (____  /__|  \___  >___|  /
                                               \/          \/     \/ 
_______________________________________________________________________________

 [ RELATED PROJECTS ]
-------------------------------------------------------------------------------
 - Findus Patch: https://github.com/Predictabowl/Walpurgis_Findus_Patch_repo
 - No Shield Frag: https://github.com/Predictabowl/Walpurgis_Findus_NoShieldFrag_repo
 - Faithless Trilogy Compatibility: https://github.com/Predictabowl/Walpurgis_Findus_Faith_Tri_repo

 [ SETUP & COMPATIBILITY ]
-------------------------------------------------------------------------------
 This patch is designed SPECIFICALLY for use with:
 "+Walpurgis-JT-1.0-A.pk3"
 
 It MUST be loaded AFTER the main file. 
 
 For simplicity, this patch replaces entire actor files. Loading it with 
 different versions of Walpurgis may cause compatibility issues or 
 unexpectedly override original weapon behaviors from those versions.

_______________________________________________________________________________

 [ VERSION HISTORY ]
-------------------------------------------------------------------------------

v2.0.1
  Restored full file replacement for Ichival, because using inheritance 
  would break the custom Walpurgis HUD, preventing it from showing the 
  complete version of the weapon.

v2.0.0 - BREAKING CHANGE
  This version replaces the original files with inheritance, fundamentally 
  changing how the patch integrates with Walpurgis. As such, it will BREAK 
  WEAPONS IN ONGOING GAMES. You will need to start a new game to use this 
  patch version properly.

v1.1.0
  - Transitioning from file replacement to decorator inheritance
  - Quietus Mana increase from +50% to +33%

_______________________________________________________________________________

===============================================================================
                             PHILOSOPHY & REASONING
===============================================================================
 The aim of these changes is NOT to balance classes against each other, 
 but to balance all the weapons within the same class. Choosing which 
 weapon to use should be a ponderous choice, rather than simply defaulting 
 to the "ultimate" weapon because it is objectively better in every way. 
 Most original values are left untouched to preserve the core feel.

=============================================================================
                                  CHANGELOG
=============================================================================

-----------------------------------------------------------------------------
 [ GENERAL CHANGES ]
-----------------------------------------------------------------------------

# WEAPON SLOT REORGANIZATION
\
  All classes have been moved to a expanded 1-6 weapon slot configuration 
  via KEYCONF. This removes the "Slot Sharing" found in the original mod, 
  allowing every weapon in a class's arsenal to be accessed directly via 
  its own dedicated hotkey (1-6) without the need for weapon cycling or 
  inventory scrolling.

-----------------------------------------------------------------------------
 [ CRUSADER ]
-----------------------------------------------------------------------------

# HAVEN SEVER

  * Bugfix (Map Decoration Pushing & Bleeding)
    Fixed an issue where the secondary attack projectiles would violently push
    and apply bleeding status effects to indestructible map decorations upon
    impact. These effects are now properly restricted to actual monsters only.

# STAR HAMMER

  * Primary Attack
    Increased the cost of the first swing (2+2 -> 3+3), while the second swing 
    remains at 2+2. This increases the total cost of a standard 2-hit combo 
    by +25% (total 5+5). If only single swings are used, the cost is 
    consistently 3+3.

  * Tertiary Attack (Black Hole)
    Mana cost increased from 16+16 to 20+20 (+25%).

# STURM SPEAR

  * Primary Attack (Holy Shock Mutation)
    Damage increased by +11%.

  [Consideration]
  While playing, the mutated variant felt weaker than the Upgraded one. To verify,
  I ran frame-by-frame analysis and DPS calculations four separate times from
  scratch. It turned out the Upgraded version has roughly 11-12% higher DPS.
  The shock knockback is useful but unreliable, some monsters just don't
  get even fazed by it, and in conclusion wasn't powerful enough to compensate for
  burning 1 mana per hit and less damage.
  I bumped the mutated damage by +11% to match the upgraded DPS, making the
  mana cost a real tradeoff against the shock's stagger utility instead of a penalty.

# LIGHTBRINGER

  * Primary Attack (base version)
    The mana cost was decreased from 3 to 2 per shot. Raised slightly the projectile
    so it will aling with the crosshair.

    [Considerations]
    The base version felt inefficient compared to the rest of the Crusader's 
    arsenal. When compared to the Druid's Dagon's Cane—which features a 
    very similar primary attack—the Lightbringer was heavily outclassed.
    The upgraded version still costs 3 mana, sicne before it was giving
    +110% damage for the same mana cost (now is +110% damage but +50% mana),
    and the mutated version is even more efficient, albeit very imprecise.

  * Primary Attack (upgraded version)
    Spread pattern slightly changed, to make more viable over long distances.

    [Considerations]
    Unlike the base version's perfect accuracy, both the upgraded and 
    mutated variants were previously very imprecise at range. I often 
    defaulted to the mutated fire mode because its rapid, low-cost shots would 
    eventually hit distant targets. 
    The new pattern for the upgraded version ensures the three shots stay 
    reasonably packed together, making it a asemi- viable long-distance tool
    in contrast to the still intentionally imprecise mutated version, which
    shines in close quarters.

-----------------------------------------------------------------------------
 [ MYRMIDON ]
-----------------------------------------------------------------------------

  The Myrmidon's core strength is being a highly mana-efficient class. 
  While I personally prefer more intensive resource management, I've 
  avoided reckless cost increases to maintain the class's identity.

  The main issue was that the Quietus was so inexpensive compared to other 
  Myrmidon weapons that it effectively rendered them obsolete. These changes 
  ensure that choosing a weapon remains a meaningful decision.

# QUEENSBURY GAUNTLETS

  * Bugfix (Map Decoration Pushing & Bleeding)
    Fixed an issue where the Tertiary attack (Pilum projectile) would apply 
    bleeding status and a violent backward thrust to map decorations. 
    These effects and the resulting physics kick are now restricted to 
    monsters only, preventing the weapon from moving indestructible scenery
    or breaking map geometry.

# TIMON'S AXE

  * Primary Attack (Electric Mutation)
    Mana is now only consumed when successfully hitting an enemy. This 
    allows for "air swings" while repositioning without wasting mana.

    [RPG Lore]
    The electrical charge is held within the axe and only discharges upon 
    direct contact with a conductor (the target).

    [Considerations]
    Even with this buff to efficiency, the Electric Mutation remains the 
    most expensive primary attack in the Myrmidon's kit. However, its 
    stunlocking capability makes it the premier choice for efficiently 
    neutralizing single, high-threat targets.

# HAMMER

  * Primary Attack (Explosion Mutation)
    Mana is only consumed on impact.
    - Hit Enemy: 2G mana
    - Hit Wall/Floor: 1G mana

    [RPG Lore]
    Mana is expended only when the explosion is triggered. Strikes 
    against living targets are flavored to be more violent, requiring 
    more energy.

    [Considerations]
    Hitting the floor or walls produces an explosion. If this action were 
    completely free, players could easily exploit it to generate infinite 
    explosions for free area-of-effect damage. The 1G mana cost prevents 
    this exploit while still providing a discount for missed direct hits.

# HAMMER

  * Bugfix (Map Decoration Pushing)
    Fixed an issue where the rocks spawned by the Mutated Tertiary Attack
    (Ground Slam) would unconditionally apply a velocity kick to whatever
    they impacted upon death, causing immovable map decorations to shift
    and potentially break maps. The knockback is now restricted to actual
    monsters only via an ISMONSTER check on the impact target.

# BARDICHE

  I do honestly think that the Bardiche primary attack is overtuned.
  Even if it's slow It does a lot of damage, it have a lot of range,
  it hits multiple targets in an AoE, it forces pain on enemies, and has life leech.
  Compared to the Hammer primary attack, which is short range , single target,
  and does not force pain, it show even more the huge gap between the 
  primary attacks. Of course you cannot compare 2 weapons from the 
  primary attack alone, and yet this disparity made me want to avoid
  to use this weapons.

  * Primary Attack (Base & Upgraded)
    Drains 1 Green mana every 2 swings. If the player does not have enough 
    mana available, the attack suffers approximately -20% damage and range 
    penalties, and lifesteal on hit is disabled.

    [RPG Lore]
    The Bardiche's power scales with magical resonance. Without sufficient 
    mana reserves, the weapon's strikes lack the necessary force and reach.

    [Considerations]
    The Bardiche is difficult to balance—I genuinely feel its primary
    attack is overpowered. I wanted to avoid completely redesigning it
    since this patch aims for minimal, targeted changes. However, I also
    wanted to avoid adding a mana cost entirely, as free primary attacks
    define the Myrmidon's core identity. I ultimately settled on a hybrid
    solution: a modest mana drain paired with a fallback penalty system.
    This way, players low on mana can still use the weapon at reduced
    effectiveness rather than losing it entirely.

  * Primary Attack (Upgraded)
    The Upgraded version now correctly implements the promised +20% damage 
    and +20% AoE radius bonus to both slash attack variants:
    
    VERTICAL SLASH:
      Damage Before: +27% damage increase vs base
      Damage After:  +20% damage increase vs base
      Radius: Untouched (it's around from +17% to +20% vs base, not
        consistent for all components)
    
    HORIZONTAL SLASH:
      Damage Before: +83% damage increase vs base (yes, it was very high)
      Damage After:  +20% damage increase vs base
      Radius Before: This was weird, it was mostly shrinked vs base
      Radius After: It was standardized to increase in percentage like the 
        Vertical Slash, so around +20%. Which means horizontal slash now
        have a lot of range.
    
    [Considerations]
    The original upgrade was overtuned, especially if compared
    to other similar upgrades for the Axe, Gladius and Hammer of Retribution.
    The rebalance normalizes both variants to faithfully represent what the 
    in-game upgrade page promises: a clean +20% increase across both damage
    and Area of Effect radius.
    The Horizontal slash was especially weird, as the upgrade massively increased
    the damage and slightly reduce the AoE radius. I've noticed that with the 
    original values, the upgraded Horizontal was almost the same as the upgraded
    Vertical, while in the base version the Horizonal is a lot less damaging
    but have much more AoE radius.
    I preferred to keep the base attacks as they are, and just upscale the
    upgraded to +20% across the board. If think it's low, consider that increasing
    +20% and +20% is a moltiplicative total DPS increase, not additive.

  * Primary Attack (Triple Projectiles - Mutation)
    Consumes 1G mana per use. Projectiles will no longer spawn if mana is 
    depleted.

    [RPG Lore]
    The Bardiche uses a small amount of magical energy to manifest 
    ethereal projectiles during the swing.

    [Considerations]
    While it have a lot less AoE potential compared to the upgraded version,
    if you use the 3 projectiles as a shotgun it's a mssive single burst damage
    increase, that reduce by a LOT the TTK (Time to Kill). Plus you have 
    ranged projectiles to finish off weakened enemies from the distance.
    If you pair with the corpse explosion tertiary, it will cost 2 mana per swing,
    but with shorter TTK you also get earlier corpse explosion, I believe it's
    worth it.

  * Secondary Attack (Spiky Retort - Geyser/Spikes)
    Restricted the pull/knockback effect to only affect monsters (ISMONSTER check). 
    This prevents the weapon's projectiles from moving indestructible map decorations 
    and breaking map geometry.
    
# QUIETUS

  * Primary Attack
    Consumes 1+1 mana at the start of the combo, which then powers the 
    weapon for all 4 subsequent slashes.

    [RPG Lore]
    The blade is infused with a brief burst of magical resonance, 
    lasting just long enough for a whirlwind of strikes.

    [Considerations]
    Charging 1+1 per swing felt frustrating, as it punished players for 
    missing or overkilling enemies. This "per-combo" cost keeps it 
    economical while ensuring the "ultimate" weapon still has a 
    per-use price.

  * Secondary Attack (Torpedo)
    The visual effect while charging the torpedo now uses Additive rendering 
    instead of Translucent, maintaining a static opacity rather than getting 
    progressively more solid.

    [Considerations]
    Previously, the charging visual effect would grow in size and opacity, 
    eventually blocking the player's crosshair and making it difficult to 
    aim at targets while charging. The additive rendering ensures that the 
    energy effect looks bright but won't obstruct geometry or targets behind it.

  * Tertiary Attack
    Mana cost increased from 6+6 to 8+8 (+33%). The previous cost was 
    tuned too low, making this powerful ability overly spammable.

-----------------------------------------------------------------------------
 [ DRUID ]
-----------------------------------------------------------------------------

# DAGON'S CANE

  * Bugfix (Map Decoration Pushing)
    Fixed an issue where water impacts unconditionally pushed everything 
    around them, causing immovable map decorations to shift and potentially 
    break maps. This fix applies to the Upgraded Primary attack (Water Blast) 
    and all Secondary attacks (Base/Upgraded Geyser and Mutated Whirlpool), 
    ensuring they now only move real monsters.

  * Tertiary Fire (Aqua Charge - Mutation)
    Increased the overall damage of the water waves by approximately +100%, 
    making it a more viable offensive option during combat.
    Additionally, the wave now acts as a moving shield, blocking enemy 
    projectiles along its wide path.

    [Considerations]
    While the goal is to stay as faithful to the original as possible, 
    the mutated version felt like a downgrade compared to the standard 
    and upgraded versions which offer invulnerability and mobility. 
    By adding projectile deflection, it becomes a meaningful tactical 
    choice: trading personal mobility for powerful battlefield control 
    and moving cover.

# ICHIVAL

  * Primary Attack (Standard & Upgraded)
    Mana cost reduced from 8+8 to 5+5.
    Explosion max damage radius normalized for both versions to 128 (from 212).
    Standard version's full-damage radius set to 32 (from 170).
    Upgraded version's full-damage radius set to 64 (from 80).

    [Considerations]
    All of the weapon's fire modes (Secondary and Tertiary) were heavily 
    focused on large Area of Effect (AoE) damage, leaving it without an 
    effective single-target option. At 8 mana per shot, the primary fire 
    felt inefficient compared to the massively superior 10/18 mana alt-fires.
    Furthermore, while the upgraded version claimed a +15% damage increase, 
    ZDoom calculates missile damage independently. This means the direct hit 
    increase accounted for only a ~3.6% boost in total damage, which felt 
    underwhelming.
    By standardizing the maximum blast radius to 128, the weapon is repurposed 
    into a dedicated single-target tool. Giving the Standard version a very tight 
    full-damage radius (32) ensures strict single-target damage, while giving 
    the Upgraded version a wider full-damage radius (64) allows it to cleave 
    small clusters. This provides a highly noticeable combat improvement that 
    justifies the upgrade, without blindly inflating damage numbers.

-----------------------------------------------------------------------------
 [ MAGISTER ]
-----------------------------------------------------------------------------

# LAPIS FLOS

  * Bugfix (Map Decoration Pushing)
    Fixed an issue where the rocks and fists created by the primary attack
    would unconditionally push everything around them upon impact, causing
    immovable map decorations to shift and potentially break maps. This fix
    ensures that the displacement knockback now only affects real monsters.

# VIS EXPELLO

  * Bugfix (Map Decoration Pushing)
    Fixed an issue where the telekinetic force blasts (Primary and Secondary) 
    and the Force Stasis bubble (Tertiary) would violently displace 
    indestructible map objects and decorations. The push-back and 
    lifting effects are now properly restricted to monsters only.

# AESTUS

  * Secondary Attack (Meteor)
    Added direct impact damage to make the strike more effective against 
    single targets.

    [RPG Lore]
    The physical weight of a summoned celestial rock should be felt by 
    anything unfortunate enough to be directly under it.

    [Considerations]
    While the meteor is primarily an AoE attack, its actual radius isn't 
    massive, and it's unreliable. The initial direct impact felt underwhelming.
    The projectile often hits the geometry rather than the target, making it
    frustrating to land this attack regardless of which upgrade you take. A
    falling meteor will commonly explode in the sky due to collision quirks.
    Furthermore, the primary attack mutation provides better AoE coverage in
    almost every way.
    Adding a small, localized burst upon contact ensures that a direct hit 
    feels impactful, reducing the gap and preventing it from being completely
    outclassed.

  * Tertiary Attack (Fire Whip)
    Increased the casting speed of the fire whip wind-up animation (casting time reduced by ~40%).

    [Considerations]    
    As a short-range panic button, the original wind-up animation was too 
    slow and had to be used preemptively. This fundamentally defeated the 
    purpose of a point-blank defensive attack and crowd-control tool.

_____________________________________________________________________________

