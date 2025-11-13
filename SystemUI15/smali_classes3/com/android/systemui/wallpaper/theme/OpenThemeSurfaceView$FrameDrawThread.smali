.class public final Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field public mCount:I

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field public mTick:I

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/16 p1, 0x22

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter p0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    if-lez v6, :cond_1

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v5, :cond_4

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :goto_3
    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v0

    :catch_0
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    goto :goto_2

    :cond_4
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v0, v5, v0

    long-to-double v0, v0

    const-wide v7, 0x42374876e8000000L    # 1.0E11

    div-double/2addr v7, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v7

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    iget-object v7, v7, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fps: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    move-wide v0, v5

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    :try_start_2
    iget v8, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    add-long/2addr v8, v2

    sub-long/2addr v8, v4

    const-wide/16 v2, 0x96

    cmp-long v2, v8, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :goto_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_7
    return-void
.end method
