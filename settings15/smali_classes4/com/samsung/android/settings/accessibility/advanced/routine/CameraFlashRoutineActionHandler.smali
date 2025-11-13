.class public Lcom/samsung/android/settings/accessibility/advanced/routine/CameraFlashRoutineActionHandler;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public getActionTag()Ljava/lang/String;
    .locals 0

    const-string p0, "accessibility_camera_flash"

    return-object p0
.end method

.method public bridge synthetic getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f140fc0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isActionEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "camera_flash_notification"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    sget-boolean p0, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->FEATURE_ACCESSIBILITY_SETTINGS_HOME_APPLIANCE_BACKUP:Z

    sget-object p0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;

    const-string p0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public setActionEnable(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "camera_flash_notification"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
