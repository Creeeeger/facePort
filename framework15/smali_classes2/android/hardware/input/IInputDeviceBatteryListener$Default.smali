.class public Landroid/hardware/input/IInputDeviceBatteryListener$Default;
.super Ljava/lang/Object;
.source "IInputDeviceBatteryListener.java"

# interfaces
.implements Landroid/hardware/input/IInputDeviceBatteryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputDeviceBatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
