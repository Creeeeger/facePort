.class public final Landroid/hardware/SensorPrivacyManager;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$Sources;,
        Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$StateTypes;,
        Landroid/hardware/SensorPrivacyManager$ToggleType;,
        Landroid/hardware/SensorPrivacyManager$Sensors;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ALL_SENSORS:Ljava/lang/String;

.field public static final blacklist EXTRA_NOTIFICATION_ID:Ljava/lang/String;

.field public static final blacklist EXTRA_SENSOR:Ljava/lang/String;

.field public static final blacklist EXTRA_TOGGLE_TYPE:Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final whitelist TOGGLE_TYPE_HARDWARE:I = 0x2

.field public static final whitelist TOGGLE_TYPE_SOFTWARE:I = 0x1

.field private static blacklist sInstance:Landroid/hardware/SensorPrivacyManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

.field private final blacklist mLegacyToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRequiresAuthentication:Ljava/lang/Boolean;

.field private final blacklist mService:Landroid/hardware/ISensorPrivacyManager;

.field private blacklist mToggleListenerRegistered:Z

.field private final blacklist mToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToggleSupportCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.sensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.notification_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.all_sensors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".extra.toggle_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/hardware/SensorPrivacyManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/SensorPrivacyManager$1;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .locals 4

    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string/jumbo v1, "sensor_privacy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;

    move-result-object v2

    new-instance v3, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v3, p0, v2}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v3, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)Landroid/hardware/SensorPrivacyManager;
    .locals 2

    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v1, p0, p1}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist resolveSourceFromCurrentContext()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    return v1

    :cond_0
    const/4 v1, 0x5

    return v1
.end method


# virtual methods
.method public blacklist addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    if-nez v1, :cond_0

    new-instance v2, Landroid/hardware/SensorPrivacyManager$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/SensorPrivacyManager$3;-><init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, v1}, Landroid/hardware/ISensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/hardware/SensorPrivacyManager$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/hardware/SensorPrivacyManager$2;-><init>(Landroid/hardware/SensorPrivacyManager;ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public whitelist addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public whitelist addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist areAnySensorPrivacyTogglesEnabled(I)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCameraPrivacyAllowlist()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1}, Landroid/hardware/ISensorPrivacyManager;->getCameraPrivacyAllowlist()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getSensorPrivacyState(II)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->getToggleSensorPrivacyState(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAllSensorPrivacyEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->isSensorPrivacyEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCameraPrivacyEnabled(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSensorPrivacyEnabled(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isSensorPrivacyEnabled(II)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->isToggleSensorPrivacyEnabled(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, v1}, Landroid/hardware/ISensorPrivacyManager;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist removeSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist requiresAuthentication()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->requiresAuthentication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist setAllSensorPrivacy(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->setSensorPrivacy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCameraPrivacyAllowlist(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1, p1}, Landroid/hardware/ISensorPrivacyManager;->setCameraPrivacyAllowlist(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist setSensorPrivacy(IIZ)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    return-void
.end method

.method public blacklist setSensorPrivacy(IIZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacy(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSensorPrivacy(IZ)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    const/4 v1, -0x2

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZ)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZI)V

    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyForProfileGroup(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSensorPrivacyForProfileGroupWithConfirmPopup(IIZI)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    const/4 v1, -0x2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyForProfileGroupWithConfirmPopup(IIIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSensorPrivacyState(II)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyState(III)V

    return-void
.end method

.method public blacklist setSensorPrivacyState(III)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyState(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSensorPrivacyStateForProfileGroup(III)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyStateForProfileGroup(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist showSensorUseDialog(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->showSensorUseDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Received exception while trying to show sensor use dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist supportsSensorToggle(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    return v0
.end method

.method public whitelist supportsSensorToggle(II)Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v3, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist suppressSensorPrivacyReminders(IZ)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZI)V

    return-void
.end method

.method public blacklist suppressSensorPrivacyReminders(IZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    invoke-interface {v0, p3, p1, v1, p2}, Landroid/hardware/ISensorPrivacyManager;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
