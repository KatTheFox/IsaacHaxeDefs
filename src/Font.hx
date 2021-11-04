package src;

extern function Font(): FontClass;

extern class FontClass {
  /**
   * @param str
   * @param positionX
   * @param positionY
   * @param renderColor
   * @param boxWidth Default is 0.
   * @param center Default is false.
   */
  public function DrawString(
    str: String,
    positionX: Float,
    positionY: Float,
    renderColor: KColorClass,
    ?boxWidth: Int,
    ?center: Bool): Void;
  /**
   * @param str
   * @param positionX
   * @param positionY
   * @param scaleX
   * @param scaleY
   * @param renderColor
   * @param boxWidth Default is 0.
   * @param center Default is false.
   */
  public function DrawStringScaled(
    str: String,
    positionX: Float,
    positionY: Float,
    scaleX: Float,
    scaleY: Float,
    renderColor: KColorClass,
    ?boxWidth: Int,
    ?center: Bool): Void;
  public function DrawStringScaledUTF8(
    str: String,
    positionX: Float,
    positionY: Float,
    scaleX: Float,
    scaleY: Float,
    renderColor: KColorClass,
    boxWidth: Int,
    center: Bool): Void;
  /**
   * @param str
   * @param positionX
   * @param positionY
   * @param renderColor
   * @param boxWidth Default is 0.
   * @param center Default is false.
   */
  public function DrawStringUTF8(
    str: String,
    positionX: Float,
    positionY: Float,
    renderColor: KColorClass,
    ?boxWidth: Int,
    ?center: Bool): Void;
  public function GetBaselineHeight(): Int;
  public function GetCharacterWidth(character: String): Int;
  public function GetLineHeight(): Int;
  public function GetStringWidth(str: String): Int;
  public function GetStringWidthUTF8(str: String): Int;
  public function IsLoaded(): Bool;
  public function Load(filePath: String): Bool;
  public function SetMissingCharacter(missingCharacter: Int): Void;
  public function Unload(): Void;
}
