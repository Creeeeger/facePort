.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final greylist-max-o GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final greylist-max-o GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final greylist-max-o GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final greylist-max-o GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field public static final blacklist LAZY_SERVICE_NAME:Ljava/lang/String; = "lazy_service"

.field private static final greylist-max-o SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final greylist-max-o STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ServiceManager"

.field private static blacklist _context:Landroid/content/Context;

.field private static blacklist lazyServiceManager:Landroid/os/LazyService;

.field private static greylist sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sGetServiceAccumulatedCallCount:I

.field private static greylist-max-o sGetServiceAccumulatedUs:I

.field private static greylist-max-o sLastSlowLogActualTime:J

.field private static greylist-max-o sLastSlowLogUptime:J

.field private static greylist-max-o sLastStatsLogUptime:J

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist sServiceManager:Landroid/os/IServiceManager;

.field public static final greylist-max-o sStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    .line 73
    nop

    .line 74
    const-string v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    .line 80
    nop

    .line 81
    const-string v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 86
    nop

    .line 87
    const-string v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    .line 92
    nop

    .line 93
    const-string v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 117
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    .line 129
    const/4 v0, 0x0

    sput-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    .line 130
    sput-object v0, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 235
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 236
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z

    .line 250
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 251
    return-void
.end method

.method public static greylist-max-r addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z
    .param p3, "dumpPriority"    # I

    .line 268
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "creator"    # Landroid/os/IServiceCreator;

    .line 163
    sget-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    invoke-interface {p1, v0}, Landroid/os/IServiceCreator;->createService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 165
    return-void

    .line 168
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/LazyService;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    .line 169
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/Class;

    .line 147
    sget-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    if-nez v0, :cond_0

    .line 149
    :try_start_0
    new-instance v0, Landroid/os/LazyService$DefaultServiceCreator;

    invoke-direct {v0, p1}, Landroid/os/LazyService$DefaultServiceCreator;-><init>(Ljava/lang/Class;)V

    .line 150
    .local v0, "creator":Landroid/os/LazyService$DefaultServiceCreator;
    sget-object v1, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/LazyService$DefaultServiceCreator;->createService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "creator":Landroid/os/LazyService$DefaultServiceCreator;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/LazyService;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 158
    return-void
.end method

.method public static greylist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 282
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 283
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 284
    return-object v0

    .line 286
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 288
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in checkService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 318
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getDeclaredInstances"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    .line 178
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_0

    .line 179
    return-object v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 185
    return-object v0
.end method

.method public static greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 198
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 199
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 200
    return-object v0

    .line 202
    :cond_0
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 204
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .locals 3

    .line 389
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getServiceDebugInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 217
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 218
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 219
    return-object v0

    .line 221
    :cond_0
    new-instance v1, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v1, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o initServiceCache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 409
    return-void

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isDeclared(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 302
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in isDeclared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist listServices()[Ljava/lang/String;
    .locals 3

    .line 375
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 19
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    move-object/from16 v1, p0

    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 427
    .local v2, "start":J
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 429
    .local v4, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 431
    .local v6, "time":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 432
    .local v7, "myUid":I
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    .line 434
    .local v8, "isCore":Z
    if-eqz v8, :cond_0

    .line 435
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_0

    .line 436
    :cond_0
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    :goto_0
    nop

    .line 438
    .local v9, "slowThreshold":J
    sget-object v11, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 439
    :try_start_0
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v0, v6

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 440
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 445
    .local v12, "nowUptime":J
    int-to-long v14, v6

    cmp-long v0, v14, v9

    const-wide/16 v14, 0x1388

    if-ltz v0, :cond_2

    .line 449
    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long v16, v16, v14

    cmp-long v0, v12, v16

    if-gtz v0, :cond_1

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    int-to-long v14, v6

    cmp-long v0, v16, v14

    if-gez v0, :cond_2

    .line 451
    :cond_1
    div-int/lit16 v0, v6, 0x3e8

    invoke-static {v0, v1}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    .line 453
    sput-wide v12, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    .line 454
    int-to-long v14, v6

    sput-wide v14, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    .line 460
    :cond_2
    if-eqz v8, :cond_3

    .line 461
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    goto :goto_1

    .line 462
    :cond_3
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    :goto_1
    nop

    .line 464
    .local v0, "logInterval":I
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v14, v0, :cond_4

    sget-wide v15, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    const-wide/16 v17, 0x1388

    add-long v17, v15, v17

    cmp-long v17, v12, v17

    if-ltz v17, :cond_4

    .line 467
    sget v5, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v5, v5, 0x3e8

    move/from16 v18, v0

    .end local v0    # "logInterval":I
    .local v18, "logInterval":I
    sub-long v0, v12, v15

    long-to-int v0, v0

    invoke-static {v14, v5, v0}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    .line 471
    const/4 v0, 0x0

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 472
    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 473
    sput-wide v12, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    goto :goto_2

    .line 464
    .end local v18    # "logInterval":I
    .restart local v0    # "logInterval":I
    :cond_4
    move/from16 v18, v0

    .line 475
    .end local v0    # "logInterval":I
    .end local v12    # "nowUptime":J
    :goto_2
    monitor-exit v11

    .line 476
    return-object v4

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 364
    return-void
.end method

.method public static blacklist waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 352
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static blacklist waitForService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 335
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;
.end method


# virtual methods
.method public greylist initLazyServiceManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    sput-object p1, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    .line 136
    new-instance v0, Landroid/os/LazyService;

    invoke-direct {v0, p1}, Landroid/os/LazyService;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    .line 138
    :try_start_0
    const-string/jumbo v1, "lazy_service"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ServiceManager"

    const-string v2, "Failure starting Lazy Service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v1, 0x0

    sput-object v1, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
