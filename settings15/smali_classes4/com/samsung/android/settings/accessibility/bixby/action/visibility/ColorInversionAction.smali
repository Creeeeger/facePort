.class public final Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorInversionAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final doGetExclusivePopup(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    const-string/jumbo p0, "result"

    const-string p1, "false"

    invoke-static {p0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.controllers.ColorInversionPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.accessibility.ToggleColorInversionPreferenceFragment"

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    const p0, 0x7f1400ce

    return p0
.end method
