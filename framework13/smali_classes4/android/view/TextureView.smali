.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mHadSurface:Z

.field private greylist mLayer:Landroid/graphics/TextureLayer;

.field private greylist-max-o mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final greylist-max-o mLock:[Ljava/lang/Object;

.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mMatrixChanged:Z

.field private greylist-max-r mNativeWindow:J

.field private final greylist-max-o mNativeWindowLock:[Ljava/lang/Object;

.field private greylist-max-r mOpaque:Z

.field private greylist-max-o mSaveCount:I

.field private greylist mSurface:Landroid/graphics/SurfaceTexture;

.field private greylist-max-o mUpdateLayer:Z

.field private final greylist mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private greylist-max-r mUpdateSurface:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 208
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 868
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 209
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 868
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 219
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 868
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 232
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 868
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 250
    return-void
.end method

.method private greylist-max-o applyTransformMatrix()V
    .locals 2

    .line 587
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/TextureLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 591
    :cond_0
    return-void
.end method

.method private greylist-max-o applyUpdate()V
    .locals 4

    .line 522
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-nez v0, :cond_0

    .line 523
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_0
    iget-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v1, :cond_2

    .line 528
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 532
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->prepare(IIZ)Z

    .line 535
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->updateSurfaceTexture()V

    .line 537
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 538
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 540
    :cond_1
    return-void

    .line 530
    :cond_2
    :try_start_1
    monitor-exit v0

    return-void

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-r destroyHardwareLayer()V
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->detachSurfaceTexture()V

    .line 314
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->close()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 318
    :cond_0
    return-void
.end method

.method private native greylist-max-r nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native greylist-max-r nDestroyNativeWindow()V
.end method

.method private static native greylist-max-o nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private greylist-max-o releaseSurfaceTexture()V
    .locals 3

    .line 321
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 322
    const/4 v1, 0x1

    .line 324
    .local v1, "shouldRelease":Z
    iget-object v2, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v2, :cond_0

    .line 325
    invoke-interface {v2, v0}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v1

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    if-eqz v1, :cond_1

    .line 333
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 335
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 338
    .end local v1    # "shouldRelease":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o updateLayer()V
    .locals 2

    .line 509
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 510
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o updateLayerAndInvalidate()V
    .locals 2

    .line 515
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 516
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist buildLayer()V
    .locals 0

    .line 379
    return-void
.end method

.method protected greylist destroyHardwareResources()V
    .locals 0

    .line 306
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 307
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 308
    return-void
.end method

.method public final whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 406
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 415
    .local v0, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {p0}, Landroid/view/TextureView;->getTextureLayer()Landroid/graphics/TextureLayer;

    move-result-object v1

    .line 416
    .local v1, "layer":Landroid/graphics/TextureLayer;
    if-eqz v1, :cond_0

    .line 417
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 418
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 420
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/TextureLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawTextureLayer(Landroid/graphics/TextureLayer;)V

    .line 424
    .end local v0    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    .end local v1    # "layer":Landroid/graphics/TextureLayer;
    :cond_0
    return-void
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 614
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 641
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 645
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 672
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 674
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 680
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/view/TextureView;->getTextureLayer()Landroid/graphics/TextureLayer;

    .line 684
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, p1}, Landroid/graphics/TextureLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 688
    :cond_1
    return-object p1
.end method

.method public whitelist getLayerType()I
    .locals 1

    .line 371
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 796
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public whitelist getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .line 854
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method blacklist getTextureLayer()Landroid/graphics/TextureLayer;
    .locals 7

    .line 449
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 450
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->createTextureLayer()Landroid/graphics/TextureLayer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    .line 455
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 456
    .local v0, "createNewSurface":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 458
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 459
    invoke-direct {p0, v3}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 461
    :cond_2
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 462
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 463
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v5, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 465
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 466
    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 468
    :cond_3
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/TextureLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_2

    .line 451
    .end local v0    # "createNewSurface":Z
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 471
    :cond_5
    :goto_2
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_6

    .line 475
    iput-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 479
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 480
    iput-boolean v1, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 482
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 483
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 486
    :cond_6
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    return-object v0
.end method

.method public whitelist getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 577
    if-nez p1, :cond_0

    .line 578
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object p1, v0

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 583
    return-object p1
.end method

.method public whitelist isAvailable()Z
    .locals 1

    .line 697
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-view-TextureView(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 871
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 872
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 873
    return-void
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 5
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 750
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 753
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    .line 756
    :cond_1
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v4, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v4, p1}, Landroid/view/TextureView;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 758
    monitor-exit v0

    return-object v1

    .line 760
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 763
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 760
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2

    .line 278
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 280
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "TextureView"

    const-string v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    if-eqz v0, :cond_1

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 289
    :cond_1
    return-void
.end method

.method protected greylist-max-r onDetachedFromWindowInternal()V
    .locals 0

    .line 295
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 296
    invoke-direct {p0}, Landroid/view/TextureView;->releaseSurfaceTexture()V

    .line 297
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 298
    return-void
.end method

.method protected final whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 434
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 439
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 441
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 442
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 446
    :cond_0
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 491
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 493
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 497
    if-nez p2, :cond_1

    .line 498
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 501
    :cond_0
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    goto :goto_0

    .line 503
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 506
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 391
    if-eqz p1, :cond_1

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TextureView doesn\'t support displaying a background drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    .line 383
    if-eqz p1, :cond_1

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TextureView doesn\'t support displaying a foreground drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setLayerPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 360
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_0

    .line 361
    iput-object p1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 362
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 364
    :cond_0
    return-void
.end method

.method public whitelist setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 355
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    .line 268
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_0

    .line 269
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 270
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 274
    :cond_0
    return-void
.end method

.method public whitelist setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 815
    if-eqz p1, :cond_4

    .line 818
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_3

    .line 822
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 828
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 830
    :cond_0
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 831
    invoke-direct {p0, p1}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 839
    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 842
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 843
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 844
    return-void

    .line 823
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .line 865
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 866
    return-void
.end method

.method public whitelist setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 560
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 562
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 563
    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 778
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 779
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 782
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-wide v1, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v3, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, v3}, Landroid/view/TextureView;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V

    .line 784
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 786
    :cond_0
    :goto_0
    return-void
.end method
