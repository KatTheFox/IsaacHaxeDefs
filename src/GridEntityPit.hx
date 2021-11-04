package src;

extern class GridEntityPit extends GridEntity {
    public function MakeBridge(bridgeSource: Null<GridEntity>): Void;
    public function SetLadder(value: Bool): Void;
    public function UpdateCollision(): Void;
  
    public var HasLadder: Bool;
  }
  