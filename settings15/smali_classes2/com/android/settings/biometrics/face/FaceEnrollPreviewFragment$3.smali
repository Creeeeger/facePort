.class public final Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iput-object p1, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :try_start_0
    iget-object p1, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v0, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v1, v1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v1, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object p1, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object p1, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-array v1, v2, [Landroid/view/Surface;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
