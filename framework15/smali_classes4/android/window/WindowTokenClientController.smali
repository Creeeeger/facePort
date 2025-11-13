.class public Landroid/window/WindowTokenClientController;
.super Ljava/lang/Object;
.source "WindowTokenClientController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sController:Landroid/window/WindowTokenClientController;


# instance fields
.field private final blacklist mAppThread:Landroid/app/IApplicationThread;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mWindowTokenClientMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowTokenClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/window/WindowTokenClientController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClientMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static blacklist createInstanceForTesting()Landroid/window/WindowTokenClientController;
    .locals 1

    new-instance v0, Landroid/window/WindowTokenClientController;

    invoke-direct {v0}, Landroid/window/WindowTokenClientController;-><init>()V

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/window/WindowTokenClientController;
    .locals 2

    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    if-nez v1, :cond_0

    new-instance v1, Landroid/window/WindowTokenClientController;

    invoke-direct {v1}, Landroid/window/WindowTokenClientController;-><init>()V

    sput-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    :cond_0
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getWindowTokenClient(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;
    .locals 4

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowTokenClient;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    sget-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find attached WindowTokenClient for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V
    .locals 3

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist overrideForTesting(Landroid/window/WindowTokenClientController;)V
    .locals 2

    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist attachToDisplayArea(Landroid/window/WindowTokenClient;IILandroid/os/Bundle;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, v2, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist attachToWindowToken(Landroid/window/WindowTokenClient;Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist detachIfNeeded(Landroid/window/WindowTokenClient;)V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->detachWindowContext(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getWindowContext(Landroid/os/IBinder;)Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowTokenClient;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/window/WindowTokenClient;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClient(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    :cond_0
    return-void
.end method

.method public blacklist onWindowContextWindowRemoved(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClient(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->onWindowTokenRemoved()V

    :cond_0
    return-void
.end method
