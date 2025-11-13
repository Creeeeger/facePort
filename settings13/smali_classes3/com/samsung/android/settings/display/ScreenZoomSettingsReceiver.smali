.class public Lcom/samsung/android/settings/display/ScreenZoomSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenZoomSettingsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.samsung.intent.action.UPDATE_SCREEN_ZOOM"

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ScreenZoomSettingsReceiver"

    if-eqz p2, :cond_2

    .line 17
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenZoomInfo(Landroid/content/Context;)[I

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "screenZoomInfo is null, so return"

    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 23
    aget v1, p0, p2

    const/4 v2, 0x0

    .line 24
    aget v3, p0, v2

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current zoomIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " zoomRange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultScreenZoom(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v1, p2

    .line 29
    aput v1, p0, p2

    .line 30
    aput v3, p0, v2

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update screen zoom. index="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1, p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setScreenZoomInfo(Landroid/content/Context;[I)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No update! zoomIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.intent.action.SET_DEFAULT_SCREEN_ZOOM"

    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Set default screen zoom"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDefaultScreenZoom(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
