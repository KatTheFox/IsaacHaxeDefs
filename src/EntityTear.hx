package src;

extern class EntityTear extends Entity {
    /**
     * Be aware that this really takes a BitSet128 instead of an Integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     */
    public function AddTearFlags(flags: TearFlags): Void;
    public function ChangeVariant(newVariant: Union<TearVariant,Int>): Void;
    /**
     * Be aware that this really takes a BitSet128 instead of an Integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     */
    public function ClearTearFlags(flags: TearFlags): Void;
    /**
     * Be aware that this really takes a BitSet128 instead of an Integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     */
    public function HasTearFlags(flags: TearFlags): Bool;
    public function ResetSpriteScale(): Void;
    public function SetDeadEyeIntensity(Intensity: Float): Void;
    public function SetKnockbackMultiplier(multiplier: Float): Void;
    public function SetParentOffset(offset: Vector): Void;
    public function SetWaitFrames(value: Int): Void;
  
    public var BaseDamage(default,never): Float;
    public var BaseScale(default,never): Float;
public var Bounced: Bool;
public var CanTriggerStreakEnd: Bool;
public var ContinueVelocity: VectorClass;
public var FallingAcceleration: Float;
public var FallingSpeed: Float;
public var Height: Float;
public var HomingFriction: Float;
public var KnockbackMultiplier: Float;
public var ParentOffset: VectorClass;
    public var PosDisplacement(default,never): VectorClass;
public var Rotation: Float;
public var Scale: Float;
public var StickDiff: VectorClass;
public var StickTarget: Entity;
public var StickTimer: Int;
    /**
     * Be aware that this is really a BitSet128 instead of an Integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     */
public var TearFlags: Int;
    /**
     * - In each run, the game keeps track of how many tears have been fired by the player in total.
     * This is used for items such as Lead Pencil.
     * - TearIndex represents this tear counter.
     * - It is 0-indexed, meaning that the first tear fired by the player on a run will have a
     * TearIndex of 0, the second tear fired by the player on a run will have a TearIndex of 1,and so
     * on.
     */
    public var TearIndex(default,never): Int;
public var WaitFrames: Int;
  }
  