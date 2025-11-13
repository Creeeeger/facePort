.class public final Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cameraFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/CameraFlashNotificationAction;

.field public final screenFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/ScreenFlashNotificationAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/CameraFlashNotificationAction;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;->cameraFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/CameraFlashNotificationAction;

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/ScreenFlashNotificationAction;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;->screenFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/ScreenFlashNotificationAction;

    return-void
.end method


# virtual methods
.method public final doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    const-string/jumbo p3, "turn_on"

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "turn_off"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;->cameraFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/CameraFlashNotificationAction;

    iget-object v2, v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-nez v2, :cond_1

    const-string v2, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecCameraFlashNotificationPreferenceController"

    const-string v3, "CameraLight"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;->screenFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/ScreenFlashNotificationAction;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-nez v2, :cond_2

    const-string v2, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecScreenFlashNotificationPreferenceController"

    const-string v3, "Screen"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    :cond_2
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->doAction(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p3, p2, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->doAction(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "success"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, "fail"

    :goto_1
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;->cameraFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/CameraFlashNotificationAction;

    iget-object v2, v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecCameraFlashNotificationPreferenceController"

    const-string v3, "CameraLight"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/FlashNotificationAction;->screenFlash:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/ScreenFlashNotificationAction;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-nez v2, :cond_1

    const-string v2, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecScreenFlashNotificationPreferenceController"

    const-string v3, "Screen"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    :cond_1
    const-string v2, "get"

    invoke-virtual {p0, v2, p2, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->doAction(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, v2, p2, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->doAction(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

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

    const-string p0, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecFlashNotificationsPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.advanced.flashnotification.SecFlashNotificationsPreferenceFragment"

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

    const p0, 0x7f140fbf

    return p0
.end method
