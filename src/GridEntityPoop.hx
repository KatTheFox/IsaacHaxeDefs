package src;
extern class GridEntityPoop extends GridEntity {
    public function ReduceSpawnRate(): Void;
    public function RespawnRedPoop(): Void;
  
    public var ReducedSpawnRate: Bool;
    public var ReviveTimer: Int;
    public var StateAnimation: String;
    public var UnderPlayer: Bool;
  }
  