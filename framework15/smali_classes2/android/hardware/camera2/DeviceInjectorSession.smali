.class public abstract Landroid/hardware/camera2/DeviceInjectorSession;
.super Ljava/lang/Object;
.source "DeviceInjectorSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;,
        Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;,
        Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;,
        Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public abstract blacklist setDeviceInjectorPending(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
