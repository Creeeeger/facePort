.class public Lcom/samsung/android/knox/util/SemKeyStoreManager;
.super Ljava/lang/Object;
.source "SemKeyStoreManager.java"


# static fields
.field public static final whitelist KEYSTORE_STATUS_LOCKED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist KEYSTORE_STATUS_UNINITIALIZED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist KEYSTORE_STATUS_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist KEYSTORE_STATUS_UNLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field


# instance fields
.field private blacklist mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/util/ISemKeyStoreService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/knox/util/SemKeyStoreManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/util/SemKeyStoreManager;

    const-string v1, "emailksproxy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/util/SemKeyStoreManager;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getKeystoreStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->getKeystoreStatus()I

    move-result v0

    return v0
.end method

.method public whitelist grantAccess(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->grantAccessForAKS(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist hasAlias(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->isAliasExists(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist installCaCert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I

    move-result v0

    return v0
.end method

.method public whitelist installCertInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1, p2, p3, p5}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I

    move-result v0

    return v0
.end method
