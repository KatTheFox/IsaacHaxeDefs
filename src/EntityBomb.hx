package src;

extern class EntityBomb extends Entity {
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

	/**
	 * Be aware that this really takes a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function HasTearFlags(flags:TearFlags):Bool;

	public function SetExplosionCountdown(countdown:Int):Void;

	public var ExplosionDamage:Float;

	/**
	 * Be aware that this is really a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public var Flags:Int;

	public var IsFetus:Bool;
	public var RadiusMultiplier:Float;
}
