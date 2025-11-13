.class public Lcom/samsung/android/hardware/display/SemColorDisplayManager;
.super Ljava/lang/Object;
.source "SemColorDisplayManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;


# instance fields
.field private final blacklist mColorDisplayManager:Landroid/hardware/display/IColorDisplayManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    nop

    .line 42
    const-string v0, "color_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->mColorDisplayManager:Landroid/hardware/display/IColorDisplayManager;

    .line 43
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/samsung/android/hardware/display/SemColorDisplayManager;
    .locals 2

    const-class v0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    invoke-direct {v1}, Lcom/samsung/android/hardware/display/SemColorDisplayManager;-><init>()V

    sput-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;

    .line 53
    :cond_0
    sget-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->sInstance:Lcom/samsung/android/hardware/display/SemColorDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist setSaturationLevel(I)Z
    .locals 3
    .param p1, "saturationLevel"    # I

    .line 64
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->mColorDisplayManager:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setSaturationLevel(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/hardware/display/SemColorDisplayManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSaturationLevel failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saturation level must be between 0 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
