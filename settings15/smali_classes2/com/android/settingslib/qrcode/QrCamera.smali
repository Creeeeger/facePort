.class public final Lcom/android/settingslib/qrcode/QrCamera;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HINTS:Ljava/util/Map;


# instance fields
.field mCamera:Landroid/hardware/Camera;

.field public mCameraOrientation:I

.field public final mContext:Ljava/lang/ref/WeakReference;

.field public mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

.field mParameters:Landroid/hardware/Camera$Parameters;

.field public mPreviewSize:Landroid/util/Size;

.field public final mReader:Lcom/google/zxing/MultiFormatReader;

.field public final mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;


# direct methods
.method public static -$$Nest$msetTransformationMatrix(Lcom/android/settingslib/qrcode/QrCamera;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_2
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_3

    div-float v0, v3, v2

    goto :goto_3

    :cond_3
    div-float v0, v3, v2

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {p0, v1}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static -$$Nest$mstartPreview(Lcom/android/settingslib/qrcode/QrCamera;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    goto :goto_0

    :cond_2
    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCameraOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    sget-object p0, Lcom/android/settingslib/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method public static getRatio(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    div-double p0, p2, p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public decodeImage(Lcom/google/zxing/BinaryBitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    iget-object p1, v1, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected Message: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "QrCamera"

    invoke-static {p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public setCameraParameter()V
    .locals 14

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v1}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    new-instance v3, Landroid/util/Size;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide v7, 0x3fb999999999999aL    # 0.1

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Lcom/android/settingslib/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v9

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v11, v12

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int/2addr v13, v12

    if-le v11, v13, :cond_0

    sub-double v11, v4, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    div-double/2addr v11, v1

    cmpl-double v11, v11, v7

    if-gtz v11, :cond_1

    sub-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    div-double/2addr v9, v1

    cmpg-double v7, v9, v7

    if-gtz v7, :cond_0

    :cond_1
    new-instance v3, Landroid/util/Size;

    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    iget v5, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/settingslib/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v4

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    iget v12, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lcom/android/settingslib/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v10

    cmpl-double v12, v10, v2

    if-nez v12, :cond_4

    new-instance v10, Landroid/util/Size;

    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v10, v11, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sub-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v10, v10, v7

    if-gez v10, :cond_3

    new-instance v10, Landroid/util/Size;

    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v10, v11, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "QrCamera"

    const-string v2, "No proper picture size, return default picture size"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    move-object v4, v5

    :cond_7
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_8

    move-object v3, v4

    move v2, v5

    goto :goto_2

    :cond_9
    move-object v1, v3

    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public final start(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settingslib/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Stop previewing camera failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCamera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settingslib/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    :cond_1
    :goto_0
    return-void
.end method
