package src;

extern class EntityEffect extends Entity {
	public function FollowParent(parent:Entity):Void;
	public function SetDamageSource(entityType:Union<EntityType, Int>):Void;
	public function SetRadii(min:Float, max:Float):Void;
	public function SetTimeout(timeout:Int):Void;
	public var DamageSource:Union<EntityType, Int>;
	public var FallingAcceleration:Float;
	public var FallingSpeed:Float;
	public var IsFollowing:Bool;
	public var LifeSpan:Int;
	public var MaxRadius:Float;
	public var MinRadius:Float;
	public var ParentOffset:VectorClass;
	public var Rotation:Float;
	public var Scale:Float;
	public var State:Int;
	public var Timeout:Int;
	public var m_Height:Float;
}
