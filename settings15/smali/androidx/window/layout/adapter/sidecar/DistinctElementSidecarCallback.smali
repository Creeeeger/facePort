.class public Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# instance fields
.field private final mActivityWindowLayoutInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

.field private final mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

.field private mLastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    return-void
.end method

.method public constructor <init>(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    invoke-direct {v0}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

    invoke-virtual {v1, v2, p1}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->isEqualSidecarDeviceState(Landroidx/window/sidecar/SidecarDeviceState;Landroidx/window/sidecar/SidecarDeviceState;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    invoke-interface {p0, p1}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    invoke-virtual {v2, v1, p2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->isEqualSidecarWindowLayoutInfo(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    invoke-interface {p0, p1, p2}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
