.class public final synthetic Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$postSemSingleUpdate$9(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;I)V

    return-void
.end method
