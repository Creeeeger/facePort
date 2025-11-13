.class Lcom/android/internal/jank/FrameTracker$1;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/jank/FrameTracker;

    .line 225
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$surfaceCreated$0$com-android-internal-jank-FrameTracker$1()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->begin()V

    .line 236
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$surfaceDestroyed$1$com-android-internal-jank-FrameTracker$1()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    .line 257
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V

    .line 259
    :cond_0
    return-void
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 228
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 241
    return-void
.end method
