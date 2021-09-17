package src;

interface CostumeConfigList {
	public function Get(idx:Int):Union<ItemConfigCostume, Null<Int>>;

	public var Size(default, never):Int;
}
