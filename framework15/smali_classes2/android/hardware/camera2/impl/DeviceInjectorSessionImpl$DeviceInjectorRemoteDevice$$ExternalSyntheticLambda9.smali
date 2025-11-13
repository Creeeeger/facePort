.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public final synthetic blacklist f$2:[I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$1:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$2:[I

    iput-boolean p4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$1:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$2:[I

    iget-boolean v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->$r8$lambda$IAj5jtCDDNQUMkgGWEr--7nTxlc(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;[IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
