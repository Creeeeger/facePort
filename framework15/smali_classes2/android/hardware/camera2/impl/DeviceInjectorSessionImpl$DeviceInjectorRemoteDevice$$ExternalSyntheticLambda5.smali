.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->$r8$lambda$D6EesRArT2Qm1QXZRjGDRdnY5Hk(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
