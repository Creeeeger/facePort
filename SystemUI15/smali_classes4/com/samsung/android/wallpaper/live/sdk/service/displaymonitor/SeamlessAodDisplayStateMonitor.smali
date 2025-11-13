.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;
.super Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLastAodState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;->mLastAodState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isMyDisplayDisabledByFoldState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowingAod()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;->mLastAodState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final onAodShowStateChanged(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    and-int/lit8 p1, p1, 0x3c

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowingAod()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowWallpaperOnAodEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    and-int/lit8 p1, v0, 0x3c

    if-ne p1, v1, :cond_3

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final declared-synchronized onCommand(ILjava/lang/String;)V
    .locals 5

    const-string v0, "onCommand : unexpected state. x="

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5d68d75a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x4943dbf9

    if-eq v1, v2, :cond_1

    const v2, 0x69401ccd

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const-string v1, "android.wallpaper.wakingup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "android.wallpaper.aodstate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_d

    const/4 v1, 0x4

    const/16 v2, 0x10

    if-eq p2, v4, :cond_a

    if-eq p2, v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v2

    :cond_5
    and-int/lit8 p2, v1, 0x3c

    if-ne p2, v2, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    goto :goto_2

    :cond_7
    if-ne p1, v4, :cond_8

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    goto :goto_2

    :cond_8
    if-ne p1, v3, :cond_9

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    goto :goto_2

    :cond_9
    const-string p2, "SeamlessAodDisplayStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;->mLastAodState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    move v1, v2

    :cond_b
    and-int/lit8 p1, v1, 0x3c

    if-ne p1, v2, :cond_c

    goto :goto_3

    :cond_c
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    :goto_3
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;->mLastAodState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    goto :goto_4

    :cond_d
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method
