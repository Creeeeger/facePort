.class public Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Default;
.super Ljava/lang/Object;
.source "IVaultKeeperService.java"

# interfaces
.implements Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;
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

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkDataWritable(Ljava/lang/String;)I
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist destroy(Ljava/lang/String;[B[B[B)I
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "hmac"    # [B
    .param p3, "cert"    # [B
    .param p4, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist encryptMessage(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist generateHotpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initialize(Ljava/lang/String;[B[B[B[B)I
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "initUnsheltered"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInitialized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist migrationStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist read(Ljava/lang/String;I[I)[B
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "errorCode"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sensitiveBox(Ljava/lang/String;I[I)[B
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "errorCode"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist verifyCertificate(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist write(Ljava/lang/String;I[B[B[B)I
    .locals 1
    .param p1, "vaultName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "data"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method
