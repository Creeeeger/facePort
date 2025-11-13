.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;JLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iput-wide p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-wide v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    const-string/jumbo v4, "setVisibleRectOfSurface : e="

    const-string/jumbo v5, "setVisibleRectOfSurface: frame="

    iget-object v6, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    monitor-enter v6

    :try_start_0
    iget-object v7, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object v7, v7, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    check-cast v7, Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v7, v7, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", transaction ready. delay="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mBbqOfPendingTransactionRequest:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v1, p0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setVisibleRectOfSurface : failed to get surface control"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-exit v6

    return-void

    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
