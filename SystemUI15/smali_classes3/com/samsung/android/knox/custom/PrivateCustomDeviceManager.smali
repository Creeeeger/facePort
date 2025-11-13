.class public Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final GEAR_PACKAGE_FILTER:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PrivateCustomDeviceManager"

.field public static gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

.field public static mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    const-string v0, "com.samsung.android.gear1plugin"

    const-string v1, "com.samsung.android.wms"

    const-string v2, "com.samsung.android.hostmanager"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getGearNotificationStateInternal(ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrivateCustomDeviceManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getLoadingLogoPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PrivateCustomDeviceManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public getUsbConnectionTypeInternal()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PrivateCustomDeviceManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoOpenLastAppAllowed()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PrivateCustomDeviceManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PrivateCustomDeviceManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stayInForeground(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stayInDexForegroundMode(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PrivateCustomDeviceManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
