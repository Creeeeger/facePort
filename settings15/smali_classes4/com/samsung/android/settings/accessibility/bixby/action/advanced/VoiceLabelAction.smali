.class public final Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final addCustomAction(Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction;)V

    const-string/jumbo p0, "viv.accessibilityApp.GetVoiceRecorderStatus"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.controllers.VoiceLabelPreferenceController"

    return-object p0
.end method

.method public final getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "voicenote.intent.action.accessibility"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
