.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;
.super Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field static final MIN_SURFACE_HEIGHT:I = 0x80

.field static final MIN_SURFACE_WIDTH:I = 0x80


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public mBitmapUsages:I

.field public mDisplayHeight:I

.field public mDisplaySizeValid:Z

.field public mDisplayWidth:I

.field public mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

.field public mImgHeight:I

.field public mImgWidth:I

.field public mIntelligentCropHelper:Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

.field public mIsEngineAlive:Z

.field public mIsFixedRotationInProgress:Z

.field public mIsVirtualDisplayMode:Z

.field public mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

.field public mLastWallpaperYOffset:F

.field public final mLock:Ljava/lang/Object;

.field public final mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

.field public final mPluginWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;

.field public mRotation:I

.field public mSurfaceCreated:Z

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mSurfaceLock:Ljava/lang/Object;

.field public final mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

.field public final mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public static -$$Nest$mupdatePluginWallpaper(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V
    .locals 4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    check-cast v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaperType:I

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iget v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    check-cast v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getWallpaperType(I)I

    move-result v1

    if-eq v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    check-cast v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getWallpaperType(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaperType:I

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iget v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    check-cast v2, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getWallpaperType(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaperType:I

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSizeIfNeed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;I)V

    const-string v0, "ImageWallpaper[CanvasEngine]"

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v3, "CanvasEngine 2"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-object v1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;)V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-boolean p0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    iget-object p1, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;I)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;I)V

    const-string p2, "ImageWallpaper[CanvasEngine]"

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v3, "CanvasEngine 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-object v2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;)V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-boolean v1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    iget-object v2, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iget p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    check-cast p1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->setWallpaperUpdateConsumer(ILjava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final addLocalColorsAreas(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperLocalColorExtractor"

    const-string v1, "Attempt to add colors with an empty list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, " addLocalColorsAreas "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public final computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, " computeAndNotifyLocalColors "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    iput-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    iget v6, v2, Landroid/graphics/RectF;->left:F

    rem-float/2addr v6, v3

    div-float/2addr v6, v3

    iget v7, v2, Landroid/graphics/RectF;->right:F

    rem-float/2addr v7, v3

    div-float/2addr v7, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    div-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v3, v8

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iget v9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    if-eqz v9, :cond_3

    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    if-lez v10, :cond_3

    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    if-gtz v10, :cond_1

    goto :goto_2

    :cond_1
    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    iput v11, v8, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v8, Landroid/graphics/RectF;->top:F

    int-to-float v2, v9

    int-to-float v9, v10

    div-float/2addr v2, v9

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    if-lez v2, :cond_2

    int-to-float v2, v2

    div-float/2addr v9, v2

    goto :goto_1

    :cond_2
    move v9, v5

    :goto_1
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v9, v5, v2

    iget-object v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget v10, v10, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    sub-int/2addr v10, v4

    int-to-float v4, v10

    div-float/2addr v9, v4

    mul-float/2addr v6, v2

    int-to-float v3, v3

    mul-float/2addr v3, v9

    add-float/2addr v6, v3

    const/4 v4, 0x0

    invoke-static {v6, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    iput v6, v8, Landroid/graphics/RectF;->left:F

    mul-float/2addr v7, v2

    add-float/2addr v7, v3

    invoke-static {v7, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    iput v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    iput v4, v8, Landroid/graphics/RectF;->left:F

    iput v5, v8, Landroid/graphics/RectF;->right:F

    :cond_3
    :goto_2
    sget-object v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {p2, v3, v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public final determineHighlightFilterAmount()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canApplyFilterOnHome : elapsed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wait=false"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighlightFilterHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v0, " determineHighlightFilterAmount : -1"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final drawFrameOnCanvas(IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;FI)Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;
    .locals 21

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    const-string v5, ", highlight=-1, dimColor="

    const-string v6, "drawFrameOnCanvas : which="

    invoke-static/range {p5 .. p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_0

    return-object v9

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :try_start_0
    iget-object v7, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v12, Landroid/graphics/Point;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v13, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v12, :cond_1

    :try_start_1
    new-instance v13, Landroid/graphics/Rect;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    mul-float/2addr v14, v3

    float-to-int v14, v14

    iget v15, v12, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    mul-float/2addr v15, v3

    float-to-int v15, v15

    iget v9, v12, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-int v12, v12

    invoke-direct {v13, v14, v15, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v13

    goto :goto_1

    :goto_0
    move-wide/from16 v16, v10

    move-wide/from16 v19, v16

    const/4 v13, 0x0

    move-wide/from16 v9, v19

    goto/16 :goto_d

    :cond_1
    :goto_1
    :try_start_2
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :goto_2
    if-eqz v12, :cond_3

    :try_start_5
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_3
    :try_start_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-wide/from16 v16, v10

    :try_start_7
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int v11, v13, v10

    mul-int v1, v15, v14

    if-le v11, v1, :cond_4

    int-to-float v1, v10

    int-to-float v11, v14

    :goto_4
    div-float/2addr v1, v11

    goto :goto_5

    :cond_4
    int-to-float v1, v15

    int-to-float v11, v13

    goto :goto_4

    :goto_5
    int-to-float v11, v15

    int-to-float v13, v13

    mul-float/2addr v13, v1

    sub-float/2addr v11, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v11, v13

    int-to-float v13, v10

    int-to-float v14, v14

    mul-float/2addr v14, v1

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    invoke-virtual {v9, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz v12, :cond_5

    :try_start_8
    iget v1, v12, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v14, v12, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v9, v1, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-wide/from16 v9, v16

    move-wide/from16 v19, v9

    const/4 v13, 0x0

    goto/16 :goto_d

    :cond_5
    :goto_6
    :try_start_9
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v1, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->determineHighlightFilterAmount()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    iget-object v1, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    const/4 v11, -0x1

    :try_start_c
    iput v11, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :try_start_d
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getFilterAppliedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v11, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v11, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDimFilterColor(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    if-eqz v11, :cond_6

    :try_start_e
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v18, v10

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v10, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    const/4 v13, 0x0

    goto :goto_7

    :cond_6
    move/from16 v18, v10

    :try_start_f
    iget-object v10, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    const/4 v13, 0x0

    :try_start_10
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :try_start_11
    iget-object v10, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bmpW="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bmpH="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bmpScale="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", src="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dest="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", drawRepeatCount="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move v5, v3

    :goto_8
    if-ge v5, v4, :cond_9

    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iget-object v10, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iget-boolean v10, v10, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    if-eqz v10, :cond_7

    invoke-virtual {v6}, Landroid/view/Surface;->lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    goto :goto_9

    :catch_2
    move-exception v0

    move-wide/from16 v9, v16

    goto/16 :goto_d

    :cond_7
    invoke-virtual {v6}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :goto_9
    if-eqz v10, :cond_8

    :try_start_12
    iget-object v12, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {v6, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :catchall_0
    move-exception v0

    invoke-virtual {v6, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0

    :cond_8
    iget-object v0, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, "drawFrameOnCanvas : canvas is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to lock the canvas - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v1, :cond_a

    if-eq v1, v2, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    move-object/from16 v1, p4

    :try_start_14
    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v11, :cond_b

    const/4 v1, 0x1

    move v7, v1

    goto :goto_a

    :cond_b
    move v7, v3

    :goto_a
    new-instance v11, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v15

    move/from16 v5, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IIIZZ)V

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_c
    iget-object v0, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawFrameOnCanvas : surface size mismatch. curFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestedFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_e

    :catch_4
    move-exception v0

    :goto_b
    move-wide/from16 v9, v16

    move-wide/from16 v19, v9

    goto :goto_d

    :catch_5
    move-exception v0

    :goto_c
    const/4 v13, 0x0

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    move-wide/from16 v16, v10

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v13, v9

    move-wide/from16 v16, v10

    goto :goto_b

    :goto_d
    iget-object v1, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawFrameOnCanvas : failed draw bitmap. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    move-object v11, v13

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, p2

    sub-long v2, v16, p2

    sub-long v4, v19, v16

    sub-long v9, v9, v19

    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v7, "drawFrameOnCanvas : elapsed="

    const-string v8, ", bmpPrepareDur="

    invoke-static {v7, v0, v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", filterApplyDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", drawDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", drawnState=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method public final drawFrameSynchronized(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFullQualityFrame(ILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->finishRendering()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final drawFullQualityFrame(ILandroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string p1, "drawFullQualityFrame: attempt to draw a frame without a valid surface"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string p1, "drawFullQualityFrame: engine is destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "ImageWallpaper.CanvasEngine#drawFrame"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateWallpaperOffset(II)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    new-instance v7, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IJLandroid/graphics/Rect;)V

    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setSurfaceAlpha(F)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->unloadBitmapIfNotUsedInternal()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Engine="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "valid surface="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const-string p4, "null"

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

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

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p4

    :goto_1
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "bitmap="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSurfaceSize="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mWcgContent="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "display="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPages="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bitmap dimensions="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p4, "recycled"

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_2
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "PendingRegions size="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "ProcessedRegions size="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public final finishRendering()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_finish_drawing"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v0, "ImageWallpaper#finishRendering"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v0, "finishRendering"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final getDisplaySizeAndUpdateColorExtractor()V
    .locals 4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isFixedOrientationWallpaper(II)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ImageWallpaper"

    if-gez v0, :cond_0

    const-string p2, "isFixedOrientationWallpaper: incorrect mode. displayId = "

    invoke-static {p1, p2, v3}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    or-int/2addr v0, v2

    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpapers/ImageWallpaper;->access$400(Lcom/android/systemui/wallpapers/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "isFixedOrientation"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "isFixedOrientationWallpaper: which="

    const-string v6, ", user="

    const-string v7, ", fixedOrientation="

    invoke-static {v0, p2, v5, v6, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p2, v4, v3}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_2

    return v2

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "com.samsung.feature.device_category_tablet"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpapers/ImageWallpaper;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpapers/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/util/SettingsHelper;->getHomescreenWallpaperSource(Z)I

    move-result v3

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    if-nez p1, :cond_7

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    if-nez p2, :cond_7

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    if-nez p1, :cond_7

    move v1, v2

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isFixedOrientationWallpaper: feature="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    const-string v5, ", isTablet="

    const-string v6, ", isCoverDisplay="

    invoke-static {v2, v4, v5, p2, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p2, ", isCustomWallpaper="

    const-string v4, ", isPreview="

    invoke-static {v2, v0, p2, v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isFixedOrientation="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onComputeColors()Landroid/app/WallpaperColors;
    .locals 0

    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChanged display id= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , newConfig ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->runAsWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    const-string v1, "ImageWallpaper[CanvasEngine_d"

    const-string v2, "_w"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "]"

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, "ImageWallpaper.CanvasEngine#onCreate"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v5, "Engine onCreate: displayId = "

    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    move-result p1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0x80

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->getDisplaySizeAndUpdateColorExtractor()V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->isFixedOrientationWallpaper(II)Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    new-instance p1, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    invoke-direct {p1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIntelligentCropHelper:Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    new-instance v13, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    invoke-direct {v13, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    new-instance p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v7

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v8, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v9, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iget-object v10, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v11, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iget-object v12, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIntelligentCropHelper:Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 p1, p1, 0x3c

    or-int/2addr p1, v4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    iput-object v1, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmapUpdateConsumer:Ljava/util/function/Consumer;

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    iget-object v2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$1;

    invoke-direct {v3, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    :cond_5
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    if-eqz p1, :cond_7

    if-eq v0, v4, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

    check-cast p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWallpaperUpdateConsumer: consumer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverWallpaperController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    :cond_7
    iput-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Engine onDestroy displayId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$2;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWindowTokenAsBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iget-object v3, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3, v0, v1, v1}, Landroid/app/WallpaperManager;->setDisplayOffset(Landroid/os/IBinder;II)V

    iput v1, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    return-void
.end method

.method public final onDimAmountChanged(F)V
    .locals 0

    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    const-string v0, "ImageWallpaper.CanvasEngine#onDisplayChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->getDisplaySizeAndUpdateColorExtractor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onMiniBitmapUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onOffsetsChanged(FFFFII)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

    cmpl-float p1, p1, p2

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iget-boolean p6, p5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    if-eq p6, p1, :cond_1

    const-string/jumbo p6, "setSmartCropAllowed: "

    invoke-static {p6, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p6

    iget-object v0, p5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

    :cond_2
    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p2, p3, p1

    if-gtz p2, :cond_3

    div-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p4

    goto :goto_1

    :cond_3
    move p1, p4

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    if-ne p1, p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-boolean p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iput p1, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iput-boolean p4, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onSurfaceCreated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "ImageWallpaper#onSurfaceCreated"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result v1

    const-string v2, "onSurfaceCreated: which="

    const-string v3, ", disp="

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", colorDecor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", highlightAmount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;I)V

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v0, "onSurfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 12

    const-string p1, "onSurfaceRedrawNeeded: displayId="

    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string p1, "onSurfaceRedrawNeeded: engine already destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result v0

    new-instance v10, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v3, "onSurfaceRedrawNeeded: curWhich="

    const-string v4, ", isFixedRotationInProgress="

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsFixedRotationInProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", surfaceFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateWallpaperOffset(II)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->determineHighlightFilterAmount()V

    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v3, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDimFilterColor(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IIIZZ)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lastDrawn=("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), toDraw=("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string p1, "onSurfaceRedrawNeeded: not need redraw"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v2

    iget-object p1, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    if-eqz p1, :cond_5

    iget-object v11, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget v8, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;->mScale:F

    const/4 v9, 0x2

    move-object v2, p0

    move v3, v0

    move-object v6, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameOnCanvas(IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;FI)Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, v10}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;ILandroid/graphics/Rect;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_5
    invoke-virtual {p0, v0, v10}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    :goto_3
    return-void

    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onSwitchDisplayChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchDisplayChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->isFixedOrientationWallpaper(II)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;Z)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateOnSwitchDisplayChanged(Z)V

    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, " onVisibilityChanged: visible="

    const-string v2, " , displayId="

    invoke-static {v1, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recomputeColorExtractorMiniBitmap()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final removeLocalColorsAreas(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final runAsWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "runAsWorkerThread: mWorker is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setCurrentUserId(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCurrentUserId: userId = "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setCurrentUserId: already destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iput p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    return-void
.end method

.method public final shouldWaitForEngineShown()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldZoomOutWallpaper()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final unloadBitmapIfNotUsedInternal()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    const-string v0, "ImageWallpaper.CanvasEngine#unloadBitmap"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->hwuiDestroy()V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public final updateMiniBitmapAndNotify(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x80

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_1

    const/high16 v1, 0x43000000    # 128.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateOnSwitchDisplayChanged(Z)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    const-string v0, " onFolderStateChanged: isFolded="

    const-string v2, ", WallMgr="

    invoke-static {v0, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLidState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    iget-object v3, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPm:Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, " onFolderStateChanged screen off."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget p1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    if-ne p1, v0, :cond_2

    const-string p1, " do not change lid state. so request update "

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    goto :goto_0

    :cond_1
    const-string p1, " Fold open. so request update "

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->reportSurfaceSize(I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateRendering(I)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x80

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateOnSwitchDisplayChanged: change surface size. which="

    const-string v4, ", width="

    const-string v5, ", height="

    invoke-static {p1, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final updateRendering(I)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateSurfaceSize(I)V
    .locals 7

    const-string v0, "ImageWallpaper#updateSurfaceSize"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->reportSurfaceSize(I)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/16 v3, 0x80

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v4, " updateSurfaceSize: width = "

    const-string v5, ", height = "

    const-string v6, ", isVisible = "

    invoke-static {v2, v1, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    invoke-interface {v0, p0, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateSurfaceSizeIfNeed(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->reportSurfaceSize(I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  updateSurfaceSizeIfNeed frame  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " surfaceFrame : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->finishRendering()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateWallpaperOffset(II)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWindowTokenAsBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iget v4, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    iget-object v5, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v4, :cond_7

    iget v6, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    invoke-virtual {v4, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateWallpaperOffset "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " lastCropOffset "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , wp Type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , rotation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , allowed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v8, :cond_1

    iget-boolean v10, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_2
    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Error Smart rect is Null "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    iget-object v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget v4, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_4
    const-string v1, " getDisplaySize use configuration to recognize the screen size"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v8

    :goto_1
    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v1, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v8, v1

    iget-object v10, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    int-to-float v10, v4

    iget-object v11, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v10, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v11, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v8, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v0, v8

    mul-float v8, v0, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    add-float/2addr v10, v8

    iget v12, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mYOffset:F

    mul-float v13, v11, v12

    float-to-int v13, v13

    const-string v14, ", screenSize=("

    const-string v15, ", "

    const-string v9, ")"

    invoke-static {v1, v4, v14, v15, v9}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", origTopPos "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , calcTopPos "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", scaledHeight "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , smartCropCenterY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v13

    sub-float/2addr v0, v10

    float-to-int v0, v0

    :goto_2
    iput v0, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    goto :goto_4

    :goto_3
    iput v0, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    :goto_4
    iget v0, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    if-ne v6, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Do not change Display offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " : Set Display offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1}, Landroid/app/WallpaperManager;->setDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Wallpaper window proxy does not exist. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ignore updateWallpaperOffset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    invoke-static {v1, v5, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_7
    :goto_7
    return-void
.end method
