.class Landroid/view/InsetsAnimationThreadControlRunner$1;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationThreadControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mTmpFloat9:[F

.field final synthetic blacklist this$0:Landroid/view/InsetsAnimationThreadControlRunner;


# direct methods
.method public static synthetic blacklist $r8$lambda$NnWHgVEaBtGnmz3nk94zSh7dnRs(Landroid/view/InsetsAnimationThreadControlRunner$1;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/InsetsAnimationThreadControlRunner$1;->lambda$reportPerceptible$1(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cDFF0h4Ncq-8EXdGszv69jrUu7c(Landroid/view/InsetsAnimationThreadControlRunner$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner$1;->lambda$notifyFinished$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/InsetsAnimationThreadControlRunner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->mTmpFloat9:[F

    return-void
.end method

.method private synthetic blacklist lambda$notifyFinished$0(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-interface {v0, v1, p1}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$reportPerceptible$1(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    return-void
.end method


# virtual methods
.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsAnimThreadRunner"

    const-string v1, "applySurfaceParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAsyncAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getControls()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InsetsController;->releaseControls(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 2

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsAnimThreadRunner"

    const-string/jumbo v1, "releaseSurfaceControlFromRt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationThreadControlRunner$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v1}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    return-void
.end method
