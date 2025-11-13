.class public Lcom/skms/android/agent/ISkpmService$Default;
.super Ljava/lang/Object;
.source "ISkpmService.java"

# interfaces
.implements Lcom/skms/android/agent/ISkpmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skms/android/agent/ISkpmService;
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
.method public blacklist SkpmChangeOtaServer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "server_address"    # Ljava/lang/String;
    .param p2, "server_port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist SkpmReadInjectedKeyUID(BBLjava/lang/String;[B)I
    .locals 1
    .param p1, "injection_type"    # B
    .param p2, "key_type"    # B
    .param p3, "key_name"    # Ljava/lang/String;
    .param p4, "uid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist SkpmServiceCreateGetKeySession(BLjava/lang/String;[BB)I
    .locals 1
    .param p1, "key_type"    # B
    .param p2, "key_name"    # Ljava/lang/String;
    .param p3, "key_blob"    # [B
    .param p4, "encoding_type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist SkpmServiceInjectedKeyVerification(BBLjava/lang/String;)I
    .locals 1
    .param p1, "injection_type"    # B
    .param p2, "key_type"    # B
    .param p3, "key_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist SkpmServiceKeyInjection(BBLjava/lang/String;[BB)I
    .locals 1
    .param p1, "injection_type"    # B
    .param p2, "key_type"    # B
    .param p3, "key_name"    # Ljava/lang/String;
    .param p4, "key_data"    # [B
    .param p5, "encoding_type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist SkpmServiceReleaseGetKeySession()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
