.class public Lcom/samsung/android/settings/accessibility/bixby/provider/AccessibilityBixbyProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "AccessibilityActionCommand"

    if-nez p3, :cond_0

    const-string p0, "Bundle is null. Maybe Bixby capsule passed wrong data."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;

    invoke-direct {v1, p3}, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;-><init>(Landroid/os/Bundle;)V

    const-string p3, ""

    iget-object v2, v1, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->bixbyLocale:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    :try_start_0
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Unexpected ClassCastException happened. Will return original context."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string v2, "Action="

    const-string v3, ", "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->paramValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v0, "viv.accessibilityApp.GetColorAdjustmentCurrentValue"

    iget-object v2, v1, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "viv.accessibilityApp.GetPersonalizedColorSetUpStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "viv.accessibilityApp.TurnOnMuteAllSounds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p3, "MuteAllSounds"

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "viv.accessibilityApp.GetUniversalSwitchCurrentstatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "viv.accessibilityApp.TurnOnUniversalSwitch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "viv.accessibilityApp.GetVoiceRecorderStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p3, "VoiceLabel"

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "viv.accessibilityApp.TurnOnVoiceAssistant"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p3, "VoiceAssistant"

    goto :goto_4

    :cond_7
    :goto_2
    const-string p3, "UniversalSwitch"

    goto :goto_4

    :cond_8
    :goto_3
    const-string p3, "ColorAdjustment"

    :cond_9
    :goto_4
    move-object v0, p3

    :cond_a
    const-string/jumbo p3, "paramValue : "

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "BixbyActionFactory"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;->getTargetMenu(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;

    move-result-object p3

    instance-of v2, p3, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/BaseColorAction;

    if-eqz v2, :cond_c

    check-cast p3, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/BaseColorAction;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportColorAdjustment(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p3, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;

    invoke-direct {p3}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;-><init>()V

    goto :goto_5

    :cond_b
    new-instance p3, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;

    invoke-direct {p3}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;-><init>()V

    :cond_c
    :goto_5
    instance-of v2, p3, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;

    if-eqz v2, :cond_d

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;

    iget-object v3, v2, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-nez v3, :cond_d

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->getControllerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {p3, p1, v1, p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->doAction(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    :cond_e
    :goto_6
    const-class p0, Lcom/samsung/android/settings/accessibility/bixby/provider/AccessibilityBixbyProvider;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Result - AccessibilityBixbyProvider "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_f

    const-string/jumbo p1, "null"

    goto :goto_7

    :cond_f
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    const-string p3, "AccessibilityBixbyProvider"

    invoke-static {p0, p1, p3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
