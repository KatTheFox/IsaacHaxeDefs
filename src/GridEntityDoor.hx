package src;

extern class GridEntityDoor extends GridEntity {
    public function Bar(): Void;
    public function CanBlowOpen(): Bool;
    public function Close(force: Bool): Void;
    public function GetSpriteOffset(): VectorClass;
    public function IsBusted(): Bool;
    public function IsKeyFamiliarTarget(): Bool;
    public function IsLocked(): Bool;
    public function IsOpen(): Bool;
    public function IsRoomType(roomType: RoomType): Bool;
    public function IsTargetRoomArcade(): Bool;
    public function Open(): Void;
    public function SetLocked(locked: Bool): Void;
    public function SetRoomTypes(currentRoomType: RoomType, targetRoomType: RoomType): Void;
    public function SpawnDust(): Void;
    public function TryBlowOpen(fromExplosion: Bool, source: Entity): Bool;
    public function TryUnlock(player: EntityPlayer, force: Bool): Bool;
  
    public var Busted: Bool;
    public var CloseAnimation: String;
    public var CurrentRoomType: RoomType;
    public var Direction: Direction;
    public var ExtraSprite: Sprite;
    public var ExtraVisible: Bool;
    public var LockedAnimation: String;
    public var OpenAnimation: String;
    public var OpenLockedAnimation: String;
    // PreviousState: State; // State is not implemented (it is userdata and not an Int)
    public var PreviousVariant: DoorVariant;
    public var Slot: DoorSlot;
    public var TargetRoomIndex: Int;
    public var TargetRoomType: RoomType;
  }
  