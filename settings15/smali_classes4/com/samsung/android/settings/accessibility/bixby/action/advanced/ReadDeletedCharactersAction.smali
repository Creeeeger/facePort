.class public final Lcom/samsung/android/settings/accessibility/bixby/action/advanced/ReadDeletedCharactersAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/samsung/android/settings/accessibility/SIPUtils;->HONEYBOARD_HIGH_CONTRAST_KEYBOARD_SETTING_ACTIVITY:Landroid/content/ComponentName;

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "speak_keyboard_input_aloud_read_deleted_character"

    invoke-static {p1, p3, p2}, Lcom/samsung/android/settings/accessibility/SIPUtils;->putValueToSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "result"

    const-string/jumbo p2, "success"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "speak_keyboard_input_aloud_on"

    const-string/jumbo v1, "speak_keyboard_input_aloud_read_deleted_character"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getValueFromSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/accessibility/bixby/BixbyUtils;->getStateAlreadyChecked(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.controllers.SpeakKeyboardPreferenceController"

    return-object p0
.end method

.method public final getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.samsung.android.honeyboard.intent.action.SPEAK_KEYBOARD_INPUT_ALOUD_SETTING"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
