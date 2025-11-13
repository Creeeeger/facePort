.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;
.super Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFullAodSupportDisplays:I

.field public mIsGoingToAod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    iput p2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mFullAodSupportDisplays:I

    return-void
.end method


# virtual methods
.method public final onAodShowStateChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowingAod()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FullAodDisplayStateMonitor"

    const-string v0, "onAodShowStateChanged: going to AOD cancelled"

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowWallpaperOnAodEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    iget v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mFullAodSupportDisplays:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    return-void
.end method

.method public final declared-synchronized onCommand(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4943dbf9

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    const v4, -0x2a4e26bf

    if-eq v3, v4, :cond_2

    const v4, 0x69401ccd

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    const-string v3, "samsung.android.wallpaper.goingtosleep"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v5

    goto :goto_2

    :cond_3
    const-string v3, "android.wallpaper.wakingup"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, -0x1

    :goto_2
    if-eqz p2, :cond_b

    if-eq p2, v2, :cond_8

    if-eq p2, v5, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isMyDisplayDisabledByFoldState()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkDeviceUtils;->isDozeAfterScreenOff(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "FullAodDisplayStateMonitor"

    const-string p2, "onCommand: will enter AOD. ignore OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    goto :goto_5

    :cond_7
    :goto_3
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    goto :goto_5

    :cond_8
    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isMyDisplayDisabledByFoldState()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkDeviceUtils;->isDozeAfterScreenOff(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const-string p1, "FullAodDisplayStateMonitor"

    const-string p2, "onCommand: will enter AOD. ignore OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    goto :goto_5

    :cond_a
    :goto_4
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z

    goto :goto_5

    :cond_b
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;->mIsGoingToAod:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0

    throw p1
.end method
