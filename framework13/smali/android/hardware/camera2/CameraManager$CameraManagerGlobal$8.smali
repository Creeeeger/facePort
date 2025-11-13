.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;
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
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 3018
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$cameraId:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 3021
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$callback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$cameraId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v2, v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v4, v4, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V

    .line 3022
    return-void
.end method
