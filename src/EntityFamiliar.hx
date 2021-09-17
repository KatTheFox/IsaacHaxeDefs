package src;

extern class EntityFamiliar extends Entity {
	public function AddCoins(value:Int):Void;
	public function AddHearts(hearts:Int):Void;
	public function AddKeys(keys:Int):Void;
	public function AddToDelayed():Void;
	public function AddToFollowers():Void;
	public function AddToOrbit(layer:Int):Void;
	public function FireProjectile(direction:VectorClass):EntityTear;
	public function FollowParent():Void;
	public function FollowPosition(position:VectorClass):Void;
	public function GetOrbitPosition(position:VectorClass):VectorClass;
	public function MoveDelayed(numFrames:Int):Void;
	public function MoveDiagonally(speed:Float):Void;

	/**
	 * @param maxDistance
	 * @param frameInterval Default is 13.
	 * @param flags Default is 0.
	 * A combination of the following flags (none of these are set by default):
	 * 1: Allow switching to a better target even if we already have one
	 * 2: Don't prioritize enemies that are close to our owner
	 * 4: Prioritize enemies with higher HP
	 * 8: Prioritize enemies with lower HP
	 * 16: Give lower priority to our current target
	 * (this makes us more likely to switch between targets)
	 * @param coneDir Default is Vector.Zero.
	 * If ~= Vector.Zero, searches for targets in a cone pointing in this direction.
	 * @param coneAngle Default is 15.
	 * If ConeDir ~= Vector.Zero, sets the half angle of the search cone in degrees
	 * (45 results in a search angle of 90 degrees).
	 */
	public function PickEnemyTarget(maxDistance:Float, ?frameInterval:Int, ?flags:Int, ?coneDir:VectorClass, ?coneAngle:Float):Void;

	public function PlayChargeAnim(direction:Direction):Void;
	public function PlayFloatAnim(direction:Direction):Void;
	public function PlayShootAnim(direction:Direction):Void;
	public function RecalculateOrbitOffset(layer:Int, add:Bool):Int;
	public function RemoveFromDelayed():Void;
	public function RemoveFromFollowers():Void;
	public function RemoveFromOrbit():Void;
	public function Shoot():Void;

	public var Coins:Int;
	public var FireCooldown:Int;
	public var HeadFrameDelay:Int;
	public var Hearts:Int;
	public var Keys:Int;
	public var LastDirection:Direction;
	public var MoveDirection:Direction;
	public var OrbitAngleOffset:Float;
	public var OrbitDistance:VectorClass;
	public var Player:EntityPlayer;
	public var RoomClearCount:Int;
	public var ShootDirection:Direction;
	public var State:Int;
	public static function GetOrbitDistance(layer:Int):VectorClass;
}
