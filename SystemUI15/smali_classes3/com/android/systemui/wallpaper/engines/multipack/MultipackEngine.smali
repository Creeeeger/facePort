.class public final Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mCoverWallpaperConsumer:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$1;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDrawLock:Ljava/lang/Object;

.field public mIsAlive:Z

.field public mIsFirstTransition:Z

.field public mIsVisibilityReported:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

.field public mNextType:I

.field public final mPluginUpdateTask:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;

.field public final mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

.field public final mPluginWallpaperConsumer:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;

.field public mPrevType:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mDrawLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$1;-><init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaperConsumer:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$1;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;-><init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaperConsumer:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsAlive:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsVisibilityReported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsFirstTransition:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPrevType:I

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextType:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWallpaper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[Multipack]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    iput-object p7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p1, p2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWorkerHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iput-object p8, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p9, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iput-object p10, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method public static isVideoType(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final createImageEngine()Lcom/android/systemui/wallpaper/engines/image/ImageEngine;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->verifyNextSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v0, "createImageEngine: Failed to load proper source."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v9, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    return-object v9
.end method

.method public final draw(Landroid/view/SurfaceHolder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mDrawLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->draw(Landroid/view/SurfaceHolder;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getCurrentWallpaperType()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getWallpaperType(I)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v0, "getCurrentWallpaperType: Not ready"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final initSubEngine(Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSubEngine: mPrevType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPrevType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNextType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextType:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->isVideoType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextType:I

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPrevType:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsVisibilityReported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onVisibilityChanged(Z)V

    :cond_3
    return-void
.end method

.method public final loadData()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->getCurrentWallpaperType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "loadData: wallpaperType = "

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string v0, "loadData: Cannot create proper WallpaperSource yet. Use default one."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result v6

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;III)V

    iput-object v7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    goto :goto_0

    :cond_0
    :pswitch_0
    new-instance v0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-direct {v0, v1, v4, v2}, Lcom/android/systemui/wallpaper/engines/gif/GifSource;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/CoverWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    goto :goto_0

    :cond_1
    :pswitch_1
    new-instance v7, Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    const/4 v3, 0x2

    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-object v0, v7

    move v2, v4

    move v4, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/engines/video/VideoSource;-><init>(Landroid/content/Context;IIILcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;)V

    iput-object v7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    goto :goto_0

    :cond_2
    :pswitch_2
    new-instance v7, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result v6

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;III)V

    iput-object v7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    :cond_0
    const-string p2, "onCommand: action = "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "samsung.android.wallpaper.resume"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p2

    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    const-string p2, "changeToDownScaleImmediately"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onTransitionScaleChanged(F)V

    goto :goto_0

    :cond_1
    const-string p2, "android.wallpaper.keyguardgoingaway"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p1

    invoke-static {p1, p3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsAlive:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaperConsumer:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->setWallpaperUpdateConsumer(ILjava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperId:[I

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->updateWallpaperIfReady(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    check-cast p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWallpaperUpdateConsumer: consumer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCoverWallpaperConsumer:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CoverWallpaperController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    iget p1, p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->updateWallpaperIfReady(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsAlive:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onDestroy()V

    :cond_2
    return-void
.end method

.method public final onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 10

    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->runAsWorkerThread(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisplayStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPrevType:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->isVideoType(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    instance-of v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v3

    invoke-static {v3, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockscreenDisabled(ILandroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->isVisible()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->shouldTransition()Z

    move-result v8

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;IZZZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    :cond_1
    return-void
.end method

.method public final onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onStartedWakingUp()V

    :cond_0
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;-><init>(Landroid/view/SurfaceHolder;Landroid/view/SurfaceControl;Z)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_1
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;-><init>(Landroid/view/SurfaceHolder;Landroid/view/SurfaceControl;Z)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public final onSwitchDisplayChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSwitchDisplayChanged(Z)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsVisibilityReported:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onVisibilityChanged(Z)V

    :cond_0
    const-string v1, "onVisibilityChanged: visible = "

    const-string v2, " , displayId = "

    invoke-static {v1, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPrevType:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->isVideoType(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    instance-of v3, v2, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    instance-of v2, v2, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getCurrentUserId()I

    move-result v5

    invoke-static {v5, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockscreenDisabled(ILandroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->shouldTransition()Z

    move-result p0

    invoke-virtual {v1, p1, p0, v0, v2}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onEngineVisibilityChanged(ZZZI)V

    :cond_1
    return-void
.end method

.method public final runAsWorkerThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWorkerHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final shouldTransition()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final shouldWaitForEngineShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->shouldWaitForEngineShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateWallpaper()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    instance-of v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->pause(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->loadData()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsAlive:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v0, "changeWallpaper: engine destroyed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    invoke-static {v0, v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsFirstTransition:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->shouldTransition()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    new-instance v5, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;

    invoke-direct {v5, v3}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onDestroy()V

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->getCurrentWallpaperType()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextType:I

    iget-object v6, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v7, "changeWallpaper: wallpaperType = "

    invoke-static {v5, v7, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    if-eq v5, v2, :cond_9

    if-eq v5, v4, :cond_7

    const/16 v2, 0x8

    if-eq v5, v2, :cond_7

    const/16 v2, 0xc

    if-eq v5, v2, :cond_5

    const/16 v2, 0xd

    if-eq v5, v2, :cond_7

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->createImageEngine()Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    move-result-object v2

    goto :goto_4

    :cond_5
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->verifyNextSource(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v5, "createGifEngine: Failed to load proper source."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v2, v3

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    check-cast v5, Lcom/android/systemui/wallpaper/engines/gif/GifSource;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    invoke-direct {v2, v5, v7}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;-><init>(Lcom/android/systemui/wallpaper/engines/gif/GifSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    goto :goto_4

    :cond_7
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->verifyNextSource(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v5, "createVideoEngine: Failed to load proper source."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    check-cast v5, Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v2, v5, v7, v8}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_4

    :cond_9
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->createImageEngine()Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_a

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v0, "changeWallpaper: failed to create nextEngine"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->shouldTransition()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    instance-of v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    if-nez v0, :cond_b

    instance-of v0, v2, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mWallpaperAnimator:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsFirstTransition:Z

    if-nez v0, :cond_f

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;

    invoke-direct {v0, v3}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;->mBitmap:Landroid/graphics/Bitmap;

    :goto_5
    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V

    new-instance v2, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    invoke-direct {v2, v4, v1, v3, v0}, Lcom/android/systemui/wallpaper/engines/multipack/TransitionEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->initSubEngine(Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V

    goto/16 :goto_b

    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v1, "Ignore first transition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->initSubEngine(Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V

    iput-boolean v6, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mIsFirstTransition:Z

    goto/16 :goto_b

    :cond_10
    invoke-static {v0, v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    instance-of v0, v2, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    if-nez v0, :cond_12

    instance-of v0, v2, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;

    if-eqz v0, :cond_16

    :cond_12
    const-string v0, "makeSurfaceBlack: surface = "

    const-string v1, "makeSurfaceBlack: width == "

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mDrawLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v3, "makeSurfaceBlack: canvas is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_a

    :catchall_0
    move-exception v1

    goto :goto_7

    :cond_14
    int-to-float v9, v3

    int-to-float v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    monitor-exit v0

    goto :goto_a

    :goto_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_15
    :goto_8
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :goto_9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "makeSurfaceBlack: e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_a
    iput-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->initSubEngine(Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V

    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final updateWallpaperIfReady(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    const-string/jumbo v1, "updateWallpaperIfReady: wallpaperId = "

    const-string v2, ", wallpaperManagerId = "

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->updateWallpaper()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result p1

    const-string/jumbo v0, "updateWallpaperIfReady: isPluginLockReady = "

    invoke-static {v0, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->updateWallpaper()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final verifyNextSource(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->getCurrentWallpaperType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    instance-of v0, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    if-eqz v0, :cond_3

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    instance-of v0, v0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    instance-of v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mNextSource:Lcom/android/systemui/wallpaper/engines/WallpaperSource;

    instance-of v0, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->loadData()V

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->verifyNextSource(I)Z

    move-result p0

    return p0

    :cond_4
    const-string/jumbo p1, "verifyNextSource: Returns "

    invoke-static {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
