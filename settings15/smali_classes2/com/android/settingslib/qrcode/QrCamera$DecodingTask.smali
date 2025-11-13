.class public final Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mImage:Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;

.field public final mSurface:Landroid/graphics/SurfaceTexture;

.field public final synthetic this$0:Lcom/android/settingslib/qrcode/QrCamera;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final decodeQrCode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v1, v1, Lcom/android/settingslib/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/HybridBinarizer;)V

    iget-object p1, v1, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_0
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object v0
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const-string v5, "QrCamera"

    if-ge v3, v0, :cond_2

    :try_start_0
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v7, v6, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/hardware/Camera;->release()V

    iput-object v4, v6, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v6, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v6, v3, Lcom/android/settingslib/qrcode/QrCamera;->mCameraOrientation:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v3, v3, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    if-lez v0, :cond_4

    const-string v0, "Can\'t find back camera. Opening a different camera"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v3, v0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    iput-object v4, v0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v1, v0, Lcom/android/settingslib/qrcode/QrCamera;->mCameraOrientation:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v0, v0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->setCameraParameter()V

    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settingslib/qrcode/QrCamera;->-$$Nest$msetTransformationMatrix(Lcom/android/settingslib/qrcode/QrCamera;)V

    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settingslib/qrcode/QrCamera;->-$$Nest$mstartPreview(Lcom/android/settingslib/qrcode/QrCamera;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_7

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v0, v0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->decodeQrCode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/zxing/InvertedLuminanceSource;

    invoke-direct {v1, v0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->decodeQrCode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v1, v1, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v1, v0}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->isValid(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_5

    move-object v4, v0

    goto :goto_4

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Lost contex"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot find available camera"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    const-string v0, "Fail to startPreview camera: "

    invoke-static {v0, p1, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iput-object v4, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {p0}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail to open camera: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iput-object v4, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {p0}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    :goto_4
    return-object v4
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {p0, p1}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
