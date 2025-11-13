.class public abstract Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    return-void
.end method


# virtual methods
.method public draw(Landroid/view/SurfaceHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public final getDisplayId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public final getSourceWhich()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p0

    return p0
.end method

.method public final getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getWhich()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final isWindowVisible()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "mVisible"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isWindowVisible: e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyDarkModeDimSettingChanged()V
    .locals 0

    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 0

    return-void
.end method

.method public onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSwitchDisplayChanged(Z)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWhichChanged(I)V
    .locals 0

    return-void
.end method

.method public final setFixedOrientation(ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->access$100(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setVisibleRectOfSurface(Landroid/graphics/Rect;)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setVisibleRectOfSurface: frame="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", visibleRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v5, "mBlastBufferQueue"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BLASTBufferQueue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getBlastBufferQueue: e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez v6, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVisibleRectOfSurface: failed to get the BBQ"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mBbqOfPendingTransactionRequest:Landroid/graphics/BLASTBufferQueue;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/BLASTBufferQueue;->clearSyncTransaction()V

    :cond_1
    iput-object v6, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mBbqOfPendingTransactionRequest:Landroid/graphics/BLASTBufferQueue;

    new-instance p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;JLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, p0}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    :goto_2
    return-void
.end method

.method public shouldWaitForEngineShown()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    return p0
.end method
