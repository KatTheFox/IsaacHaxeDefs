package src;

extern class EntityLaser extends Entity {
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

	public function GetEndPoint():VectorClass;
	// GetNonOptimizedSamples(): Readonly<HomingLaserSampleList>; // HomingLaser is not implemented
	public function GetRenderZ():Int;

	// GetSamples(): Readonly<HomingLaserSampleList>; // HomingLaser is not implemented

	/**
	 * Be aware that this really takes a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function HasTearFlags(flags:TearFlags):Bool;

	public function IsCircleLaser():Bool;
	public function IsSampleLaser():Bool;
	public function SetActiveRotation(delay:Int, angleDegrees:Float, rotationSpeed:Float, timeoutComplete:Bool):Void;
	public function SetBlackHpDropChance(chance:Float):Void;
	// SetHomingType(laserHomingType: LaserHomingType): Void; // LaserHomingType is not implemented
	public function SetMaxDistance(distance:Float):Void;
	public function SetMultidimensionalTouched(value:Bool):Void;
	public function SetOneHit(value:Bool):Void;
	public function SetTimeout(value:Int):Void;
	public var Angle:Float;
	public var AngleDegrees:Float;
	public var BlackHpDropChance:Float;
	public var BounceLaser:Entity;
	public var CurveStrength:Float;
	public var DisableFollowParent:Bool;
	public var EndPoint:VectorClass;
	public var FirstUpdate:Bool;
	public var GridHit:Bool;
	// HomingLaser: HomingLaser; // HomingLaser is not implemented
	// HomingType: LaserHomingType; // LaserHomingType is not implemented
	public var IsActiveRotating:Bool;
	public var LaserLength:Float;
	public var LastAngleDegrees:Float;
	public var MaxDistance:Float;
	public var OneHit:Bool;
	public var ParentOffset:VectorClass;
	public var Radius:Float;
	public var RotationDegrees:Float;
	public var RotationDelay:Int;
	public var RotationSpd:Float;
	// SampleLaser: Bool; // Should use IsSampleLaser() instead
	public var Shrink:Bool;
	public var StartAngleDegrees:Float;

	/**
	 * Be aware that this is really a BitSet128 instead of an integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public var TearFlags:Int;

	public var Timeout:Int;
	public static function CalculateEndPoint(start:VectorClass, dir:VectorClass, positionOffset:VectorClass, parent:Entity, margin:Float):Vector;
	public static function ShootAngle(variant:Union<LaserVariant, Int>, sourcePos:VectorClass, angleDegrees:Float, timeout:Int, posOffset:VectorClass,
		source:Entity):EntityLaser;
}
