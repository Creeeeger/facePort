.class public final Lcom/android/systemui/wallpaper/engines/image/ImageEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public mBitmapUsages:I

.field public final mDownScaledSourceBitmapManager:Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mIsEngineAlive:Z

.field public mIsFullQualityFrameDrawn:Z

.field public mIsWallpaperSizeWarningEnabled:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mSurfaceLock:Ljava/lang/Object;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/image/ImageSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsFullQualityFrameDrawn:Z

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsWallpaperSizeWarningEnabled:Z

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapUsages:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsEngineAlive:Z

    sget-object p2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->NONE:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageWallpaper_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[Image]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance p1, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;

    invoke-direct {p1}, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDownScaledSourceBitmapManager:Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;

    iput-object p7, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/view/SurfaceHolder;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final drawFrameOnCanvas(Landroid/graphics/Canvas;IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/util/ArrayList;F)Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v4, p8

    const-string v5, ", drawRepeatCount=1, customCanvas="

    const-string v6, ", highlight=-1, dimColor="

    const-string v7, "drawFrameOnCanvas : which="

    invoke-static/range {p6 .. p6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v0, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v1, "drawFrameOnCanvas: the surface holder is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    :try_start_0
    iget-object v9, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-direct {v14, v13, v13, v15, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v17, v11

    goto/16 :goto_12

    :cond_2
    iget-object v10, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v14

    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-direct {v9, v10, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v10, p7

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v10, Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    mul-float/2addr v15, v4

    float-to-int v15, v15

    iget v13, v9, Landroid/graphics/Rect;->top:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    int-to-float v13, v13

    mul-float/2addr v13, v4

    float-to-int v13, v13

    move-wide/from16 v17, v11

    :try_start_3
    iget v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-direct {v10, v15, v13, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12, v9, v11}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-object v9, v10

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-wide/from16 v9, v17

    move-wide/from16 v19, v9

    goto/16 :goto_13

    :cond_3
    move-wide/from16 v17, v11

    move v12, v13

    :goto_2
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    goto :goto_3

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    goto :goto_4

    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    :goto_4
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int v1, v11, v12

    mul-int v0, v15, v13

    if-le v1, v0, :cond_6

    int-to-float v0, v12

    int-to-float v1, v13

    :goto_5
    div-float/2addr v0, v1

    goto :goto_6

    :cond_6
    int-to-float v0, v15

    int-to-float v1, v11

    goto :goto_5

    :goto_6
    int-to-float v1, v15

    int-to-float v11, v11

    mul-float/2addr v11, v0

    sub-float/2addr v1, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v1, v11

    int-to-float v11, v12

    int-to-float v13, v13

    mul-float/2addr v13, v0

    sub-float/2addr v11, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v11, v13

    invoke-virtual {v10, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    if-eqz v9, :cond_7

    iget v0, v9, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v13, v9, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v10, v0, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->getSupplier()Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;->getFilterData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_7
    invoke-virtual {v8, v3}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->getDimFilterColor(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 p7, v12

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v13, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v12, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v12, 0x0

    goto :goto_8

    :cond_9
    move/from16 p7, v12

    iget-object v11, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v11, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v13, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bmpW="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bmpH="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bmpScale="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", src="

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", dest="

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move-object/from16 v5, p1

    if-eqz v5, :cond_a

    move v6, v4

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v11, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v11, v13, v6}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_17

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v4, :cond_12

    if-eqz v5, :cond_b

    iget-object v7, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_d

    :catch_1
    move-exception v0

    move-wide/from16 v9, v17

    goto/16 :goto_13

    :cond_b
    iget-object v7, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    iget-object v11, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v11, v2}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v9}, Landroid/view/Surface;->lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_f

    :cond_c
    invoke-virtual {v9}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_b
    if-eqz v11, :cond_10

    :try_start_6
    iget-object v12, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v12, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsWallpaperSizeWarningEnabled:Z

    if-eqz v12, :cond_d

    invoke-virtual {v8, v11, v2}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawWarningTextIfNeeded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_d
    :goto_c
    :try_start_7
    invoke-virtual {v9, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v11, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {v11}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isMultipack()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v9}, Landroid/view/Surface;->hwuiDestroy()V

    :cond_e
    monitor-exit v7

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :goto_e
    invoke-virtual {v9, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v1, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isMultipack()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v9}, Landroid/view/Surface;->hwuiDestroy()V

    :cond_f
    throw v0

    :cond_10
    iget-object v0, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v1, "drawFrameOnCanvas : canvas is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to lock the canvas - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect surface - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_f
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_12
    if-eq v0, v2, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-nez v5, :cond_16

    move-object/from16 v0, p5

    :try_start_9
    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_14

    move v7, v4

    goto :goto_10

    :cond_14
    const/4 v7, 0x0

    :goto_10
    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move v4, v15

    move/from16 v5, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;IIIZZ)V

    move-object/from16 v16, v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_13

    :cond_15
    iget-object v1, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawFrameOnCanvas : surface size mismatch. curFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestedFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_16
    const/16 v16, 0x0

    :goto_11
    move-object/from16 v0, v16

    goto :goto_14

    :cond_17
    :try_start_a
    iget-object v0, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v1, "drawFrameOnCanvas : bitmap is recycled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "tried to draw with recycled bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_3
    move-exception v0

    move-wide/from16 v17, v11

    goto/16 :goto_1

    :goto_12
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_3
    move-exception v0

    goto :goto_12

    :goto_13
    iget-object v1, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawFrameOnCanvas : failed draw bitmap. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, p3

    sub-long v11, v17, p3

    sub-long v3, v19, v17

    sub-long v9, v9, v19

    iget-object v5, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v6, v8, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v7, "drawFrameOnCanvas : elapsed="

    const-string v8, ", bmpPrepareDur="

    invoke-static {v7, v1, v2, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", filterApplyDur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", drawDur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", drawnState=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v5, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v5, v6, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final drawFrameSynchronized(ILandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFullQualityFrame(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wallpaper_finish_drawing"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string p1, "ImageWallpaper#finishRendering"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "finishRendering"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final drawFullQualityFrame(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V
    .locals 8

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "drawFullQualityFrame: attempt to draw a frame without a valid surface"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsEngineAlive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "drawFullQualityFrame: engine is destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "ImageWallpaper.ImageEngine#drawFrame"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;ILandroid/graphics/Canvas;JLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->useBitmap(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    iget p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapUsages:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapUsages:I

    if-gtz p1, :cond_2

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mBitmapUsages:I

    const-string p1, "ImageWallpaper.ImageEngine#unloadBitmap"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    return-void
.end method

.method public final drawWarningTextIfNeeded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v2

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayIdByWhich(ILandroid/content/Context;)I

    move-result v3

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getLongLengthOfMaxResolution: failed to get display. which="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v3

    array-length v4, v3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v8, v3, v6

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-le v8, v7, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    invoke-static {v1, v2, v5}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    int-to-float v1, v5

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, v1, :cond_5

    if-nez v5, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    const/high16 v7, 0x42c80000    # 100.0f

    sub-float v8, v2, v7

    iget-object v9, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v2

    const/4 v10, 0x0

    invoke-direct {v6, v10, v8, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "This wallpaper isn\'t supported size : ["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Maximum supported size : ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, p2, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, 0x42480000    # 50.0f

    add-float/2addr v2, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "drawWarningTextIfNeeded: "

    invoke-static {p1, v4, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Engine="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "valid surface="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const-string p4, "null"

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "surface frame="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p4

    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "bitmap="

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final estimateDrawStateToDraw(I)Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->getDimFilterColor(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;IIIZZ)V

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getDimFilterColor(I)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->getColor(I)Landroid/app/SemWallpaperColors;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v1, :cond_1

    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result p0

    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    const/4 p0, 0x3

    aget p0, p1, p0

    const/4 v1, 0x0

    aget v1, p1, v1

    aget v0, p1, v0

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p0, v1, v0, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final isSurfaceCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onApplyDarkModeDimSettingChanged()V
    .locals 2

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "runAsWorkerThread: worker handler is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onCommand: action = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "samsung.android.wallpaper.resume"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p2

    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    const-string p2, "changeToDownScaleImmediately"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onTransitionScaleChanged(F)V

    goto :goto_0

    :cond_0
    const-string p2, "android.wallpaper.keyguardgoingaway"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p1

    invoke-static {p1, p3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Engine onCreate: which="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageWallpaper.ImageEngine#onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isFixedOrientation(ZLcom/android/systemui/util/SettingsHelper;)Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setFixedOrientation(ZZ)V

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->getSupplier()Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;->supportWallpaperScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: require fixed size surface"

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v4, v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->useBitmap(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsEngineAlive:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result p1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v2, 0x23

    if-ge v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v4, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, v4, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iget v3, v4, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "imageCategory"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isWallpaperSizeWarningEnabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Graphical"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Colors"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/WallpaperManager;->semIsPreloadedWallpaper(II)Z

    move-result v1

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsWallpaperSizeWarningEnabled:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Engine onDestroy: which="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsEngineAlive:Z

    return-void
.end method

.method public final onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockscreenDisabled(ILandroid/content/Context;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isVisible()Z

    move-result v4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v5, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;IZZZ)V

    :cond_1
    return-void
.end method

.method public final onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;
    .locals 9

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v0, "onGetScreenshot"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayRotation(ILandroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "onGetScreenshot: failed to get display size. srcWhich="

    invoke-static {v0, p1, p0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v3, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isFixedOrientation(ZLcom/android/systemui/util/SettingsHelper;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->getSupplier()Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;->supportWallpaperScrolling()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    invoke-static {v6, v5, v3, v7}, Lcom/samsung/android/wallpaper/live/sdk/utils/GraphicsUtils;->getCenterCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p1, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsFullQualityFrameDrawn:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, p1, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, v3, v8}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->copySurfaceToBitmapSync(Landroid/view/SurfaceHolder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsFullQualityFrameDrawn:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {v3, v2, v7}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->copySurfaceToBitmapSync(Landroid/view/SurfaceHolder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v6, p1

    move-object p1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v6, p1

    :cond_4
    move-object p1, v2

    :goto_1
    move-object v3, v6

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    new-instance v3, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v3, v5, p1}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    move-object p1, v2

    goto :goto_3

    :cond_6
    move-object v3, p1

    goto :goto_2

    :goto_3
    if-nez p1, :cond_7

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-lez v5, :cond_7

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-lez v3, :cond_7

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-static {v5, v3, p1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v5

    invoke-virtual {p0, v3, v5, v2}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFullQualityFrame(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "onGetScreenshot: failed to generate screenshot"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_8
    if-eqz v0, :cond_a

    invoke-static {v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->convertDisplayRotationToAngle(I)I

    move-result p0

    neg-int p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {p1, v2, p0, v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->cropRotateResizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    move-object p1, p0

    :cond_a
    new-instance p0, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v0, "onStartedWakingUp"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v0, "onSurfaceChanged: "

    const-string v1, " x "

    invoke-static {p3, p4, v0, v1, p2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isMultipack()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    :cond_0
    new-instance p2, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p3, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p3}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p4

    invoke-direct {p2, p1, p3, p4}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;-><init>(Landroid/view/SurfaceHolder;Landroid/view/SurfaceControl;Z)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    :cond_1
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onSurfaceCreated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isMultipack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;-><init>(Landroid/view/SurfaceHolder;Landroid/view/SurfaceControl;Z)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    :cond_1
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v0, "onSurfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 13

    const-string p1, "onSurfaceRedrawNeeded: displayId="

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsEngineAlive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "onSurfaceRedrawNeeded: engine already destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setVisibleRectOfSurface(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "onSurfaceRedrawNeeded: the surface holder is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    new-instance v10, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceRedrawNeeded: srcWhich="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", surfaceFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->estimateDrawStateToDraw(I)Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    move-result-object v11

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lastDrawn=("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), toDraw=("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v11}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string p1, "onSurfaceRedrawNeeded: not need redraw"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    if-eqz p1, :cond_3

    if-eqz v11, :cond_3

    iget v1, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceWidth:I

    iget p1, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceHeight:I

    mul-int/2addr v1, p1

    iget p1, v11, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceWidth:I

    iget v2, v11, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceHeight:I

    mul-int/2addr p1, v2

    if-eq v1, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->updateSupplier(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDownScaledSourceBitmapManager:Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v1

    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;->mSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;

    if-eqz p1, :cond_4

    iget-object v12, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, p1, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p1, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;->mCropRects:Ljava/util/ArrayList;

    iget v9, p1, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;->mScale:F

    const/4 v2, 0x0

    move-object v1, p0

    move v3, v0

    move-object v6, v10

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFrameOnCanvas(Landroid/graphics/Canvas;IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/util/ArrayList;F)Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v11, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    new-instance p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0, v10}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;ILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_4
    invoke-virtual {p0, v0, v10}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    :goto_0
    return-void

    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onVisibilityChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v1, " onVisibilityChanged: visible="

    const-string v2, " , displayId="

    invoke-static {v1, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockscreenDisabled(ILandroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    invoke-virtual {v0, p1, p0, v3, v1}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onEngineVisibilityChanged(ZZZI)V

    :cond_1
    return-void
.end method

.method public final onWhichChanged(I)V
    .locals 2

    const-string v0, "ImageWallpaper_"

    const-string v1, "[Image]"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mWallpaperSource:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[ImageSource]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->updateSupplier(I)V

    return-void
.end method

.method public final putDownScaledSourceBitmap(ILcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayRotation(ILandroid/content/Context;)I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "putDownScaledSourceBitmap: failed to get display size. srcWhich="

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mCropRects:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDownScaledSourceBitmapManager:Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x44800000    # 1024.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    const-string v4, "createDownScaledSourceBitmap: longDisplay="

    const-string v5, ", shortBmpLen="

    const-string v6, ", scale="

    invoke-static {v0, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImageWallpaper[DownScaledSourceBitmapManager]"

    invoke-static {v0, v3, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    const/4 v4, 0x0

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v1, v0, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;

    invoke-direct {v4, p1, v0, v3, p2}, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;-><init>(ILandroid/graphics/Bitmap;FLjava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "createDownScaledSourceBitmap: Resized bitmap creation failed. org="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resized="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v4, :cond_5

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;->mSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;->mSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
