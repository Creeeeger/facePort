.class public abstract Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sBottomInsetScale:[F

.field public static sInsetScale:[F

.field public static sIsForceUpdate:Z

.field public static sIsWalletApp:Z


# direct methods
.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getNavBarMode(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigation_bar_gesture_while_hidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isDefaultDigitalAssistantAppSet(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "navigationbar_splugin_flags"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isGestureDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isGestureHintOn(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigation_bar_gesture_hint"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSimplifiedGesture()Z
    .locals 5

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_0

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string v4, "SupportLegacyGestureOptions"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/Rune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v4, 0x24a54

    if-lt v3, v4, :cond_2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public static isSupportLegacyFeatures(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigationbar_splugin_flags"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSimplifiedGesture()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSupportSearcle()Z
    .locals 2

    const-string/jumbo v0, "ro.com.google.cdb.spa1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bsxasm1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportTouch2Search()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportTouch2Search()Z
    .locals 2

    const-string/jumbo v0, "ro.bbt.support.circle2search"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTaskBarEnableCondition(Landroid/content/Context;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "minimal_battery_use"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    const-string v7, "content://com.sec.knox.provider2/KioskMode"

    const-string v8, "isNavigationBarHidden"

    invoke-static {p0, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v1

    :goto_4
    if-nez v0, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    if-nez v7, :cond_6

    invoke-static {p0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isSamsungLauncher(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public static isTaskBarEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "task_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnableCondition(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setSensitivityInsetScale(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "navigation_bar_back_gesture_sensitivity_sub"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "navigation_bar_back_gesture_sensitivity"

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    aget v2, v2, v0

    const-string v3, "back_gesture_inset_scale_left"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    aget v2, v2, v0

    const-string v3, "back_gesture_inset_scale_right"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10700ab

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    aget p0, p0, v0

    const-string v0, "bottom_gesture_inset_scale"

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method
