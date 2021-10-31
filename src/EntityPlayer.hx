package src;

extern class EntityPlayer extends Entity {
	/** 1 unit is half a heart. Remove them with negative numbers. */
	public function AddBlackHearts(blackHearts:Int):Void;

	/** This adds TaInted Bethany's blood charges. Only works on TaInted Bethany. */
	public function AddBloodCharge(num:Int):Void;

	/**
	 * @param amount
	 * @param position
	 * @param target This argument is not optional. If you want to spawn a fly without a target, then
	 * you must explicitly pass undefined.
	 */
	public function AddBlueFlies(amount:Int, position:VectorClass, target:Null<Entity>):Entity;

	public function AddBlueSpider(position:VectorClass):Entity;

	/** Remove them with negative numbers. */
	public function AddBombs(amount:Int):Void;

	/** Remove them with negative numbers. */
	public function AddBoneHearts(hearts:Int):Void;

	/** Remove them with negative numbers. */
	public function AddBrokenHearts(hearts:Int):Void;

	/**
	 * Used to specify the kinds of stats that should be evaluated the next time `EvaluateCache ( )` is
	 * run.
	 */
	public function AddCacheFlags(cacheFlags:CacheFlag):Void;

	public function AddCard(card:Union<Card, Int>):Void;

	/** Remove them with negative numbers. */
	public function AddCoins(amount:Int):Void;

	/**
	 * @param collectibleType
	 * @param charge Default is 0.
	 * @param firstTimePickingUp Setting this to false will not spawn or add consumables for the item
	 * and will not cause it to count towards transformations. Default is true.
	 * @param activeSlot Sets the active slot this collectible should be added to.
	 * Default is ActiveSlot.SLOT_PRIMARY.
	 * @param varData Sets the variable data for this collectible  (this is used to store extra data
	 * for some active items like the number of uses for Jar of Wisps ).
	 * Default is 0.
	 */
	public function AddCollectible(collectibleType:Union<CollectibleType, Int>, ?charge:Int, ?firstTimePickingUp:Bool, ?activeSlot:ActiveSlot,
		?varData:Int):Void;

	public function AddControlsCooldown(cooldown:Int):Void;
	public function AddCostume(itemConfigItem:ItemConfigItem, itemStateOnly:Bool):Void;

	/**
	 * Disables all item effects similarly to the abandoned mineshaft in Mines II.
	 * This also temporarily removes consumables and pocket items.
	 */
	public function AddCurseMistEffect():Void;

	public function AddDeadEyeCharge():Void;
	public function AddDollarBillEffect():Void;

	/** Remove them with negative numbers. */
	public function AddEternalHearts(eternalHearts:Int):Void;

	/** Spawns a friendly dip from Dirty Mind. */
	public function AddFriendlyDip(subType:DipFamiliarSubType, position:VectorClass):EntityFamiliar;

	/**
	 * Turns the given number of bombs Into giga bombs.
	 * This does not actually increase the number of bombs held. To actually add bombs, AddBombs ( )
	 * should be called first.
	 *
	 * @param num
	 */
	public function AddGigaBombs(num:Int):Void;

	/** Remove them with negative numbers. */
	public function AddGoldenBomb():Void;

	public function AddGoldenHearts(hearts:Int):Void;
	public function AddGoldenKey():Void;

	/**
	 * Adds red hearts to the player if there are any empty heart containers. 1 unit is half a heart.
	 * Remove health with negative numbers.
	 */
	public function AddHearts(hearts:Int):Void;

	/**
	 * Spawns a Lemegeton wisp.
	 *
	 * @param subType The ID of the passive item to mimic.
	 * @param position
	 * @param adjustOrbitLayer Default is false.
	 */
	public function AddItemWisp(subType:Int, position:VectorClass, ?adjustOrbitLayer:Bool):EntityFamiliar;

	public function AddJarFlies(flies:Int):Void;
	public function AddJarHearts(hearts:Int):Void;

	/** Remove them with negative numbers. */
	public function AddKeys(amount:Int):Void;

	/**
	 * Adds heart containers to the player. 2 units is a full heart container.
	 * Remove them with negative numbers.
	 */
	public function AddMaxHearts(maxHearts:Int, ignoreKeeper:Bool):Void;

	/**
	 * Spawns a mini Isaac from Giant Cell.
	 *
	 * @param position
	 * @param playAnim If false, skips the appear animation for the familiars.
	 */
	public function AddMinisaac(position:VectorClass, ?playAnim:Bool):EntityFamiliar;

	public function AddNullCostume(nullItemID:Union<NullItemID, Int>):Void;
	public function AddPill(pillColor:Union<PillColor, Int>):Void;
	public function AddPlayerFormCostume(playerForm:PlayerForm):Void;
	public function AddPrettyFly():Void;

	/**
	 * Remove them with negative numbers.
	 *
	 * @param hearts Rotten hearts must be specified in a multiple of 2.
	 * For example, `AddRottenHearts (4 )` will add 2 rotten hearts.
	 */
	public function AddRottenHearts(hearts:Int):Void;

	/** This adds Bethany's soul heart charges. Only works on Bethany. */
	public function AddSoulCharge(num:Int):Void;

	/** 1 unit is half a heart. Remove them with negative numbers. */
	public function AddSoulHearts(soulHearts:Int):Void;

	/** Spawns a defensive fly from The Swarm. */
	public function AddSwarmFlyOrbital(position:VectorClass):EntityFamiliar;

	/**
	 * - If the player does not have any open trinket slots, this function will do nothing.
	 * - If the player has an open trinket slot but already has a trinket, the new trinket will go to
	 * the first slot and the existing trinket will get pushed back to the second slot.
	 * - If you provide an argument of 0 or an otherwise invalid trinket ID, the game will crash.
	 *
	 * @param trinketType
	 * @param firstTimePickingUp Setting this to false will not spawn or add pickups for the item
	 * and will not cause it to count towards transformations. Default is true.
	 */
	public function AddTrinket(trinketType:Union<TrinketType, Int>, ?firstTimePickingUp:Bool):Void;

	/**
	 * Spawns a Book of Virtues wisp.
	 *
	 * @param subType The ID of the active item to spawn a wisp from. Wisps with a special ID  (for
	 * example "s0" in wisps.xml ) can be spawned with the subtype 65536 + X where X is the number
	 * after the "s".
	 * @param position
	 * @param adjustOrbitLayer If true, allows wisps to spawn outside of their usual orbit if their
	 * assigned orbit is full. Default is false.
	 * @param dontUpdate If true, the spawned wisp will not update immediately. This allows certain
	 * properties to be set on the first frame before the wisp is fully initialized. Default is false.
	 */
	public function AddWisp(subType:Int, position:VectorClass, ?adjustOrbitLayer:Bool, ?dontUpdate:Bool):EntityFamiliar;

	/**
	 * Play the animation that is normally played at the beginning of a stage.
	 * Also plays the associated sound effect.
	 */
	public function AnimateAppear():Void;

	/**
	 * @param card
	 * @param playerAnimationName Default is "Pickup".
	 */
	public function AnimateCard(card:Union<Card, Int>, ?playerAnimationName:PlayerItemAnimation):Void;

	/**
	 * @param collectibleType
	 * @param playerAnimationName Default is "Pickup".
	 * @param spriteAnimationName Default is "PlayerPickupSparkle".
	 */
	public function AnimateCollectible(collectibleType:Union<CollectibleType, Int>, ?playerItemAnimation:PlayerItemAnimation,
		?collectibleAnimation:CollectibleAnimation):Void;

	/** Play the "thumbs up" animation. */
	public function AnimateHappy():Void;

	/** Play the animation where Isaac steps Into a beam of light  (e.g. at the end of Womb 2 ). */
	public function AnimateLightTravel():Void;

	/**
	 * @param pillColor
	 * @param playerAnimationName Default is "Pickup".
	 */
	public function AnimatePill(pillColor:Union<PillColor, Int>, ?playerAnimationName:PlayerItemAnimation):Void;

	public function AnimatePitfallIn():Void;
	public function AnimatePitfallOut():Void;

	/**
	 * Play the animation where Isaac holds his head in his hands.
	 * Also plays the associated sound effect.
	 */
	public function AnimateSad():Void;

	public function AnimateTeleport(up:Bool):Void;
	public function AnimateTrapdoor():Void;

	/**
	 * @param trinketType
	 * @param playerAnimationName Default is "Pickup".
	 * @param spriteAnimationName Default is "PlayerPickupSparkle".
	 */
	public function AnimateTrinket(trinketType:Union<TrinketType, Int>, ?playerAnimationName:PlayerItemAnimation, ?spriteAnimationName:String):Void;

	public function AreControlsEnabled():Bool;
	public function AreOpposingShootDirectionsPressed():Bool;

	/**
	 * @param collectibleType Default is CollectibleType.COLLECTIBLE_NULL.
	 */
	public function CanAddCollectible(?collectibleType:CollectibleType):Bool;

	/** Returns true if the player can pick up black hearts, false otherwise. */
	public function CanPickBlackHearts():Bool;

	/** Returns true if the player can pick up bone hearts, false otherwise. */
	public function CanPickBoneHearts():Bool;

	/** Returns true if the player can pick up golden hearts, false otherwise. */
	public function CanPickGoldenHearts():Bool;

	/** Returns true if the player can pick up red hearts, false otherwise. */
	public function CanPickRedHearts():Bool;

	/** Returns true if the player can pick up rotten hearts, false otherwise. */
	public function CanPickRottenHearts():Bool;

	/** Returns true if the player can pick up soul hearts, false otherwise. */
	public function CanPickSoulHearts():Bool;

	public function CanPickupItem():Bool;
	public function CanShoot():Bool;

	/**
	 * When the player presses the different shoot buttons, Isaac will normally turn his head to face
	 * the direction that he is supposed to shoot in. This returns true if head will react to
	 * shooting, false otherwise.
	 */
	public function CanTurnHead():Bool;

	/**
	 * This will attempt to merge forms when called on characters like Jacob and Esau.
	 * This currently does not work correctly when changing from/to certain characters.
	 *  (i.e. TaInted Isaac )
	 */
	public function ChangePlayerType(type:PlayerType):Void;

	/**
	 * @param familiarVariant
	 * @param targetCount
	 * @param rng
	 * @param sourceItem The item this type of familiar was created by. Default is undefined.
	 * @param familiarSubType The subtype of the familiar to check  (-1 matches any subtype ). Default
	 * is -1.
	 */
	public function CheckFamiliar(familiarVariant:Union<FamiliarVariant, Int>, targetCount:Int, rng:RNG, ?sourceItem:ItemConfigItem,
		?familiarSubType:Int):Void;

	public function ClearCostumes():Void;
	public function ClearDeadEyeCharge():Void;

	/** Called automatically by the game when the player exits a room. */
	public function ClearTemporaryEffects():Void;

	/**
	 * Sets the charge of the active item to 0 without triggering the active item effect.
	 *
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function DischargeActiveItem(?activeSlot:ActiveSlot):Void;

	public function DoZitEffect(direction:VectorClass):Void;
	public function DonateLuck(luck:Int):Void;
	public function DropPocketItem(pocketItemSlot:PocketItemSlot, position:VectorClass):Void;
	public function DropTrinket(dropPos:VectorClass, replaceTick:Bool):Void;

	/**
	 * Triggers the MC_EVALUATE_CACHE callback. Before calling this function, you need to set the
	 * appropriate cache flags by using the `AddCacheFlag ( )` method.
	 */
	public function EvaluateItems():Void;

	/**
	 * @param position
	 * @param velocity
	 * @param source Default is undefined.
	 */
	public function FireBomb(position:VectorClass, velocity:VectorClass, ?source:Entity):EntityBomb;

	/**
	 * @param direction
	 * @param source Default is undefined.
	 * @param damageMultiplier Default is 1.
	 */
	public function FireBrimstone(direction:VectorClass, ?source:Entity, ?damageMultiplier:Float):EntityLaser;

	public function FireDelayedBrimstone(angle:Float, parent:Entity):EntityLaser;

	/**
	 * @param parent
	 * @param rotationOffset Default is 0.
	 * @param cantOverwrite Default is false.
	 * @param subType Default is 0.
	 * @param variant Default is 0.
	 */
	public function FireKnife(parent:Entity, ?rotationOffset:Float, ?cantOverwrite:Bool, ?subType:Int, ?variant:Int):EntityKnife;

	/**
	 * @param position
	 * @param velocity
	 * @param canBeEye Default is true.
	 * @param noTractorBeam Default is false.
	 * @param canTriggerStreakEnd Default is true.
	 * @param source Default is undefined.
	 * @param damageMultiplier Default is 1.
	 */
	public function FireTear(position:VectorClass, velocity:VectorClass, ?canBeEye:Bool, ?noTractorBeam:Bool, ?canTriggerStreakEnd:Bool, ?source:Entity,
		?damageMultiplier:Float):EntityTear;

	/**
	 * @param position
	 * @param laserOffset
	 * @param direction
	 * @param leftEye
	 * @param oneHit Default is false.
	 * @param source Default is undefined.
	 * @param damageMultiplier Default is 1.
	 */
	public function FireTechLaser(position:VectorClass, laserOffset:LaserOffset, direction:VectorClass, leftEye:Bool, ?oneHit:Bool, ?source:Entity,
		?damageMultiplier:Float):EntityLaser;

	/**
	 * @param position
	 * @param direction
	 * @param radius
	 * @param source Default is undefined.
	 * @param damageMultiplier Default is 1.
	 */
	public function FireTechXLaser(position:VectorClass, direction:VectorClass, radius:Float, ?source:Entity, ?damageMultiplier:Float):EntityLaser;

	public function FlushQueueItem():Bool;

	/**
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 * @param force If set, items will always be charged even if they normally cannot be recharged by
	 * batteries.
	 */
	public function FullCharge(activeSlot:ActiveSlot, ?force:Bool):Bool;

	/**
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function GetActiveCharge(activeSlot:ActiveSlot):Int;

	/**
	 * Returns 0 if no item is held.
	 *
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function GetActiveItem(activeSlot:ActiveSlot):Union<CollectibleType, Int>;

	/**
	 * Returns 0 if there is no active item in the specified slot.
	 *
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function GetActiveSubCharge(activeSlot:ActiveSlot):Int;

	public function GetActiveWeaponEntity():Entity;
	public function GetAimDirection():Readonly<VectorClass>;
	public function GetBabySkin():Union<BabySubType, Int>;

	/**
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function GetBatteryCharge(activeSlot:ActiveSlot):Int;

	/** This returns the bit mask for which soul hearts are black hearts. */
	public function GetBlackHearts():Int;

	/** This gets TaInted Bethany's blood charges. */
	public function GetBloodCharge():Int;

	/**
	 * There is no separate BombFlags enum, so bombs use tear flags.
	 * Be aware that this really takes a BitSet128 instead of an Integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function GetBombFlags():Int;

	/**
	 * There is no separate BombFlags enum, so bombs use tear flags.
	 * Be aware that this really takes a BitSet128 instead of an Integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public function GetBombVariant(tearFlags:TearFlags, forceSmallBomb:Bool):Union<BombVariant, Int>;

	public function GetBoneHearts():Int;
	public function GetBrokenHearts():Int;

	/** Returns 0 if there is no card. */
	public function GetCard(pocketItemSlot:PocketItemSlot):Union<Card, Int>;

	public function GetCardRNG(card:Union<Card, Int>):RNG;
	public function GetCollectibleCount():Int;

	/**
	 * @param collectibleType
	 * @param onlyCountTrueItems If set to true, the function only counts collectibles that the player
	 * actually owns and ignores things like Lilith's Incubus, items granted by 3 Dollar Bill, and so
	 * forth.
	 */
	public function GetCollectibleNum(collectibleType:Union<CollectibleType, Int>, ?ignoreModifiers:Bool):Int;

	public function GetCollectibleRNG(collectibleType:Union<CollectibleType, Int>):RNG;
	public function GetCostumeNullPos(nullFrameName:String, headScale:Bool, direction:VectorClass):VectorClass;
	public function GetDamageCooldown():Int;

	/** This returns the number of blood charges when called on TaInted Bethany, 0 otherwise. */
	public function GetEffectiveBloodCharge():Int;

	public function GetEffectiveMaxHearts():Int;

	/** This returns the number of soul charges when called on Bethany, 0 otherwise. */
	public function GetEffectiveSoulCharge():Int;

	public function GetEffects():TemporaryEffects;
	public function GetEternalHearts():Int;
	public function GetExtraLives():Int;
	public function GetFireDirection():Direction;
	public function GetFlyingOffset():VectorClass;
	public function GetGoldenHearts():Int;
	public function GetGreedDonationBreakChance():Float;
	public function GetHeadDirection():Direction;
	public function GetHeartLimit():Int;

	/**
	 * Returns the amount of red hearts the player has inside their heart containers and bone hearts.
	 * 1 unit is half a heart.
	 */
	public function GetHearts():Int;

	public function GetItemState():Int;
	public function GetJarFlies():Int;
	public function GetJarHearts():Int;
	public function GetLaserOffset(laserOffset:LaserOffset, direction:VectorClass):VectorClass;
	public function GetLastActionTriggers():Int;
	public function GetLastDamageFlags():DamageFlag;
	public function GetLastDamageSource():Readonly<EntityRef>;
	public function GetLastDirection():Readonly<VectorClass>;

	/**
	 * - When called on Jacob or Esau, returns Jacob.
	 * - When called on TaInted Forgotten or TaInted Forgotten's Soul, returns TaInted Forgotten.
	 * - When called on any other character, returns that character.
	 */
	public function GetMaIntwin():EntityPlayer;

	/**
	 * Returns the amount of heart containers that the player has. 1 unit is half a heart container.
	 */
	public function GetMaxHearts():Int;

	/**
	 * Returns the maximum number of pocket items + pocket actives that the player can currently hold.
	 *
	 * - Usually, this will return 1.
	 * - If the player has Belly Button, Starter Deck, or Little Baggy, it will increment the number
	 * by 1.
	 * - If the player has a pocket active item, it will increment the number by 1.
	 * - If the player has a dice from the Dice Bag trinket, it will increment the number by 1.
	 * - The maximum number this can return is 4.
	 */
	public function GetMaxPocketItems():Int;

	/**
	 * Returns the maximum number of trinkets that the player can currently hold. Usually, this will
	 * return 1, but the player can hold up to 2 trinkets under certain conditions  (e.g. having Mom's
	 * Purse ).
	 */
	public function GetMaxTrinkets():Int;

	/**
	 * Returns the current passive item mimicked by Modeling Clay
	 *  (or COLLECTIBLE_NULL if no effect is being mimicked ).
	 */
	public function GetModelingClayEffect():CollectibleType;

	public function GetMovementDirection():Direction;
	public function GetMovementInput():VectorClass;
	public function GetMovementJoystick():VectorClass;
	public function GetMovementVectorClass():Readonly<VectorClass>;

	/**
	 * Note that the only thing that you can do with MultiShotParams is feed it to the
	 * `EntityPlayer.GetMultiShotPositionVelocity ( )` method.
	 *
	 * @param weaponType Default is WeaponType.WEAPON_TEARS.
	 */
	public function GetMultiShotParams(weaponType:WeaponType):MultiShotParams;

	public function GetMultiShotPositionVelocity(loopIndex:Int, weaponType:WeaponType, shotDirection:VectorClass, shotSpeed:Float,
		multiShotParams:MultiShotParams):PosVel;

	/**
	 * Normally, this function returns the player. However, in some cases, NPCs can be redirected to
	 * attack another target, in which case this function will return the alternate target
	 *  (e.g. after using Best Friend ).
	 */
	public function GetNPCTarget():Entity;

	/** Returns e.g. "Isaac", "Cain", etc. */
	public function GetName():String;

	public function GetNumBlueFlies():Int;
	public function GetNumBlueSpiders():Int;
	public function GetNumBombs():Int;
	public function GetNumCoins():Int;

	/** Returns the number of giga bombs held. */
	public function GetNumGigaBombs():Int;

	public function GetNumKeys():Int;

	/**
	 * - When called on Jacob, returns Esau.
	 * - When called on Esau, returns Jacob.
	 * - When called on TaInted Forgotten, returns TaInted Forgotten's Soul.
	 * - When called on TaInted Forgotten's Soul, returns TaInted Forgotten.
	 * - When called on any other character, returns undefined.
	 */
	public function GetOtherTwin():Null<EntityPlayer>;

	/** Returns 0 if there is no pill. */
	public function GetPill(pocketItemSlot:PocketItemSlot):Union<PillColor, Int>;

	public function GetPillRNG(pillEffect:Union<PillEffect, Int>):RNG;
	public function GetPlayerType():Union<PlayerType, Int>;
	public function GetPocketItem(slotID:Int):PlayerPocketItem; // PlayerPocketItem is not implemented

	/**
	 * Returns the joystick direction that drives player movement, taking Into account certain
	 * modifiers like disabled controls and seed effects.
	 */
	public function GetRecentMovementVectorClass():Readonly<VectorClass>;

	/**
	 * This returns the actual number of rotten hearts.
	 *  (For example, this returns 2 if the player has 2 rotten hearts. )
	 */
	public function GetRottenHearts():Int;

	public function GetShootingInput():VectorClass;
	public function GetShootingJoystick():VectorClass;
	public function GetSmoothBodyRotation():Float;

	/** This gets Bethany's soul heart charges. */
	public function GetSoulCharge():Int;

	/**
	 * 1 unit is half a heart. Black hearts count toward this total.
	 * Remove them with negative numbers.
	 */
	public function GetSoulHearts():Int;

	/**
	 * - When on The Forgotten, returns the player object for The Soul.
	 * - When on The Soul, returns the player object for The Forgotten.
	 * - Otherwise, returns undefined.
	 */
	public function GetSubPlayer():Null<EntityPlayer>;

	/**
	 * Used for tear parameters that are calculated on hit  (e.g. Tough Love, Common Cold ),
	 *
	 * @param weaponType
	 * @param damageScale Default is 1.
	 * @param tearDisplacement Default is 1.
	 * @param source Default is undefined.
	 */
	public function GetTearHitParams(weaponType:WeaponType, ?damageScale:Float, ?tearDisplacement:Int, ?source:Entity):TearParams;

	public function GetTearMovementInheritance(shotDirection:VectorClass):VectorClass;
	public function GetTearPoisonDamage():Float;
	public function GetTearRangeModifier():Int;
	public function GetTotalDamageTaken():Int;
	public function GetTractorBeam():Entity;

	/** Returns 0 if there is no trinket. */
	public function GetTrinket(trinketSlot:TrinketSlot):Int;

	/**
	 * This is the number of times that the trinket effect is applied.
	 * Returns 0 if the player does not have the particular trinket.
	 */
	public function GetTrinketMultiplier(trinketType:Union<TrinketType, Int>):Int;

	public function GetTrinketRNG(trinketType:Union<TrinketType, Int>):RNG;
	public function GetVelocityBeforeUpdate():Readonly<VectorClass>;
	public function GetZodiacEffect():ZodiacCollectibles;

	/**
	 * @param collectibleType
	 * @param ignoreModifiers If set to true, only counts collectibles the player actually owns and
	 * ignores effects granted by items like Zodiac, 3 Dollar Bill and Lemegeton. Default is false.
	 */
	public function HasCollectible(collectibleType:Union<CollectibleType, Int>, ?ignoreModifiers:Bool):Bool;

	/** Returns true if the player's item effects are currently being disabled. */
	public function HasCurseMistEffect():Bool;

	public function HasFullHearts():Bool;
	public function HasFullHeartsAndSoulHearts():Bool;
	public function HasGoldenBomb():Bool;
	public function HasGoldenKey():Bool;

	/**
	 * @param damageFlag Default is 0.
	 */
	public function HasInvincibility(damageFlag:DamageFlag):Bool;

	public function HasPlayerForm(playerForm:PlayerForm):Bool;
	public function HasTimedItem():Bool;

	/**
	 * @param trinketType
	 * @param ignoreModifiers If set to true, only counts trinkets the player actually holds and
	 * ignores effects granted by other items. Default is false.
	 */
	public function HasTrinket(trinketType:Union<TrinketType, Int>, ?ignoreModifiers:Bool):Bool;

	public function HasWeaponType(weaponType:WeaponType):Bool;
	public function InitBabySkin():Void;
	public function IsBlackHeart(heart:Int):Bool;
	public function IsBoneHeart(heartSlot:Int):Bool;

	/**
	 * In a multiplayer game, if a player dies, they will return as a tiny ghost. This method returns
	 * true if the player is a co-op ghost.
	 */
	public function IsCoopGhost():Bool;

	public function IsExtraAnimationFinished():Bool;
	public function IsFullSpriteRendering():Bool;
	public function IsHeldItemVisible():Bool;
	/* Is the player holding up an item  (card/collectible/etc )? */
	public function IsHoldingItem():Bool;
	public function IsItemQueueEmpty():Bool;
	public function IsP2Appearing():Bool;
	public function IsPosInSpotLight(position:VectorClass):Bool;

	/** Returns true for The Soul. Otherwise, returns false. */
	public function IsSubPlayer():Bool;

	/**
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function NeedsCharge(activeSlot:ActiveSlot):Bool;

	public function PlayExtraAnimation(animation:String):Void;
	public function QueueExtraAnimation(animation:String):Void;

	/**
	 * When the player touches a collectible item, they are not granted it immediately. Instead, the
	 * item is a queue for the duration of the animation where the player holds the item above their
	 * head. When the animation is finished, the item (s ) in the queue will be granted. This method
	 * adds a new item to the item queue. If the player is not currently playing an animation, then
	 * the queued item will simply be awarded instantly.
	 *
	 * @param itemConfigItem
	 * @param charge Default is 0.
	 * @param touched Default is false.
	 * @param golden Default is false.
	 * @param varData Default is false.
	 */
	public function QueueItem(itemConfigItem:ItemConfigItem, ?charge:Int, ?touched:Bool, ?golden:Bool, ?varData:Int):Void;

	public function RemoveBlackHeart(blackHeart:Int):Void;
	public function RemoveBlueFly():Void;
	public function RemoveBlueSpider():Void;

	/**
	 * @param collectibleType
	 * @param ignoreModifiers Ignores collectible effects granted by other items  (i.e. Void ).
	 * Default is false.
	 * @param activeSlot Sets the active slot this collectible should be removed from.
	 * Default is ActiveSlot.SLOT_PRIMARY.
	 * @param removeFromPlayerForm If successfully removed and part of a transformation, decrease that
	 * transformation's counter by 1. Default is true.
	 */
	public function RemoveCollectible(collectibleType:Union<CollectibleType, Int>, ?ignoreModifiers:Bool, ?activeSlot:ActiveSlot,
		?removeFromPlayerForm:Bool):Void;

	public function RemoveCostume(itemConfigItem:ItemConfigItem):Void;

	/**
	 * Re-enables item effects removed by AddCurseMistEffect ( ).
	 * Also attempts to restore consumables and pocket items removed by AddCurseMistEffect ( ).
	 */
	public function RemoveCurseMistEffect():Void;

	public function RemoveGoldenBomb():Void;
	public function RemoveGoldenKey():Void;

	/** Removes player-specific costumes like Magdalene's hair or Cain's eyepatch. */
	public function RemoveSkinCostume():Void;

	public function RenderBody(position:VectorClass):Void;
	public function RenderGlow(position:VectorClass):Void;
	public function RenderHead(position:VectorClass):Void;
	public function RenderTop(position:VectorClass):Void;
	public function ReplaceCostumeSprite(itemConfigItem:ItemConfigItem, spritePath:String, spriteID:Int):Void;
	public function ResetDamageCooldown():Void;
	public function ResetItemState():Void;
	public function RespawnFamiliars():Void;
	public function Revive():Void;

	/**
	 * @param charge
	 * @param activeSlot Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function SetActiveCharge(charge:Int, ?activeSlot:ActiveSlot):Void;

	/** This sets TaInted Bethany's blood charges. Only works on TaInted Bethany. */
	public function SetBloodCharge(num:Int):Void;

	public function SetCard(pocketItemSlot:PocketItemSlot, card:Union<Card, Int>):Void;
	public function SetFullHearts():Void;
	public function SetMinDamageCooldown(damageCooldown:Int):Void;
	public function SetPill(pocketItemSlot:PocketItemSlot, pillColor:Union<PillColor, Int>):Void;

	/**
	 * Sets the player's pocket active item to the given active item.
	 * Items added to SLOT_POCKET2 will always be removed upon being used.
	 *
	 * @param collectibleType
	 * @param slot Can be either ActiveSlot.SLOT_POCKET or ActiveSlot.SLOT_POCKET2. Default is ActiveSlot.SLOT_POCKET.
	 * @param keepInPools If true, the item will not be removed from the item pools. Default is false.
	 */
	public function SetPocketActiveItem(collectibleType:CollectibleType, ?slot:ActiveSlot, ?keepInPools:Bool):Void;

	public function SetShootingCooldown(cooldown:Int):Void;

	/**
	 * This sets Bethany's soul heart charges.
	 *
	 * @param num
	 */
	public function SetSoulCharge(num:Int):Void;

	public function SetTargetTrapDoor(trapDoor:GridEntity):Void;
	public function ShootRedCandle(direction:VectorClass):Void;
	public function SpawnMawOfVoid(timeout:Int):EntityLaser;
	public function StopExtraAnimation():Void;
	public function SwapActiveItems():Void;
	public function ThrowBlueSpider(position:VectorClass, target:VectorClass):Entity;

	/**
	 * Spawns a friendly dip  (from Dirty Mind ) and throws it towards the specified target.
	 *
	 * @param subType
	 * @param position
	 * @param target If VectorClass.Zero, throws the spawned dip in a random direction. Default is
	 * VectorClass.Zero.
	 */
	public function ThrowFriendlyDip(subType:DipFamiliarSubType, position:VectorClass, ?target:VectorClass):EntityFamiliar;

	/**
	 * If holding an entity, throws it in the specified direction and returns it. Otherwise, returns
	 * undefined.
	 *
	 * @param velocity
	 */
	public function ThrowHeldEntity(velocity:VectorClass):Entity;

	/**
	 * Triggers the extra effect granted by Book of Virtues for the given active item.
	 *
	 * @param collectibleType Default is CollectibleType.COLLECTIBLE_NULL.
	 */
	public function TriggerBookOfVirtues(collectibleType:CollectibleType):Void;

	/**
	 * Attempts to pick up the given entity, returns true on success.
	 * Currently only works with some entity types  (mainly bombs and enemies ).
	 */
	public function TryHoldEntity(entity:Entity):Bool;

	public function TryHoldTrinket(trinketType:Union<TrinketType, Int>):Bool;

	/**
	 * @param collectibleType
	 * @param keepPersistent If set to false, this method will only remove temporary costumes.
	 */
	public function TryRemoveCollectibleCostume(collectibleType:Union<CollectibleType, Int>, keepPersistent:Bool):Void;

	public function TryRemoveNullCostume(nullItemID:Union<NullItemID, Int>):Void;

	/**
	 * Will remove the specified trinket, if it exists. This will also remove The Tick and smelted
	 * trinkets.
	 *
	 * @param trinketType If you provide an argument of 0 or an otherwise invalid trinket ID, the game
	 * will crash.
	 * @returns Whether or not the specified trinket was removed successfully.
	 */
	public function TryRemoveTrinket(trinketType:Union<TrinketType, Int>):Bool;

	public function TryRemoveTrinketCostume(trinketType:Union<TrinketType, Int>):Void;
	public function TryUseKey():Bool;
	public function UpdateCanShoot():Void;

	/**
	 * @param collectibleType
	 * @param useFlag Default is 0.
	 * @param activeSlot The active slot this item was used from.
	 *  (Set to -1 if this item wasn't triggered by any active slot. )
	 * Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function UseActiveItem(collectibleType:Union<CollectibleType, Int>, ?useFlag:UseFlag, ?activeSlot:ActiveSlot):Void;

	/**
	 * @param collectibleType
	 * @param showAnim
	 * @param keepActiveItem
	 * @param allowNonMainPlayer
	 * @param toAddCostume
	 * @param activeSlot The active slot this item was used from.
	 *  (Set to -1 if this item wasn't triggered by any active slot. )
	 * Default is ActiveSlot.SLOT_PRIMARY.
	 */
	public function UseActiveItem(collectibleType:Union<CollectibleType, Int>, showAnim:Bool, keepActiveItem:Bool, allowNonMainPlayer:Bool, toAddCostume:Bool,
		?activeSlot:ActiveSlot):Void;

	/**
	 * @param card
	 * @param useFlag Default is 0.
	 */
	public function UseCard(card:Union<Card, Int>, ?useFlag:UseFlag):Void;

	/**
	 * @param pillEffect
	 * @param pillColor
	 * @param useFlag Default is 0.
	 */
	public function UsePill(pillEffect:Union<PillEffect, Int>, pillColor:Union<PillColor, Int>, ?useFlag:UseFlag):Void;

	public function WillPlayerRevive():Bool;
	public var BabySkin:Union<BabySubType, Int>;

	/** Only change this in the EvaluateCache callback. */
	public var CanFly:Bool;

	public var ControllerIndex(default, never):ControllerIndex;
	public var ControlsCooldown:Int;
	public var ControlsEnabled:Bool;

	/** Only change this in the EvaluateCache callback. */
	public var Damage:Float;

	public var FireDelay:Int;
	// readonly FriendBallEnemy :  Readonly<EntityDesc>; // EntityDesc is not implemented
	public var HeadFrameDelay:Int;
	public var ItemHoldCooldown:Int;
	public var LaserColor:Color;

	/** Only change this in the EvaluateCache callback. */
	public var Luck:Float;

	/** Only change this in the EvaluateCache callback. */
	public var MaxFireDelay:Int;

	/** Only change this in the EvaluateCache callback. */
	public var MoveSpeed:Float;

	public var QueuedItem:QueueItemData;

	/** Only change this in the EvaluateCache callback. */
	public var ShotSpeed:Float;

	public var SpriteScale:VectorClass;
	public var TearColor:Color;
	public var TearFallingAcceleration:Float;

	/** Only change this in the EvaluateCache callback. */
	public var TearFallingSpeed:Float;

	/**
	 * Only change this in the EvaluateCache callback.
	 * Be aware that this is really a BitSet128 instead of an Integer.
	 * However, all of the TearFlags enums values use BitSet128 constructors.
	 */
	public var TearFlags:Int;

	/**
	 * This is equal to the range stat multiplied by -1.
	 * Only change this in the EvaluateCache callback.
	 */
	public var TearHeight:Float;

	public var TearsOffset(default, never):VectorClass;
}
