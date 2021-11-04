package src;

extern function EntityPtr(entity: Entity): EntityPtr;

extern class EntityPtrClass {
  public function SetReference(ref: Entity): Void;

  public var Ref(default,never): Null<Entity>;
}
