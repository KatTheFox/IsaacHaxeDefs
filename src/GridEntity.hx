package src;

extern class GridEntity {
    public function Destroy(immediate: Bool): Bool;
    public function GetGridIndex(): Int;
    /** The RNG returned is a reference (i.e. not a copy). */
    public function GetRNG(): RNG;
    public function GetSaveState(): GridEntityDesc;
    /** The Sprite returned is a reference (i.e. not a copy). */
    public function GetSprite(): Sprite;
    public function GetType(): Union<GridEntityType ,Int>;
    public function GetVariant(): Int;
    public function Hurt(damage: Int): Bool;
    public function Init(seed: Int): Void;
    public function PostInit(): Void;
    public function Render(offset: Vector): Void;
    public function SetType(gridEntityType: GridEntityType): Void;
    public function SetVariant(variant: Int): Void;
    public function ToDoor(): Null<GridEntityDoor>;
    public function ToPit(): Null<GridEntityPit>;
    public function ToPoop(): Null<GridEntityPoop>;
    public function ToPressurePlate(): Null<GridEntityPressurePlate>;
    public function ToRock(): Null<GridEntityRock>;
    public function ToSpikes(): Null<GridEntitySpikes>;
    public function ToTNT(): Null<GridEntityTNT>;
    public function Update(): Void;
  
    public var CollisionClass: GridCollisionClass;
    /**
     * Use the `GetSaveState()` method instead of accessing Desc directly, as it is a deprecated
     * property.
     */
    public var Desc: Null<Any> ;// GridEntityDesc;
    public var Position(default,never): VectorClass;
    public var State: Int;
    public var VarData: Int;
  }
  