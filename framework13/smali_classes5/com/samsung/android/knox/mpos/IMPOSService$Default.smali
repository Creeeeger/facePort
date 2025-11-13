.class public Lcom/samsung/android/knox/mpos/IMPOSService$Default;
.super Ljava/lang/Object;
.source "IMPOSService.java"

# interfaces
.implements Lcom/samsung/android/knox/mpos/IMPOSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mpos/IMPOSService;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadTa(ILandroid/os/ParcelFileDescriptor;JJLcom/samsung/android/knox/mpos/MposTZServiceConfig;)Z
    .locals 1
    .param p1, "taId"    # I
    .param p2, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "offset"    # J
    .param p5, "len"    # J
    .param p7, "config"    # Lcom/samsung/android/knox/mpos/MposTZServiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processTACommand(ILcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .locals 1
    .param p1, "taId"    # I
    .param p2, "request"    # Lcom/samsung/android/knox/mpos/TACommandRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unloadTa(I)Z
    .locals 1
    .param p1, "taId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method
