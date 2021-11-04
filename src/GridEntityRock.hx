package src;

extern class GridEntityRock extends GridEntity {
    public function GetBigRockFrame(): Int;
    public function GetRubbleAnim(): String;
    public function SetBigRockFrame(frame: Int): Void;
    public function UpdateAnimFrame(): Void;
  
    public var Anim: String;
    public var FrameCnt: Int;
    public var RubbleAnim: String;
  }
  