.class public Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mDisplayStateMonitor:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

.field public final synthetic this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    const-string p1, "LiveWallpaperService"

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    move-result-object p0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v2, "semGetExtras"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "semGetExtras : e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngineReflector"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getMyDisplayId()I
    .locals 4

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "getDisplayId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDisplayId : ee="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineReflector"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSourceWhich()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    and-int/lit8 p0, p0, 0x3c

    or-int/2addr p0, v1

    :cond_0
    return p0
.end method

.method public getWhich()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v2, "semGetWallpaperFlags"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "semGetWallpaperFlags : e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngineReflector"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public isKeyguardTouchEventRequired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->-$$Nest$sfgetDEBUG()Z

    move-result p6

    if-eqz p6, :cond_1

    iget-object p6, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    const-string v0, "onCommand : "

    const-string v1, ", x="

    const-string v2, ", y="

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    const-string v2, ", hasExtras="

    invoke-static {v0, p3, v1, p4, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->onCommand(ILjava/lang/String;)V

    const-string p2, "android.wallpaper.reapply"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.wallpaper.keyguardgoingaway"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onKeyguardGoingAway()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onReapply()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->-$$Nest$fgetmEngineManager(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    if-eqz v1, :cond_0

    if-ne v1, p0, :cond_0

    const-string v0, "LiveWallpaperEngineManager"

    const-string v1, "registerEngine : already registered engine"

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->mEngineList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;->sFullAodSupportDisplays:I

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/FullAodDisplayStateMonitor;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    sget-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;->sIsSupportSeamlessAod:Z

    if-eqz v0, :cond_3

    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;

    invoke-direct {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/SeamlessAodDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    sget-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;->sIsSupportAod:Z

    if-eqz v0, :cond_4

    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;

    invoke-direct {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/BasicAodDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/NoAodDisplayStateMonitor;

    invoke-direct {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/NoAodDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    new-instance p1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->start(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;)V

    return-void

    :goto_3
    monitor-exit p1

    throw p0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->-$$Nest$fgetmEngineManager(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    if-eqz v2, :cond_0

    if-ne v2, p0, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->stop()V

    :cond_3
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 0

    return-void
.end method

.method public onGetRunningState(Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateResults;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onKeyguardGoingAway()V
    .locals 0

    return-void
.end method

.method public onReapply()V
    .locals 0

    return-void
.end method

.method public onSwitchDisplayChanged(Z)V
    .locals 0

    return-void
.end method

.method public setFixedOrientation(ZZ)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "semSetFixedOrientation"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "semSetFixedOrientation : e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EngineReflector"

    invoke-static {p2, p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
