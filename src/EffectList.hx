package src;

interface EffectList {
	public function Get(idx:Int):Union<TemporaryEffect, Null<Int>>;

	public var Size:Int;
}
