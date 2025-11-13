.class public final Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final TRANSITION_ANIMATION_DURATION:J

.field public mNextThumbnail:Landroid/graphics/Bitmap;

.field public mPaint:Landroid/graphics/Paint;

.field public mPrevThumbnail:Landroid/graphics/Bitmap;

.field public mRotation:I

.field public mStartTime:J

.field public final mTransitionFinishListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TRANSITION_ANIMATION_DURATION:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ImageWallpaper_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[Transition]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mTransitionFinishListener:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized draw(Landroid/view/SurfaceHolder;)Z
    .locals 12

    const-string v0, "draw: animation finished due to time. elapsed="

    const-string v1, "draw: e="

    const-string v2, "draw: animation finished due to rotation. elapsed="

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    const-string v0, "draw: invalid thumbnails"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    monitor-exit p0

    return v4

    :cond_2
    :try_start_2
    iget v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mRotation:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v9

    invoke-static {v9, v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayRotation(ILandroid/content/Context;)I

    move-result v8

    if-eq v3, v8, :cond_3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :cond_3
    :try_start_3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/android/wallpaper/live/sdk/utils/GraphicsUtils;->getCenterCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v9, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    iget v10, v8, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    const/high16 v8, 0x437f0000    # 255.0f

    long-to-float v9, v6

    mul-float/2addr v9, v8

    iget-wide v10, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TRANSITION_ANIMATION_DURATION:J

    long-to-float v8, v10

    div-float/2addr v9, v8

    float-to-int v8, v9

    const/16 v9, 0xff

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/android/wallpaper/live/sdk/utils/GraphicsUtils;->getCenterCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v10, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v9, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_6
    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-wide v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TRANSITION_ANIMATION_DURATION:J

    cmp-long p1, v6, v1

    if-gtz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isVisible()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    monitor-exit p0

    return v5

    :cond_5
    :goto_3
    :try_start_8
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v4

    :goto_4
    :try_start_9
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCreate: prev="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getBitmapSizeString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", next="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getBitmapSizeString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayRotation(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mRotation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-static {p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->access$300(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mRotation:I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->convertDisplayRotationToAngle(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1, v3, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->cropRotateResizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    if-eq v1, v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, p1, v3, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->cropRotateResizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 2

    const-string v0, "onVisibilityChanged: visible = "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mStartTime:J

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mPrevThumbnail:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mNextThumbnail:Landroid/graphics/Bitmap;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;->mTransitionFinishListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
