.class Landroid/hardware/camera2/CameraManager$CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraDeviceState"
.end annotation


# instance fields
.field public final blacklist mClientName:Ljava/lang/String;

.field public final blacklist mDeviceState:I

.field public final blacklist mFacing:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "facing"    # I
    .param p2, "deviceState"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    .line 130
    iput p2, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    .line 131
    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private static blacklist cameraFacingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraFacing"    # I

    .line 160
    packed-switch p0, :pswitch_data_0

    .line 166
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 162
    :pswitch_1
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 161
    :pswitch_2
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist cameraStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "newCameraState"    # I

    .line 149
    packed-switch p0, :pswitch_data_0

    .line 156
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 153
    :pswitch_0
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 152
    :pswitch_1
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 151
    :pswitch_2
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 150
    :pswitch_3
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 137
    :cond_0
    instance-of v1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 138
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 140
    .local v1, "other":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    iget v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iget v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iget v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "facing %s state now %s for client %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
