.class public Lcom/samsung/android/settings/display/ScreenZoomSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.samsung.intent.action.UPDATE_SCREEN_ZOOM"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "SecDisplayUtils"

    const/4 v1, 0x0

    const-string v2, "ScreenZoomSettingsReceiver"

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenZoomInfo(Landroid/content/Context;)[I

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "screenZoomInfo is null, so return"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x1

    aget v3, p0, p2

    aget v4, p0, v1

    const-string v5, "current zoomIndex="

    const-string v6, " zoomRange="

    invoke-static {v5, v6, v3, v4, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v5

    const-string/jumbo v6, "ro.sf.lcd_density"

    const/16 v7, 0xa0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "isDefaultScreenZoom currentDensity : "

    const-string v8, ", deviceDensity: "

    invoke-static {v7, v8, v5, v6, v0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-gt v5, v6, :cond_1

    add-int/2addr v3, p2

    aput v3, p0, p2

    aput v4, p0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Update screen zoom. index="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setScreenZoomInfo(Landroid/content/Context;[I)V

    goto :goto_2

    :cond_1
    const-string p0, "No update! zoomIndex: "

    invoke-static {v3, p0, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "com.samsung.intent.action.SET_DEFAULT_SCREEN_ZOOM"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Set default screen zoom"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    const-string/jumbo p0, "setDefaultScreenZoom: Can\'t call getInitialDisplayDensity() on IWindowManager. Remote exception="

    const-string/jumbo p2, "setDefaultScreenZoom: baseDensity="

    const/4 v2, -0x1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p1

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v3

    int-to-float v3, v3

    aget v1, v4, p1

    mul-float/2addr v3, v1

    float-to-int v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " resolution index="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    :goto_0
    invoke-static {v2, v2, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(III)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v2, v2, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(III)V

    :cond_3
    throw p0

    :cond_4
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method
