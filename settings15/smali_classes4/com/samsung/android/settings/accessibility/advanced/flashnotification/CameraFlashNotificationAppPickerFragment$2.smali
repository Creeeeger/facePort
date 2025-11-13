.class public final Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    return-void
.end method


# virtual methods
.method public final onStateAllChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->ALIAS_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "all"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "camera_flash_notification_app_list"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "camera_flash_notification"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    iget-object p1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->installedAppSet:Ljava/util/Set;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->putAppPreferenceWithAlias(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Set;)V

    const-string p1, "camera_flash_notification"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p2, :cond_1

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->installedAppSet:Ljava/util/Set;

    invoke-static {p2, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->isOffAll(Landroid/content/Context;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
