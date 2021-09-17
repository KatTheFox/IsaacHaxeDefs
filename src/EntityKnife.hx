package src;

extern class EntityKnife extends Entity {
	/**
	 * Be aware that this really takes a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function AddTearFlags(flags:TearFlags):Void;

	/**
	 * Be aware that this really takes a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function ClearTearFlags(flags:TearFlags):Void;

	public function GetKnifeDistance():Float;
	public function GetKnifeVelocity():Float;
	public function GetRenderZ():Int;

	/**
	 * Be aware that this really takes a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function HasTearFlags(flags:TearFlags):Bool;

	public function IsFlying():Bool;
	public function Reset():Void;
	public function SetPathFollowSpeed(speed:Float):Void;
	public function Shoot(charge:Float, range:Float):Void;

	public var Charge:Float;
	public var MaxDistance:Float;
	public var PathFollowSpeed:Float;
	public var PathOffset:Float;
	public var Rotation:Float;
	public var RotationOffset:Float;
	public var Scale:Float;

	/**
	 * Be aware that this is really a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public var TearFlags:Int;
}
