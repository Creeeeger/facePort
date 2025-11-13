.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

.field final synthetic blacklist val$cameraId:Ljava/lang/String;

.field final synthetic blacklist val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iput-object p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 11

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->-$$Nest$fgetisExtended(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v0, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$cameraId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v2, v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v4, v4, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$cameraId:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v7, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v8, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v9, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v10, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method
