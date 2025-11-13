.class public abstract Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFoldStateListener:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFolded:Z

.field public mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public mListener:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->NONE:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mIsFolded:Z

    new-instance v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mFoldStateListener:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getCurrentWhich()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mListener:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
.end method

.method public final isInteractive()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkDeviceUtils;->sMethodIsDozeAfterScreenOff:Ljava/lang/reflect/Method;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isMyDisplayDisabledByFoldState()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mIsFolded:Z

    if-ne v0, p0, :cond_3

    move v3, v1

    :cond_3
    xor-int/lit8 p0, v3, 0x1

    return p0
.end method

.method public final declared-synchronized notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mListener:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public abstract onCommand(ILjava/lang/String;)V
.end method

.method public start(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mListener:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mIsFolded:Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mFoldStateListener:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mListener:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->NONE:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mLastReportedState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mFoldStateListener:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    invoke-virtual {v0, p0}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    return-void
.end method
