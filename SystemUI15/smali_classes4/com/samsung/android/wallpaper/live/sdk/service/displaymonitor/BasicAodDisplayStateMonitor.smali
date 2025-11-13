.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;
.super Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsGoingToAod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;->mIsGoingToAod:Z

    return-void
.end method


# virtual methods
.method public final onAodShowStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;->mIsGoingToAod:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BasicAodDisplayStateMonitor"

    const-string v0, "onAodShowStateChanged: going to AOD cancelled"

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;->mIsGoingToAod:Z

    return-void
.end method

.method public final declared-synchronized onCommand(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4943dbf9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x69401ccd

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string p1, "android.wallpaper.wakingup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isMyDisplayDisabledByFoldState()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result p2

    invoke-static {p2, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkDeviceUtils;->isDozeAfterScreenOff(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "BasicAodDisplayStateMonitor"

    const-string p2, "onCommand: will enter AOD. ignore OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;->mIsGoingToAod:Z

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;->mIsGoingToAod:Z

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;->mIsGoingToAod:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method
