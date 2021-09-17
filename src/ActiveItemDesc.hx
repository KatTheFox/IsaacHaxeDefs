package src;

import StdTypes.Int;
import Union;
import StdTypes.Float;

interface ActiveItemDesc {
	var BatteryCharge:Int;
	var Charge:Int;
	var Item:Union<CollectibleType, Int>;

	/** How close the item is to gaining another charge (0-1 range, used by 4.5 Volt). */
	var PartialCharge:Float;

	/**
	 * Number of frames before an item with a timed cooldown can recharge again.
	 * (Used by Spin To Win to pause its recharge after fully discharging it.)
	 */
	var TimedRechargeCooldown:Int;

	/**
	 * Holds extra information for some active items (such as the number of uses for Jar of Wisps)
	 */
	var VarData:Int;
}
