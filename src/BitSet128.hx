package src;

import Union;

extern function BitSet128(l:Int, h:Int):BitSet128Class;

extern class BitSet128Class {
	// If you call these methods directly, the game will crash; see the below methods instead
	/*
		__band(right: BitSet128): BitSet128;
		__bnot(right: BitSet128): BitSet128;
		__bor(right: Union<BitSet128,TearFlags>): BitSet128;
		__bshl(right: BitSet128): BitSet128;
		__bshr(right: BitSet128): BitSet128;
		__eq(right: BitSet128): boolean; // eslint-disable-line no-underscore-dangle
		__le(right: BitSet128): boolean; // eslint-disable-line no-underscore-dangle
		__lt(right: BitSet128): boolean; // eslint-disable-line no-underscore-dangle
	 */
	// These are used to transpile:
	// tearFlags.bor(TearFlags.TEAR_SPECTRAL)
	// to:
	// tearFlags | TearFlags.TEAR_SPECTRAL
	// https://typescripttolua.github.io/docs/advanced/language-extensions/#operator-map-types
	@:op(a & b)
	public function band(b:Union<BitSet128Class, TearFlags>):BitSet128Class;
	@:op(!a)
	public function bnot():BitSet128Class;
	@:op(a | b)
	public function bor(b:Union<BitSet128Class, TearFlags>):BitSet128Class;
	@:op(a << b)
	public function bshl():BitSet128Class;
	@:op(a >> b)
	public function bshr():BitSet128Class;
}

typedef TearFlags = BitSet128Class
