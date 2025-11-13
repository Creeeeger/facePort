.class public final Lcom/android/systemui/wallpaper/engines/video/VideoEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBouncerVisible:Z

.field public mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public mIsGoingToSleepFromNonKeyguard:Z

.field public mIsUnlockingFromScreenOffOrAod:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastPlayerUpdateSnapshot:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

.field public mPlayerPausedForcefully:Z

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

.field public final mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

.field public final mVideoSize:Landroid/graphics/Point;

.field public final mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    const-string v0, "ImageWallpaper"

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->NONE:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mBouncerVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mPlayerPausedForcefully:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsGoingToSleepFromNonKeyguard:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsUnlockingFromScreenOffOrAod:Z

    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoEngine;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object p3, p1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSize:Landroid/graphics/Point;

    check-cast p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/wallpaper/engines/video/VideoController;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoEngine;)V

    invoke-direct {p3, p1, p2, v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Landroid/os/Handler;Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;)V

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ImageWallpaper_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "[Video]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatchCurrentStateForMainOrSubDisplay(Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mBouncerVisible:Z

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mPlayerPausedForcefully:Z

    and-int/lit8 v3, v0, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v7

    invoke-static {v7, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockscreenDisabled(ILandroid/content/Context;)Z

    move-result v6

    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    sget-object v7, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$2;->$SwitchMap$com$samsung$android$wallpaper$live$sdk$data$DisplayState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v7, p1

    if-eq p1, v4, :cond_5

    if-eq p1, v5, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->pause(Z)V

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_4

    iget-object p1, p2, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    sget-object p2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-ne p1, p2, :cond_4

    if-eqz v0, :cond_3

    const/16 p1, 0x64

    goto :goto_1

    :cond_3
    const/16 p1, 0x190

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    int-to-long v0, p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v2, :cond_9

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsGoingToSleepFromNonKeyguard:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsUnlockingFromScreenOffOrAod:Z

    if-nez p1, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->playVideo()V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    :goto_3
    return-void
.end method

.method public final getVisibleRectOfSurface()Landroid/graphics/Rect;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string p0, "getVisibleRectOfSurface : frame is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v4, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    iget-object v5, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v1, "getCropHint: mVideoSize is null."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1
    iget v4, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mWhich:I

    invoke-static {v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v6

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    const-string v9, ", screenHeight = "

    const-string v10, "getCropHint: screenWidth = "

    const/4 v11, 0x0

    if-eqz v6, :cond_8

    check-cast v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v4, v7}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0

    :cond_3
    iget-object v6, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eqz v6, :cond_6

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v4, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v8, v3

    float-to-int v9, v4

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    float-to-int v3, v6

    int-to-float v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    float-to-int v1, v6

    invoke-direct {v5, v8, v9, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v5

    goto/16 :goto_6

    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    :goto_2
    const-string v3, "getCropHint: Cover video crop hint is null"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v11, v11, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v6

    if-eqz v6, :cond_f

    check-cast v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v6, v7}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_3

    :cond_9
    iget-object v6, v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getHomeWallpaperRect(I)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_3

    :cond_a
    iget-object v6, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v6

    :goto_3
    iget-object v7, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    iget v8, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mUserId:I

    invoke-virtual {v7, v4, v8}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    const-string v7, "coverScreenWidth"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverScreenHeight"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v7, :cond_d

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    iget-object v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v6, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v5, v6, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v8, v3

    float-to-int v9, v5

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v5

    float-to-int v1, v4

    invoke-direct {v6, v8, v9, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v6

    goto :goto_6

    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "getCropHint: videoCropHint = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", extras = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    new-instance v3, Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v11, v11, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSize:Landroid/graphics/Point;

    if-eqz v1, :cond_12

    if-nez v3, :cond_10

    goto/16 :goto_8

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getVisibleRectOfSurface: mVideoSize = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSize:Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cropHint = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-le v4, v5, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSize:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v3, p0

    iget p0, v2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v2, Landroid/graphics/Rect;->left:I

    iget p0, v2, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v2, Landroid/graphics/Rect;->right:I

    iget p0, v2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, v2, Landroid/graphics/Rect;->top:I

    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-object v2

    :cond_12
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getVisibleRectOfSurface: video size = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSize:Landroid/graphics/Point;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", crop hint = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    const/4 p2, 0x0

    const-string p3, "onCommand: "

    invoke-static {p3, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x1

    const/4 p4, -0x1

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
    const/4 p4, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo p6, "samsung.android.wallpaper.pause"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x3

    goto :goto_0

    :sswitch_2
    const-string p6, "android.wallpaper.keyguardgoingaway"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo p6, "samsung.android.wallpaper.resume"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p4, p3

    goto :goto_0

    :sswitch_4
    const-string/jumbo p6, "samsung.android.wallpaper.bouncervisibilitychanged"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p4, p2

    :goto_0
    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsGoingToSleepFromNonKeyguard:Z

    goto :goto_1

    :pswitch_1
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mPlayerPausedForcefully:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->updatePlayerState()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    sget-object p2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-eq p1, p2, :cond_5

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsUnlockingFromScreenOffOrAod:Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->updatePlayerState()V

    goto :goto_1

    :pswitch_3
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mPlayerPausedForcefully:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->updatePlayerState()V

    goto :goto_1

    :pswitch_4
    const-string/jumbo p1, "visible"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mBouncerVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->updatePlayerState()V

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x350f5589 -> :sswitch_4
        0x3cd396ac -> :sswitch_3
        0x4eb77f17 -> :sswitch_2
        0x5caf0b97 -> :sswitch_1
        0x69401ccd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate: which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v2, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    invoke-direct {v2, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;-><init>(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mLastPlayerUpdateSnapshot:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    check-cast p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->isFixedOrientation(Z)Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setFixedOrientation(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->seekToFirstFrame()V

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    const-string/jumbo v1, "release: curSession="

    iget-object v2, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release: already released"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enqueued=["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->listEnqueued()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "release: no active player"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->release()V

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "release"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;->release()V

    iput-object v2, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setVisibleRectOfSurface(Landroid/graphics/Rect;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1

    throw p0

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisplayStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsGoingToSleepFromNonKeyguard:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->updatePlayerState()V

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsUnlockingFromScreenOffOrAod:Z

    return-void
.end method

.method public final onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    const-string v0, "onGetScreenshot"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "getCurrentVideoFrame: released"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move-object v0, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->getCurrentVideoFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v2, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    if-nez v2, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    new-array v5, v3, [Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v7, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v5}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;[Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v7}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;->useMediaRetriever(Ljava/util/function/Consumer;)V

    aget-object v0, v5, v6

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v1

    invoke-static {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplayRotation(ILandroid/content/Context;)I

    move-result p1

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    const-string p1, "onGetScreenshot : failed to get video frame"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_5

    new-instance p0, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_5
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v5, v6, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/GraphicsUtils;->getCenterCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v2, v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-static {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->access$300(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_7
    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->convertDisplayRotationToAngle(I)I

    move-result p0

    neg-int p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v1, v4, p0, p1, v3}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->cropRotateResizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq v1, p0, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    new-instance p1, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    invoke-direct {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    const-string v0, "onSurfaceChanged width = "

    const-string v1, " , height = "

    invoke-static {p3, p4, v0, v1, p2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_5

    if-lez p4, :cond_5

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceReady()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->getVisibleRectOfSurface()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setVisibleRectOfSurface(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->seekToFirstFrame()V

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const-string/jumbo p2, "setSurface: firstAssign="

    iget-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter p3

    :try_start_0
    iget-boolean p4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setSurface: released"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p3

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_2

    if-eqz p1, :cond_2

    move p4, v1

    goto :goto_0

    :cond_2
    move p4, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isReady="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, p3}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->onSurfaceAndPlayerReady(Landroid/view/Surface;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;

    check-cast p1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;->onSurfaceAndPlayerReady()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->dispatchCommands()V

    goto :goto_4

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_5
    :goto_4
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isWindowVisible()Z

    move-result v0

    const-string v1, "onVisibilityChanged: engineVisible="

    const-string v2, ", windowVisible="

    const-string v3, ", displayState = "

    invoke-static {v1, v2, v3, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->updatePlayerState()V

    return-void
.end method

.method public final pauseAndSeekToFirstFrame()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "pauseAndSeekToFirstFrame: released"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "pauseAndSeekToFirstFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    new-instance v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseAndSeekToFirstFrameCommand;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseAndSeekToFirstFrameCommand;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->enqueueCommand(Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->dispatchCommands()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final pauseVideo()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->pause(Z)V

    return-void
.end method

.method public final playVideo()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "play: released"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    new-instance v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;

    sget-object v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->PLAY:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->enqueueCommand(Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->dispatchCommands()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final seekToFirstFrame()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "seekTo: released"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "seekTo: to 0ms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    new-instance v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->enqueueCommand(Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->dispatchCommands()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final declared-synchronized updatePlayerState()V
    .locals 17

    move-object/from16 v1, p0

    const-string/jumbo v0, "updatePlayerState: which="

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mLastPlayerUpdateSnapshot:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    iget-object v3, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v4, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    invoke-direct {v4, v3}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;-><init>(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    iput-object v4, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mLastPlayerUpdateSnapshot:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v3

    and-int/lit8 v5, v3, 0x3c

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_1

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v7

    :goto_1
    iget-object v6, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isWindowVisible()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isVisible()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v12

    invoke-static {v12, v11}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockscreenDisabled(ILandroid/content/Context;)Z

    move-result v11

    iget-object v12, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget v12, v12, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mType:I

    const/4 v13, 0x2

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    iget-boolean v8, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mBouncerVisible:Z

    iget-boolean v12, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mPlayerPausedForcefully:Z

    iget-boolean v13, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsGoingToSleepFromNonKeyguard:Z

    iget-boolean v14, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mIsUnlockingFromScreenOffOrAod:Z

    iget-object v15, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", disp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", visible(window="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", engine="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "), goingToSleepFromNonKeyguard="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", unlockingFromOffOrAod="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isKeyguard="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bouncer="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", forcePause="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", customPack="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", lockDisabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseAndSeekToFirstFrame()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    iget-boolean v0, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mPlayerPausedForcefully:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    goto :goto_4

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    sget-object v2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->playVideo()V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoPauseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_9

    if-nez v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseAndSeekToFirstFrame()V

    goto :goto_4

    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->dispatchCurrentStateForMainOrSubDisplay(Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;)V

    goto :goto_4

    :cond_9
    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseAndSeekToFirstFrame()V

    goto :goto_4

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->playVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method
