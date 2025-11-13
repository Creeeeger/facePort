.class public final Lcom/samsung/android/settings/accessibility/bixby/action/hearing/SpeechToTextAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.hearing.controllers.SpeechToTextPreferenceController"

    return-object p0
.end method

.method public final getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "voicenote.intent.action.SPEECH_TO_TEXT"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
