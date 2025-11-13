.class public abstract Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
.super Ljava/lang/Object;
.source "DeviceInjectorSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/DeviceInjectorSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemoteDevice"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist clearRequest()V
.end method

.method public abstract blacklist close()V
.end method

.method public abstract blacklist createDefaultRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;
.end method

.method public abstract blacklist createStream(Landroid/view/Surface;Landroid/util/Size;)I
.end method

.method public abstract blacklist deleteStream(I)V
.end method

.method public abstract blacklist getCameraCharacteristic(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/CameraCharacteristics;
.end method

.method public abstract blacklist open(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract blacklist setCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)V
.end method

.method public abstract blacklist submitRequest(Landroid/hardware/camera2/CaptureRequest;[IZ)V
.end method
