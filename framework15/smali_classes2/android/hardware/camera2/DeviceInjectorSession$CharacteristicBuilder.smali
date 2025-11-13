.class public abstract Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.super Ljava/lang/Object;
.source "DeviceInjectorSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/DeviceInjectorSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CharacteristicBuilder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addSupportedAEMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedAFMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedAWBMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedCaptureSize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedControlMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedEffectMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedSceneMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist addSupportedStreamingSize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist build()Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setAELockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist setAWBLockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist setActiveArraySize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist setFlashAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist setLensFacing(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method

.method public abstract blacklist setSensorOrientation(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.end method
