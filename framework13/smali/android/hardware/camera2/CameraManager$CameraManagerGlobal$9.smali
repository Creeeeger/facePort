.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field final synthetic blacklist val$cameraId:Ljava/lang/String;

.field final synthetic blacklist val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$CameraDeviceState;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 3033
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 3037
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v0, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    const-string v1, "CameraManagerGlobal"

    packed-switch v0, :pswitch_data_0

    .line 3048
    const-string v0, "Unknown lens facing."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    return-void

    .line 3045
    :pswitch_0
    const/4 v0, 0x2

    .line 3046
    .local v0, "lensFacing":I
    goto :goto_0

    .line 3042
    .end local v0    # "lensFacing":I
    :pswitch_1
    const/4 v0, 0x0

    .line 3043
    .restart local v0    # "lensFacing":I
    goto :goto_0

    .line 3039
    .end local v0    # "lensFacing":I
    :pswitch_2
    const/4 v0, 0x1

    .line 3040
    .restart local v0    # "lensFacing":I
    nop

    .line 3052
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v2, v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    packed-switch v2, :pswitch_data_1

    .line 3066
    const-string v2, "Unknown device state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3063
    :pswitch_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceClose(Ljava/lang/String;ILjava/lang/String;)V

    .line 3064
    goto :goto_1

    .line 3060
    :pswitch_4
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceIdle(Ljava/lang/String;ILjava/lang/String;)V

    .line 3061
    goto :goto_1

    .line 3057
    :pswitch_5
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceActive(Ljava/lang/String;ILjava/lang/String;)V

    .line 3058
    goto :goto_1

    .line 3054
    :pswitch_6
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceOpen(Ljava/lang/String;ILjava/lang/String;)V

    .line 3055
    nop

    .line 3069
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
