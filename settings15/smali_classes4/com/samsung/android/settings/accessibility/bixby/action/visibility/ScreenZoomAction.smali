.class public final Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ScreenZoomAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.display.SecScreenZoomPreferenceFragment"

    return-object p0
.end method

.method public final getTargetRestrictionKeys()Ljava/util/List;
    .locals 0

    const-string/jumbo p0, "sec_screen_size_a11y"

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    const p0, 0x7f1426dd

    return p0
.end method
