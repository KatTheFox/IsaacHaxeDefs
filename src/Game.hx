package src;

extern class Game {
    public function AddDevilRoomDeal(): Void;
    public function AddEncounteredBoss(entityType: Union<EntityType,Int>, variant: Int): Void;
    public function AddPixelation(duration: Int): Void;
    public function AddStageWithoutDamage(): Void;
    public function AddStageWithoutHeartsPicked(): Void;
    public function AddTreasureRoomsVisited(): Void;
    /**
     * There is no separate BombFlags enum, so bombs use tear flags.
     * Be aware that this really takes a BitSet128 instead of an integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     *
     * @param position
     * @param damage
     * @param radius
     * @param lineCheck Default is true.
     * @param source Default is undefined.
     * @param tearFlags Default is TearFlags.TEAR_NORMAL.
     * @param damageFlags Default is DamageFlag.DAMAGE_EXPLOSION.
     * @param damageSource Default is false.
     */
    public function BombDamage(
      position: Vector,
      damage: Float,
      radius: Float,
      ?lineCheck: Bool,
      ?source: Entity,
      ?tearFlags: Int,
      ?damageFlags: DamageFlag,
      ?damageSource: Bool): Void;
    /**
     * There is no separate BombFlags enum, so bombs use tear flags.
     * Be aware that this really takes a BitSet128 instead of an integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     *
     * @param position
     * @param damage
     * @param tearFlags Default is TearFlags.TEAR_NORMAL.
     * @param color Default is Color.Default.
     * @param source Default is undefined.
     * @param radiusMult Default is 1.
     * @param lineCheck Default is true.
     * @param damageSource Default is false.
     * @param damageFlags Default is DamageFlag.DAMAGE_EXPLOSION.
     */
    public function BombExplosionEffects(
      position: Vector,
      damage: Float,
      ?tearFlags: Int,
      ?color: Color,
      ?source: Entity,
      ?radiusMult: Float,
      ?lineCheck: Bool,
      ?damageSource: Bool,
      ?damageFlags: DamageFlag): Void;
    /**
     * There is no separate BombFlags enum, so bombs use tear flags.
     * Be aware that this really takes a BitSet128 instead of an integer.
     * However, all of the TearFlags enums values use BitSet128 constructors.
     *
     * @param position
     * @param radius
     * @param tearFlags
     * @param source Default is undefined.
     * @param radiusMult Default is 1.
     */
    public function BombTearflagEffects(
      position: Vector,
      radius: Float,
      tearFlags: Int,
      ?source: Entity,
      ?radiusMult: Float): Void;
    public function ButterBeanFart(
      position: Vector,
      radius: Float,
      source: Entity,
      showEffect: Bool,
      doSuperKnockback: Bool): Void;
    /**
     * @param roomIndex
     * @param dimension Default is Dimension.CURRENT.
     */
    public function ChangeRoom(roomIndex: Int, ?dimension: Dimension): Void;
    public function CharmFart(position: Vector, radius: Float, source: Entity): Void;
    public function ClearDonationModAngel(): Void;
    public function ClearDonationModGreed(): Void;
    public function ClearStagesWithoutDamage(): Void;
    public function ClearStagesWithoutHeartsPicked(): Void;
    public function Darken(darkness: Float, timeout: Int): Void;
    public function DonateAngel(donate: Int): Void;
    public function DonateGreed(donate: Int): Void;
    public function End(ending: Ending): Void;
    public function Fadein(speed: Float): Void;
    public function Fadeout(speed: Float, fadeoutTarget: FadeoutTarget): Void;
    /**
     * @param position
     * @param radius Default is 85.
     * @param source Default is undefined.
     * @param fartScale Default is 1.
     * @param fartSubType Default is 0
     * @param fartColor Default is Color.Default.
     */
    public function Fart(
      position: Vector,
      ?radius: Float,
      ?source: Entity,
      ?fartScale: Float,
      ?fartSubType: Int,
      ?fartColor: Color): Void;
    public function FinishChallenge(): Void;
    // GetAmbush(): Ambush; // Ambush is not implemented
    public function GetDarknessModifier(): Float;
    public function GetDevilRoomDeals(): Int;
    public function GetDonationModAngel(): Int;
    public function GetDonationModGreed(): Int;
    public function GetFont(): Font;
    public function GetFrameCount(): Int;
    public function GetGreedBossWaveNum(): Int;
    public function GetGreedWavesNum(): Int;
    // GetItemOverlay(): ItemOverlay; // ItemOverlay is not implemented
    public function GetHUD(): HUD;
    public function GetItemPool(): ItemPool;
    /** This function is bugged and returns useless userdata. */
    public function GetLastDevilRoomStage(fakeArg: Null<Any>): LevelStage;
    public function GetLastLevelWithDamage(): LevelStage;
    public function GetLastLevelWithoutHalfHp(): LevelStage;
    public function GetLevel(): Level;
    public function GetNearestPlayer(position: Vector): EntityPlayer;
    public function GetNumEncounteredBosses(): Int;
    public function GetNumPlayers(): Int;
    /** Use `Isaac.GetPlayer()` instead of this function. */
    public function GetPlayer(fakeArg: Null<Any>): Null<EntityPlayer>;
    public function GetRandomPlayer(position: Vector, radius: Float): EntityPlayer;
    public function GetRoom(): Room;
    public function GetScreenShakeCountdown(): Int;
    public function GetSeeds(): Seeds;
    public function GetStagesWithoutDamage(): Int;
    public function GetStagesWithoutHeartsPicked(): Int;
    public function GetStateFlag(gameStateFlag: GameStateFlag): Bool;
    public function GetTargetDarkness(): Float;
    public function GetTreasureRoomVisitCount(): Int;
    public function GetVictoryLap(): Int;
    public function HasEncounteredBoss(entityType: Union<EntityType,Int>, variant: Int): Bool;
    public function HasHallucination(): Int;
    public function IsGreedMode(): Bool;
    public function IsPaused(): Bool;
    public function MoveToRandomRoom(IAmErrorRoom: Bool, seed: Int): Void;
    public function NextVictoryLap(): Void;
    public function Render(): Void;
    public function RerollEnemy(entity: Entity): Bool;
    public function RerollLevelCollectibles(): Void;
    public function RerollLevelPickups(seed: Int): Void;
    public function SetLastDevilRoomStage(levelStage: LevelStage): Void;
    public function SetLastLevelWithDamage(levelStage: LevelStage): Void;
    public function SetLastLevelWithoutHalfHp(levelStage: LevelStage): Void;
    public function SetStateFlag(gameStateFlag: GameStateFlag, val: Bool): Void;
    public function ShakeScreen(timeout: Int): Void;
    public function ShowFortune(): Void;
    /**
     * @param frameCount
     * @param hallucinationBackdrop Default is BackdropType.NUM_BACKDROPS.
     */
    public function ShowHallucination(frameCount:Int,
      ?hallucinationBackdropType: BackdropType): Void;
    public function ShowRule(): Void;
    public function Spawn(
      entityType: Union<EntityType,Int>,
      variant: Int,
      position: Vector,
      velocity: Vector,
      spawner: Null<Entity>,
      subType: Int,
      seed: Int): Entity;
    /*
    public function SpawnEntityDesc(
      entityDesc: EntityDesc, // EntityDesc is not implemented
      position: Vector,
      spawner: Entity): EntityNPC;
    */
    /**
     * @param position
     * @param effectVariant
     * @param numParticles
     * @param speed
     * @param color Default is Color.Default.
     * @param height Default is 100000.
     * @param subType Default is 0.
     */
    public function SpawnParticles(
      position: Vector,
      effectVariant: Union<EffectVariant,Int>,
      numParticles: Int,
      speed: Float,
      ?color: Color,
      ?height: Float,
      ?subType: Int): Void;
    /**
     * You have to set Level.LeaveDoor to an appropriate value before using this function. Otherwise,
     * you will be sent to the wrong room. (For teleports, set it to -1.)
     *
     * @param roomIndex
     * @param direction
     * @param roomTransition Default is RoomTransitionAnim.WALK.
     * @param player Default is undefined.
     * @param dimension Default is Dimension.CURRENT.
     */
    public function StartRoomTransition(
      roomIndex: Int,
      direction: Direction,
      ?roomTransitionAnim: RoomTransitionAnim,
      ?player: EntityPlayer,
      ?dimension: Dimension): Void;
    public function StartStageTransition(
      sameStage: Bool,
      stageTransition: StageTransition): Void;
    public function Update(): Void;
    /**
     * @param position
     * @param force Default is 10.
     * @param radius Default is 250.
     */
    public function UpdateStrangeAttractor(position: Vector, ?force: Float, ?radius: Float): Void;
  
    public var BlueWombParTime: Int;
    public var BossRushParTime: Int;
    public var Challenge: Union<Challenge , Int>;
    public var Difficulty(default,never): Difficulty;
    public var ScreenShakeOffset(default,never): VectorClass;
    public var TimeCounter: Int;
  }
  