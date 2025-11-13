.class public abstract Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;
.super Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mObserver:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->mObserver:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
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
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowWallpaperOnAodEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final isShowWallpaperOnAodEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_lockscreen_wallpaper"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isShowingAod()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_state"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public abstract onAodShowStateChanged(Z)V
.end method

.method public final start(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->start(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;)V

    const-class p1, Landroid/content/ContentResolver;

    const-string v0, "registerContentObserverAsUser"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/database/ContentObserver;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Landroid/os/UserHandle;

    aput-object v3, v1, v2

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot load method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkReflectUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->mObserver:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    filled-new-array {v1, v2, p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->mObserver:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->stop()V

    return-void
.end method
