.class public Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;
.super Ljava/lang/Object;
.source "AppCloningDeviceConfigHelper.java"


# static fields
.field public static final blacklist ENABLE_APP_CLONING_BUILDING_BLOCKS:Ljava/lang/String; = "enable_app_cloning_building_blocks"

.field private static blacklist sInstance:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private volatile blacklist mEnableAppCloningBuildingBlocks:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$NeQU62mBxvagjRtzSsCc5FojlF8(Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->lambda$initializeDeviceConfigChangeListener$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->mEnableAppCloningBuildingBlocks:Z

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;
    .locals 2

    sget-object v0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->sInstance:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    invoke-direct {v1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;-><init>()V

    sput-object v1, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->sInstance:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    sget-object v1, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->sInstance:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    invoke-direct {v1, p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v1, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->sInstance:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist init(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->initializeDeviceConfigChangeListener()V

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->mDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "app_cloning"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private blacklist initializeDeviceConfigChangeListener()V
    .locals 1

    new-instance v0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;)V

    iput-object v0, p0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->mDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-void
.end method

.method private synthetic blacklist lambda$initializeDeviceConfigChangeListener$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    const-string v0, "app_cloning"

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "enable_app_cloning_building_blocks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->updateEnableAppCloningBuildingBlocks()V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist updateEnableAppCloningBuildingBlocks()V
    .locals 3

    const-string v0, "enable_app_cloning_building_blocks"

    const/4 v1, 0x1

    const-string v2, "app_cloning"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->mEnableAppCloningBuildingBlocks:Z

    return-void
.end method


# virtual methods
.method public blacklist getEnableAppCloningBuildingBlocks()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->mEnableAppCloningBuildingBlocks:Z

    return v0
.end method
