.class public Lcom/samsung/android/bio/face/IFaceDaemonCallback$Default;
.super Ljava/lang/Object;
.source "IFaceDaemonCallback.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceDaemonCallback;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAcquired(JI)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onAuthenticated(JII[B[B)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I
    .param p5, "hatData"    # [B
    .param p6, "fidoResultData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onEnrollResult(JIII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onEnumerate(J[I[I)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "faceIds"    # [I
    .param p4, "groupIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onError(JI)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onRemoved(JII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
