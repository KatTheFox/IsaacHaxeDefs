package src;

extern class HUD {
    /**
     * Causes the charge bar of the active item in the specified slot to blink as if it had gained
     * charges.
     *
     * @param player
     * @param slot Default is ActiveSlot.SLOT_PRIMARY.
     */
    public function FlashChargeBar(player: EntityPlayer, ?slot: ActiveSlot): Void;
    /**
     * Forces the specified active item slot to update. This might be useful for functions that modify
     * an active item slot without directly giving or removing items.
     *
     * @param player
     * @param slot Default is ActiveSlot.SLOT_PRIMARY
     */
    public function InvalidateActiveItem(player: EntityPlayer, ?slot: ActiveSlot): Void;
    /**
     * Forces the crafting output from Bag of Crafting to update.
     *
     * @param player
     */
    public function InvalidateCraftingItem(player: EntityPlayer): Void;
    public function IsVisible(): Bool;
    public function SetVisible(visible: Bool): Void;
    /**
     * Accepts a sequence of up to 32 Strings, where each String is a line of text.
     * Passing more than 7 lines will result in them not being displayed properly since the fortune
     * paper does not dynamically stretch to accommodate the extra lines yet.
     *
     * @param text
     */
    public function ShowFortuneText(...text: Array<String>): Void;
    /**
     * Shows the pickup text for the specified item as if it was picked up by the specified player.
     */
    public function ShowItemText(player: EntityPlayer, item: ItemConfigItem): Void;
    /**
     * Shows a custom pickup text.
     *
     * @param name
     * @param description Default is "".
     * @param paper If set to true, displays the description on a small piece of paper, similar to
     * curses. Default is false.
     */
    public function ShowItemText(name: String, ?description: String, ?paper: Bool): Void;
  }
  