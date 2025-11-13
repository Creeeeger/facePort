.class public final Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;->this$1:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    const-string p0, "FaceEnrollPreviewFragment"

    const-string p1, "Unable to configure camera"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;->this$1:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    iget-object v0, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v1, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object p1, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;->this$1:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    iget-object p1, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v0, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3$1;->this$1:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FaceEnrollPreviewFragment"

    const-string v0, "Unable to access camera"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
