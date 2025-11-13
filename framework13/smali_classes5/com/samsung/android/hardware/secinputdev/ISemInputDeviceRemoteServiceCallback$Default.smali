.class public Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Default;
.super Ljava/lang/Object;
.source "ISemInputDeviceRemoteServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
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

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deliveryLastData([IF)V
    .locals 0
    .param p1, "croppedVideoClip"    # [I
    .param p2, "result"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist deliveryRawdata([I)V
    .locals 0
    .param p1, "map"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
