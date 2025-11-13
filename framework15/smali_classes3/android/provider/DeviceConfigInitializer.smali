.class public Landroid/provider/DeviceConfigInitializer;
.super Ljava/lang/Object;
.source "DeviceConfigInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfigInitializer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDeviceConfigServiceManager()Landroid/provider/DeviceConfigServiceManager;
    .locals 2

    sget-object v0, Landroid/provider/DeviceConfigInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/provider/DeviceConfigInitializer;->sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist setDeviceConfigServiceManager(Landroid/provider/DeviceConfigServiceManager;)V
    .locals 3

    sget-object v0, Landroid/provider/DeviceConfigInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/provider/DeviceConfigInitializer;->sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "serviceManager must not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sput-object p0, Landroid/provider/DeviceConfigInitializer;->sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setDeviceConfigServiceManager called twice!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
