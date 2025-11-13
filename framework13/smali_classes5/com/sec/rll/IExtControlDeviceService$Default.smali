.class public Lcom/sec/rll/IExtControlDeviceService$Default;
.super Ljava/lang/Object;
.source "IExtControlDeviceService.java"

# interfaces
.implements Lcom/sec/rll/IExtControlDeviceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/rll/IExtControlDeviceService;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStatus(I)I
    .locals 1
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setStatus(II)V
    .locals 0
    .param p1, "deviceType"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
