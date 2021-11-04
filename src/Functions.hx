package src;

extern typedef PtrHash = Int & { __ptrHashBrand: Any };

extern function Game(): Game;
/**
 * Comparing two API objects directly in mod code will not work, even if the Lua metadata points to
 * the same pointer in memory. As a workaround, use this function to get a numerical hash of the
 * object.
 *
 * A `PtrHash` object is simply a branded number for better type safety and code clarity.
 */
extern function GetPtrHash(
  pointer:Union3< Entity , RoomDescriptor , RoomDescriptorReadOnly>
): PtrHash;
/** Returns a random Integer between 0 and 2^32. */
extern function Random(): Int;
/**
 * Returns a random vector between (-1, -1) and (1, 1).
 * Multiply this vector by a number for larger random vectors.
 */
extern function RandomVector(): VectorClass;
