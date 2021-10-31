package src;

extern class EntityPickup extends Entity {
	public function AppearFast():Void;
	public function CanReroll():Bool;
	public function GetCoinValue():Int;
	public function IsShopItem():Bool;

	/**
	 * @param entityType
	 * @param variant
	 * @param subType
	 * @param keepPrice Default is false.
	 * @param keepSeed If set to true, keeps the initial RNG seed of the pickup instead of rerolling
	 * it. Default is false.
	 * @param ignoreModifiers If set to true, ignores item effects that might turn this pickup Into
	 * something other than the specified variant and subtype. Default is false.
	 */
	public function Morph(entityType:Union<EntityType, Int>, variant:Int, subType:Int, ?keepPrice:Bool, ?keepSeed:Bool, ?ignoreModifiers:Bool):Void;

	public function PlayDropSound():Void;
	public function PlayPickupSound():Void;

	/**
	 * @param player Default is undefined.
	 */
	public function TryOpenChest(?player:EntityPlayer):Bool;

	public var AutoUpdatePrice:Bool;
	public var Charge:Int;

	/**
	 * Any non-zero value causes the item to form an option group with any other item with the same
	 * OptionsPickupIndex value.
	 *
	 * When an item belonging to an option group is picked up, all other items belonging to the same
	 * group disappear.
	 *
	 * 0 is the default value and means the item doesn't belong to any group.
	 */
	public var OptionsPickupIndex:Int;

	public var Price:Int;
	public var ShopItemId:Int;
	public var State:Int;
	public var Timeout:Int;
	public var Touched:Bool;
	public var Wait:Int;
}
