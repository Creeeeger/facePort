.class abstract Landroid/hardware/input/VirtualInputDevice;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "VirtualInputDevice"


# instance fields
.field protected final blacklist mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

.field protected final blacklist mToken:Landroid/os/IBinder;

.field protected final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    iput-object p2, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iput-object p3, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing virtual input device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualInputDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputDeviceId()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {v0}, Landroid/hardware/input/VirtualInputDeviceConfig;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
