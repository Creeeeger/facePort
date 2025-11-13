.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceCameraInfo"
.end annotation


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mDeviceId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    iget v4, v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
