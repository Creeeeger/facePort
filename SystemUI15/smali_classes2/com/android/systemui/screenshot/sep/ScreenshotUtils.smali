.class public final Lcom/android/systemui/screenshot/sep/ScreenshotUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplay(ILandroid/content/Context;)Landroid/view/Display;
    .locals 8

    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v1, "LARGESCREEN"

    invoke-static {v0, v1}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "display"

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    const-string v4, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-ne v7, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getDisplay: subDisplay\'s rotation="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Screenshot"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getNavBarPosition(Landroid/content/Context;IZ)I
    .locals 3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    const/4 v1, 0x4

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget v2, v0, Landroid/graphics/Insets;->left:I

    if-eqz v2, :cond_1

    if-lt v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/Insets;->right:I

    if-eqz v2, :cond_2

    if-lt v2, p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "navigation_bar_gesture_while_hidden"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_3
    if-lt v0, p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1
.end method

.method public static getScreenshotSaveInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screenshot_current_save_dir"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getScreenshotSaveInfoDB() saveInfo: "

    const-string v3, "Screenshot"

    invoke-static {v2, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":"

    const-string v4, "external_primary:DCIM/Screenshots"

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "external_primary:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {p0}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v0, "setScreenshotSaveInfoDB() isSuccessfullySet: "

    invoke-static {v0, v3, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    const/4 p0, 0x2

    invoke-virtual {v4, v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "Screenshot"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isDesktopMode :: context is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "desktopmode"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez p0, :cond_1

    const-string p0, "isDesktopMode :: desktopModeManager is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne p0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string p0, "isDesktopMode :: isDeXMode="

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public static isExcludeSystemUI(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/16 v1, 0x96

    const-string v2, "exclude_systemui_screenshots"

    const/4 v3, 0x0

    if-gt v1, v0, :cond_0

    const/16 v1, 0xa0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v3, v0

    :cond_1
    const-string p0, "isExcludeSystemUI : "

    const-string v0, "Screenshot"

    invoke-static {p0, v0, v3}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public static isSubDisplayCapture(I)Z
    .locals 2

    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v1, "WATCHFACE"

    invoke-static {v0, v1}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showToast(ILandroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
