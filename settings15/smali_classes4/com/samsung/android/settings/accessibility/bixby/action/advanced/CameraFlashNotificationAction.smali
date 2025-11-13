.class public final Lcom/samsung/android/settings/accessibility/bixby/action/advanced/CameraFlashNotificationAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->isApplicationRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "result"

    const-string p1, "DeviceChangeNeeded"

    invoke-static {p0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecCameraFlashNotificationPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.advanced.flashnotification.CameraFlashNotificationAppPickerFragment"

    return-object p0
.end method

.method public final getTargetRestrictionKeys()Ljava/util/List;
    .locals 1

    const-string p0, "accessibility_advanced_settings"

    const-string v0, "accessibility_flash_notificaitons"

    invoke-static {p0, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    const p0, 0x7f140fc0

    return p0
.end method
