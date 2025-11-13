.class public final Lcom/android/systemui/wallpaper/engines/gif/GifEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mCenterCropOffset:Landroid/graphics/PointF;

.field public mCenterCropScale:F

.field public mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

.field public final mGifPath:Ljava/lang/String;

.field public mIsWatchFaceGoingToSleep:Z

.field public mIsWatchFacePauseByCommand:Z

.field public mPm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/gif/GifSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFaceGoingToSleep:Z

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFacePauseByCommand:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageWallpaper_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[Gif]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->getGifPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGifPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/view/SurfaceHolder;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropScale:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "draw:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    const/4 p2, 0x1

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "onCommand: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ", isInteractive = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    invoke-static {p6, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p5

    invoke-static {p5}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p6

    sparse-switch p6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p6, "android.wallpaper.goingtosleep"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo p6, "samsung.android.wallpaper.pause"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo p6, "samsung.android.wallpaper.resume"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p5, p2

    goto :goto_0

    :sswitch_3
    const-string p6, "android.wallpaper.wakingup"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p5, p3

    :goto_0
    packed-switch p5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFaceGoingToSleep:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->stop()V

    goto :goto_1

    :pswitch_1
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFacePauseByCommand:Z

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFaceGoingToSleep:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->stop()V

    goto :goto_1

    :pswitch_2
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFacePauseByCommand:Z

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFaceGoingToSleep:Z

    if-nez p1, :cond_6

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->play()V

    goto :goto_1

    :pswitch_3
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFaceGoingToSleep:Z

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFacePauseByCommand:Z

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->play()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4943dbf9 -> :sswitch_3
        0x3cd396ac -> :sswitch_2
        0x5caf0b97 -> :sswitch_1
        0x69401ccd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string p1, "onCreate"

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mPm:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGifPath:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMediaPath: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onVisibilityChanged: visible = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", displayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-ne v0, p1, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mIsWatchFacePauseByCommand:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->play()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->stop()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->play()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->stop()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final play()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropScale:F

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropScale:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, v3, Landroid/graphics/PointF;->y:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustCenterCropScale: mCenterCropScale = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterCropOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "adjustCenterCropScale: frame or gif is NULL"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropScale:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mCenterCropOffset:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;->mGif:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
