.class public final Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

.field public mSource:Lcom/android/systemui/wallpaper/engines/theme/MotionSource;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v2

    new-instance v3, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;-><init>(Landroid/content/Context;ILjava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;-><init>(ILcom/android/systemui/wallpaper/theme/MotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mSource:Lcom/android/systemui/wallpaper/engines/theme/MotionSource;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mSource:Lcom/android/systemui/wallpaper/engines/theme/MotionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/16 v2, 0x10

    iget v3, v0, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->mWhich:I

    invoke-static {v3, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFixedOrientation: , isFold="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFixedOrientation="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setFixedOrientation(ZZ)V

    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->init()V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mVisible:Z

    const-string v0, "MotionWallpaper"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    if-nez p1, :cond_0

    const-string/jumbo p1, "registerSensor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->init()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p1, :cond_2

    const-string p1, "(Preview)"

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    const-string v1, "onPause()"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    if-eqz p1, :cond_3

    const-string/jumbo p1, "unregisterSensor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    :cond_3
    :goto_1
    return-void
.end method
