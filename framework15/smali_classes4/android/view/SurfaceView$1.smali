.class Landroid/view/SurfaceView$1;
.super Landroid/view/ISurfaceControlViewHostParent$Stub;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic blacklist $r8$lambda$9kZHMt8v-IGqR7t6EJnQNMWJErU(Landroid/view/SurfaceView$1;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView$1;->lambda$forwardBackKeyToParent$1(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pP6cVgT6LEqoMmUekzrBF02zPo4(Landroid/view/SurfaceView$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView$1;->lambda$updateParams$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHostParent$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$forwardBackKeyToParent$1(Landroid/view/KeyEvent;)V
    .locals 7

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    const-string v5, "SurfaceView"

    if-lez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore the input event that exceed the tolerance time, exceed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Received invalid input event"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->processingBackKey(Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, v5, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->processingBackKey(Z)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->processingBackKey(Z)V

    throw v4

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$updateParams$0()V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView$1;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist updateParams([Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView$1;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
