.class public Landroid/spay/ITAController$Default;
.super Ljava/lang/Object;
.source "ITAController.java"

# interfaces
.implements Landroid/spay/ITAController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/ITAController;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/spay/CertInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    .local p1, "certFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearDeviceCertificates(Ljava/lang/String;)Z
    .locals 1
    .param p1, "certFolderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makeSystemCall(I)Z
    .locals 1
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 1
    .param p1, "request"    # Landroid/spay/TACommandRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unloadTA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
