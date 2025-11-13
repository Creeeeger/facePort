.class public final synthetic Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsEngineAlive:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "isFrameDrawNeeded: draw needed. which="

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->estimateDrawStateToDraw(I)Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastDrawn=("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), toDraw=("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v3, "onConfigurationChanged: redrawNeeded="

    invoke-static {v3, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->isSurfaceCreated()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v0, "drawFrameSynchronized: the surface holder is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_5
    :goto_2
    return-void

    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
