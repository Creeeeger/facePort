.class public Lcom/samsung/android/knox/util/ISemKeyStoreService$Default;
.super Ljava/lang/Object;
.source "ISemKeyStoreService.java"

# interfaces
.implements Lcom/samsung/android/knox/util/ISemKeyStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/util/ISemKeyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeystoreStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grantAccessForAKS(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .locals 1
    .param p1, "caCert"    # Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I
    .locals 1
    .param p1, "certificate"    # Lcom/samsung/android/knox/util/SemCertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAliasExists(Ljava/lang/String;)I
    .locals 1
    .param p1, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
