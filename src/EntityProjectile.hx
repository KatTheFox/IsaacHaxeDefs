package src;

extern class EntityProjectile extends Entity {
    public function AddChangeFlags(flags: Int): Void;
    public function AddFallingAccel(value: Float): Void;
    public function AddFallingSpeed(value: Float): Void;
    public function AddHeight(value: Float): Void;
    public function AddProjectileFlags(flags: ProjectileFlags): Void;
    public function AddScale(value: Float): Void;
    public function ClearProjectileFlags(flags: Int): Void;
    public function HasProjectileFlags(flags: Int): Void;
  
    public var Acceleration: Float;
    public var ChangeFlags: ProjectileFlags;
    public var ChangeTimeout: Int;
    public var ChangeVelocity: Float;
    public var CurvingStrength: Float;
    public var Damage: Float;
    public var DepthOffset: Float;
    public var FallingAccel: Float;
    public var FallingSpeed: Float;
    public var Height: Float;
    public var HomingStrength: Float;
    public var ProjectileFlags: ProjectileFlags;
    public var Scale: Float;
    public var WiggleFrameOffset: Int;
  }
  