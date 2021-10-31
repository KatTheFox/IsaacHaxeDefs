package src;

extern class EntityNPC extends Entity {
	public function AnimWalkFrame(horizontalAnim:String, verticalAnim:String, speedThreshold:Float):Void;
	public function CalcTargetPosition(distanceLimit:Float):VectorClass;
	public function CanBeDamagedFromVelocity(velocity:VectorClass):Bool;
	public function CanReroll():Bool;
	public function FireBossProjectiles(numProjectiles:Int, targetPos:VectorClass, trajectoryModifier:Float,
		projectileParams:ProjectileParams):EntityProjectile;
	public function FireProjectiles(position:VectorClass, velocity:VectorClass, projectilesMode:ProjectilesMode, projectileParams:ProjectileParams):Void;
	public function GetAliveEnemyCount():Int;
	public function GetBossColorIdx():Int;
	public function GetChampionColorIdx():ChampionColor;
	public function GetPlayerTarget():Entity;
	public function IsBoss():Bool;
	public function IsChampion():Bool;
	public function KillUnique():Void;

	/**
	 * @param seed
	 * @param championColor The type of champion to turn this enemy Into.
	 * (-1 results in a random champion type.)
	 * Default is -1.
	 * @param init Set to true when called while initializing the enemy, false otherwise.
	 * Default is false.
	 */
	public function MakeChampion(seed:Int, ?championColorIdx:ChampionColor, ?init:Bool):Void;

	public function MakeSplat(size:Float):EntityEffect;
	public function Morph(entityType:Union<EntityType, Int>, variant:Int, subType:Int, championColorIdx:ChampionColor):Bool;
	public function PlaySound(soundEffect:Union<SoundEffect, Int>, volume:Float, frameDelay:Int, loop:Bool, pitch:Float):Void;
	public function QueryNPCsGroup(groupIdx:Int):EntityList;
	public function QueryNPCsSpawnerType(spawnerType:Union<EntityType, Int>, entityType:Union<EntityType, Int>, onlyEnemies:Bool):EntityList;
	public function QueryNPCsType(entityType:EntityNPC, variant:Int):EntityList;
	public function ResetPathFinderTarget():Void;

	// EntityNPC.CanShutDoors conflicts with Entity.CanShutDoors(),
	// but the latter is deliberately not implemented so that we can use the property in EntityNPC
	public var CanShutDoors:Bool;
	public var ChildNPC(default, never):EntityNPC;
	public var EntityRef:Entity;
	public var GroupIdx:Int;
	public var I1:Int;
	public var I2:Int;
	public var ParentNPC(default, never):EntityNPC;
	public var Pathfinder:PathFinder;
	public var ProjectileCooldown:Int;
	public var ProjectileDelay:Int;
	public var Scale:Floar;

	/**
	 * This has a type of `Union<NpcState, Int>` so that other enums can be used to represent more specific
	 * entities.
	 */
	public var State:Union<NpcState, Int>;

	public var StateFrame:Int;
	public var V1:VectorClass;
	public var V2:VectorClass;
	public static function ThrowSpider(position:VectorClass, spawner:Entity, targetPos:VectorClass, big:Bool, yOffset:Float):Void;
}
