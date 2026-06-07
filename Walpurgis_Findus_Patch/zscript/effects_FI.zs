/* This stun effect works based on Pain chance, it basically trigger indipendently.
Multiple applications will stack, up to maximum amount tics, so be careful or
the stun will last very long time.
*/

// Base Stun effect class, never used it directly
class StunEffect_Findus : Inventory
{
	string DecorativeEffect; //effects to be spawned
	string PainType; // Pain type to check
	int AdditionalChance;
	property DecorativeEffect : DecorativeEffect;
	property PainType : PainType;
	property AdditionalChance : AdditionalChance;

    Default
    {
        Inventory.MaxAmount 255; //Max stackable tics, each 1/35 of a sec
        +INVENTORY.UNDROPPABLE
        +INVENTORY.UNTOSSABLE
		
		StunEffect_Findus.AdditionalChance 0; // extra Multiplicative % Chance to trigger if pain fails
		/*Example
			if a monster have PainChance 40 then it have roughly 15% chance,
			if I set AdditionalChance 20 it have additional 20%, which means
			1-((1-0.15)*(1-0.2)) = 32%
		*/
    }
	
	override bool TryPickup(in out Actor toucher){
		if(!toucher || !toucher.bISMONSTER)
			return false;
		bool altChance = random(0,99) < AdditionalChance;
		if(!(toucher.TriggerPainChance(PainType) || altChance))
			return false;
		return super.TryPickup(toucher);
	}

    override void DoEffect()
    {
        super.DoEffect();
		
        if (!Owner || Owner.Health <= 0) {
			Destroy();
			return;
		}
		
		Spawn(DecorativeEffect, Owner.pos + (random(-Owner.Radius, +Owner.Radius), random(-Owner.Radius, +Owner.Radius), random(0, Owner.Height)));
		//if(Owner.TriggerPainChance(PainType)) {
			// Doom uses -1 for "infinite" duration states (like Spawn or Death states).
			// We must make sure we don't accidentally add tics to an infinite state.
			// 0 tics also should not be affected
		if (Owner.tics > 0) {
			Owner.tics += 1;
		}
		
		Amount --;
		if (Amount <= 0)
			Destroy();
    }
}

class StunEffectElectric_Findus : StunEffect_Findus {


	Default {
		StunEffect_Findus.DecorativeEffect "DecorativeZaps";
		StunEffect_Findus.PainType "Electric";
		StunEffect_Findus.AdditionalChance 20;
	}
}

class StunEffectHolyShock_Findus : StunEffect_Findus {


	Default {
		StunEffect_Findus.DecorativeEffect "DecorativeHolyZaps";
		StunEffect_Findus.PainType "HolyShock";
		StunEffect_Findus.AdditionalChance 20;
	}
}