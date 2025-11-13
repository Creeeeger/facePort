.class public Lcom/android/net/IProxyService$Default;
.super Ljava/lang/Object;
.source "IProxyService.java"

# interfaces
.implements Lcom/android/net/IProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/IProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProxyPortForProfile(Ljava/lang/String;)I
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleScreenunlock()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist isProxyThreadAlive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProxyThreadRunning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "interfacename"    # Ljava/lang/String;
    .param p4, "showScreen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPacFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptContents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "scriptContents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startPacSystemForKnoxProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startProxyServerForKnoxProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)I
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "proxyAuthType"    # I
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "isCredentialPredfined"    # Z
    .param p6, "staticProxyServer"    # Ljava/lang/String;
    .param p7, "staticProxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopPacSystemForKnoxProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopProxyServerForKnoxProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
