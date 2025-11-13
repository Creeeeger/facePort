.class public final synthetic Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

.field public final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Semaphore;

    iget-object v0, p2, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v1, v0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget-object v2, v0, Lcom/android/settingslib/qrcode/QrCamera;->mScannerCallback:Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v2, v1}, Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;->getFramePosition(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v0, v0, Lcom/android/settingslib/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int v6, v5, v1

    new-array v6, v6, [B

    mul-int v7, v4, v2

    add-int/2addr v7, v3

    add-int/2addr v3, v5

    if-gt v3, v2, :cond_1

    add-int/2addr v4, v1

    if-gt v4, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int v3, v0, v5

    invoke-static {p1, v7, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;

    invoke-direct {p1, v6, v5, v1}, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;-><init>([BII)V

    iput-object p1, p2, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cropped rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
