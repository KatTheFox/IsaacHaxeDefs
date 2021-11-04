package src;

extern function EntityRef(entity: Null<Entity>): EntityRef;

extern class EntityRefClass {
public var Entity: Entity;
public var IsCharmed: Bool;
public var IsFriendly: Bool;
public var Position: VectorClass;
public var SpawnerType: Union<EntityType,Int>;
public var SpawnerVariant: Int;
public var Type: Union<EntityType,Int>;
public var Variant: Int;
}
