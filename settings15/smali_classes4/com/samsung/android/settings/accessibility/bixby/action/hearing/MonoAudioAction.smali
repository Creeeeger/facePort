.class public final Lcom/samsung/android/settings/accessibility/bixby/action/hearing/MonoAudioAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.settings.accessibility.hearing.controllers.SecPrimaryMonoHasDepthPreferenceController"

    return-object p0

    :cond_0
    const-string p0, "com.samsung.android.settings.accessibility.hearing.controllers.SecPrimaryMonoPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.settings.accessibility.hearing.MonoAudioFragment"

    return-object p0

    :cond_0
    const-string p0, "com.samsung.android.settings.accessibility.hearing.HearingEnhancementsFragment"

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    const p0, 0x7f1401ed

    return p0
.end method
