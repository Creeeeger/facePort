.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->$r8$lambda$7zhel8T4qBrlCDArEEJL_Tu715Y(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    return-object v0
.end method
