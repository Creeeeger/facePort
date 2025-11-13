.class public Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Default;
.super Ljava/lang/Object;
.source "IBiometricsServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;
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

.method public blacklist onAcquired(JILjava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "helpMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onAuthenticationFailed(J)V
    .locals 0
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(JLandroid/os/Bundle;)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onError(JILjava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
