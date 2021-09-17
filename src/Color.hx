package src;

/**
 * @param r
 * @param g
 * @param b
 * @param a Default is 1.
 * @param ro Default is 0, range is 0-1.
 * @param go Default is 0, range is 0-1.
 * @param bo Default is 0, range is 0-1.
 */
extern function Color(r:Float, g:Float, b:Float, ?a:Float, ?ro:Int, ?go:Int, ?bo:Int):ColorClass;

extern class ColorClass {
	public function Reset():Void;

	public function SetColorize(red:Float, green:Float, blue:Float, amount:Float):Void;

	public function SetOffset(redOffset:Float, greenOffset:Float, blueOffset:Float):Void;

	public function SetTint(redTint:Float, greenTint:Float, blueTint:Float, alphaTint:Float):Void;

	public var A:Float;
	public var B:Float;
	public var BO:Float;
	public var G:Float;
	public var GO:Float;
	public var R:Float;
	public var RO:Float;

	static var Default:ColorClass;

	static public function Lerp(m1:ColorClass, m2:ColorClass, t:Float):ColorClass;
}
