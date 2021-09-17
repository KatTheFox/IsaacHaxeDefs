package src;

import Union;
import StdTypes.Int;
import StdTypes.Bool;
import StdTypes.Float;

extern class Entity {
	public function AddBurn(source:EntityRef, duration:Int, damage:Float):Void;
	public function AddCharmed(source:EntityRef, duration:Int):Void;

	public function AddConfusion(source:EntityRef, duration:Int, ignoreBosses:Bool):Void;

	public function AddEntityFlags(entityFlags:EntityFlag):Void;

	public function AddFear(source:EntityRef, duration:Int):Void;

	public function AddFreeze(source:EntityRef, duration:Int):Void;

	public function AddHealth(hitPoInts:Float):Void;

	public function AddMidasFreeze(source:EntityRef, duration:Int):Void;

	public function AddPoison(source:EntityRef, duration:Int, damage:Float):Void;

	public function AddShrink(source:EntityRef, duration:Int):Void;

	public function AddSlowing(source:EntityRef, duration:Int, slowValue:Float, slowColor:Color):Void;

	public function AddVelocity(velocity:Vector):Void;

	public function BloodExplode():Void;

	// CanShutDoors is deliberately not implemented here because it conflicts with
	// EntityNPC.CanShutDoors
	// CanShutDoors(): Bool;
	public function ClearEntityFlags(entityFlags:EntityFlag):Void;

	public function CollidesWithGrid():Bool;

	public function Die():Void;

	public function Exists():Bool;

	public function GetBossID():Union<BossIDs, Int>;

	public function GetColor():Color;

	public function GetData():Map<String, Any>;

	public function GetDropRNG():RNG;

	public function GetEntityFlags():EntityFlag;

	public function GetLastChild():Entity;

	public function GetLastParent():Entity;

	public function GetSprite():Sprite;

	public function HasCommonParentWithEntity(other:Entity):Bool;

	public function HasEntityFlags(entityFlags:EntityFlag):Bool;

	public function HasFullHealth():Bool;

	public function HasMortalDamage():Bool;

	public function IsActiveEnemy(includeDead:Bool):Bool;

	public function IsBoss():Bool;

	public function IsDead():Bool;

	public function IsEnemy():Bool;

	public function IsFlying():Bool;

	public function IsFrame(frame:Int, offset:Int):Bool;

	public function IsInvincible():Bool;

	public function IsVisible():Bool;

	public function IsVulnerableEnemy():Bool;

	public function Kill():Void;

	public function MultiplyFriction(value:Float):Void;

	public function PostRender():Void;

	public function Remove():Void;

	public function RemoveStatusEffects():Void;

	public function Render(offset:Vector):Void;

	public function RenderShadowLayer(offset:Vector):Bool;

	/**
	 *
	 * @param color
	 * @param duration
	 * @param priority
	 * @param fadeout Default value is false.
	 * @param share Default value is false.
	 */
	public function SetColor(color:Color, duration:Int, priority:Int, ?fadeout:Bool, ?share:Bool):Void;

	public function SetSize(size:Float, sizeMulti:Vector, numGridCollisionPoInts:Int):Void;

	public function SetSpriteFrame(animationName:String, frameNum:Int):Void;

	public function SetSpriteOverlayFrame(animationName:String, frameNum:Int):Void;

	public function TakeDamage(damage:Float, damageFlags:Int, source:EntityRef, damageCountdown:Int):Bool;

	public function ToBomb():Null<EntityBomb>;

	public function ToEffect():Null<EntityEffect>;

	public function ToFamiliar():Null<EntityFamiliar>;

	public function ToKnife():Null<EntityKnife>;

	public function ToLaser():Null<EntityLaser>;

	public function ToNPC():Null<EntityNPC>;

	public function ToPickup():Null<EntityPickup>;

	public function ToPlayer():Null<EntityPlayer>;

	public function ToProjectile():Null<EntityProjectile>;

	public function ToTear():Null<EntityTear>;

	public function Update():Void;

	public var Child:Null<Entity>;
	public var CollisionDamage:Float;
	public var DepthOffset:Float;
	public var DropSeed(default, never):Int;
	public var EntityCollisionClass:EntityCollisionClass;
	public var FlipX:Bool;
	public var FrameCount(default, never):Int;
	public var Friction:Float;
	public var GridCollisionClass:EntityGridCollisionClass;
	public var HitPoInts:Float;
	public var Index(default, never):Int;
	public var InitSeed(default, never):Int;
	public var Mass:Float;
	public var MaxHitPoInts:Float;
	public var Parent:Null<Entity>;
	public var Position:Vector;
	public var PositionOffset(default, never):Vector;
	public var RenderZOffset:Int;
	public var Size:Float;
	public var SizeMulti:Vector;
	public var SpawnGridIndex(default, never):Int;
	public var SpawnerEntity:Null<Entity>;
	public var SpawnerType:Union<EntityType, Int>;
	public var SpawnerVariant:Int;
	public var SplatColor(default, never):Color;
	public var SpriteOffset:Vector;
	public var SpriteRotation:Float;
	public var SpriteScale:Vector;
	public var SubType:Int;
	public var Target:Null<Entity>;
	public var TargetPosition(default, never):Vector;
	public var Type(default, never):Union<EntityType, Int>;
	public var Variant:Int;
	public var Velocity:Vector;
	public var Visible:Bool;
}
