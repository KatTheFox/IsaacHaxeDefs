package src;

interface CardConfigList {
	public function Get(idx:Int):Union<ItemConfigCard, Null<Int>>;
	var Size(default, never):Int;
}
