package src;

extern function Vector(x:Float, y:Float):VectorClass;

extern class VectorClass {
	function Clamp(minX:Float, minY:Float, maxX:Float, maxY:Float):Void;
	function Clamped(minX:Float, minY:Float, maxX:Float, maxY:Float):VectorClass;
	function Cross(secondVector:VectorClass):Float;
	function Distance(secondVector:VectorClass):Float;
	function DistanceSquared(secondVector:VectorClass):Float;
	function Dot(secondVector:VectorClass):Float;

	/**
	 * The game returns degrees in the following format:
	 *
	 * - Right: 0
	 * - Up: -90
	 * - Left: 180
	 * - Down: 90
	 */
	function GetAngleDegrees():Float;

	function Length():Float;
	function LengthSquared():Float;
	function Lerp(secondVector:VectorClass, t:Float):VectorClass;
	function Normalize():Void;
	function Normalized():VectorClass;
	function Resize(newLength:Float):Void;
	function Resized(newLength:Float):VectorClass;
	function Rotated(angleDegrees:Float):VectorClass;

	/** Use the "add()" method instead. */
	function __add(right:Null<VectorClass>):VectorClass;

	/** Use the "div()" method instead. */
	function __div(modifier:Null<VectorClass>):VectorClass;

	/** Use the "mul()" method instead. */
	function __mul(modifier:Null<VectorClass>):VectorClass;

	/** Use the "sub()" method instead. */
	function __sub(right:Null<VectorClass>):VectorClass;

	// Not implemented since it can cause the game to crash
	// __unm(right: Null<VectorClass>): VectorClass;
	var X:Float;
	var Y:Float;
	// Helper functions for adding and so forth
	// https://typescripttolua.github.io/docs/advanced/language-extensions/#operator-map-types
	@:op(a + b)
	public function add(b:VectorClass):VectorClass;

	// Vector multiplication was extended to allow Vectors in Repentance
	// However, this functionality does not apply to division
	@:op(a / b)
	public function div(b:Float):VectorClass;
	@:op(a * b)
	public function mul(b:Union<Float, VectorClass>):VectorClass;
	@:op(a - b)
	public function sub(b:VectorClass):VectorClass;
}
