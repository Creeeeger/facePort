.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

.field public final synthetic blacklist f$1:Landroid/hardware/IRemoteDeviceCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/IRemoteDeviceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/IRemoteDeviceCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/IRemoteDeviceCallback;

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->$r8$lambda$m7kOgG16PtEx5utFprjXJ1ANtDo(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/IRemoteDeviceCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
