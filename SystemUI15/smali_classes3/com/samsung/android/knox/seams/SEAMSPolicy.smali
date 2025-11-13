.class public Lcom/samsung/android/knox/seams/SEAMSPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final CLIPBOARD_DISABLE_BIDIRECTIONAL:I = 0x1

.field public static final CLIPBOARD_ENABLE_BIDIRECTIONAL:I = 0x0

.field public static final DEBUG:Z

.field public static final ERROR_ALREADY_CONTAINER_APP:I = -0x9

.field public static final ERROR_CERTS_NOT_MATCHED:I = -0xd

.field public static final ERROR_CONTAINER_COUNTS_OVERFLOW:I = -0x7

.field public static final ERROR_CONTAINER_ID_MISMATCH:I = -0xc

.field public static final ERROR_CONTAINER_NOT_EMPTY:I = -0xb

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_NO_CERTS:I = -0xe

.field public static final FALSE:I = 0x0

.field public static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GET_SERVICE_ERROR:I = -0xa

.field public static final IRM_PLATFORM_APPTYPE:I = 0x7

.field public static final IRM_UNTRUST_APPTYPE:I = 0x8

.field public static final NOT_INSTALLED:I = -0x4

.field public static final POLICY_FAILED:I = -0x1

.field public static final POLICY_OK:I = 0x0

.field public static final POLICY_REFUSED:I = -0x2

.field public static final RUNNING:I = -0x8

.field public static final SET_DEFAULT_MASK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SEAMS"

.field public static final TRUE:I = 0x1

.field public static mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public activateDomain()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public activateDomain(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public createSEContainer()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public deActivateDomain()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public forceAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Service is null"

    const-string p2, "SEAMS"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "Process ID rejected."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAMSLog()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAMSLogLevel()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getAMSMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getAVCLog()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivationStatus()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDataType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomain(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEAMSLog()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEContainerIDs()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSELinuxMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSepolicyVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getService()Lcom/samsung/android/knox/seams/ISEAMS;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    if-nez v0, :cond_0

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasKnoxContainers()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public hasSEContainers()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    const-string v1, "SEAMS"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Failed to check the authenticity of the caller"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "SystemService null. Returning GET_SERVICE_ERROR."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0
.end method

.method public isSEAndroidLogDumpStateInclude()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isSEPolicyAutoUpdateEnabled()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public relabelData()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public removeSEContainer(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAMSLogLevel(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setSEAndroidLogDumpStateInclude(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
