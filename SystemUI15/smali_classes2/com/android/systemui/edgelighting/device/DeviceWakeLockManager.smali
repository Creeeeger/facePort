.class public final Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;


# instance fields
.field public final mWakeLockMap:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;-><init>()V

    sput-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
