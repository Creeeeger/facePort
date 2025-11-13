.class public Lcom/samsung/android/knox/util/SemKeyStoreManager;
.super Ljava/lang/Object;
.source "SemKeyStoreManager.java"


# static fields
.field public static final whitelist KEYSTORE_STATUS_LOCKED:I = 0x2

.field public static final whitelist KEYSTORE_STATUS_UNINITIALIZED:I = 0x3

.field public static final whitelist KEYSTORE_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist KEYSTORE_STATUS_UNLOCKED:I = 0x1


# instance fields
.field private blacklist mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/util/ISemKeyStoreService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    .line 59
    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/knox/util/SemKeyStoreManager;
    .locals 2

    .line 134
    new-instance v0, Lcom/samsung/android/knox/util/SemKeyStoreManager;

    .line 135
    const-string v1, "emailksproxy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/util/SemKeyStoreManager;-><init>(Landroid/os/IBinder;)V

    .line 134
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

    .line 124
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->getKeystoreStatus()I

    move-result v0

    return v0
.end method

.method public whitelist grantAccess(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->grantAccessForAKS(ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public whitelist hasAlias(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
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
    .param p1, "caCert"    # Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I

    move-result v0

    return v0
.end method

.method public whitelist installCertInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I
    .locals 1
    .param p1, "certificate"    # Lcom/samsung/android/knox/util/SemCertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemKeyStoreManager;->mRemoteServiceKeystore:Lcom/samsung/android/knox/util/ISemKeyStoreService;

    invoke-interface {v0, p1, p2, p3, p5}, Lcom/samsung/android/knox/util/ISemKeyStoreService;->installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I

    move-result v0

    return v0
.end method
