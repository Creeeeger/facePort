.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;,
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private greylist-max-o mBatchedInputScheduled:Z

.field private blacklist mBatchingEnabled:Z

.field private greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mConsumeBatchedInputEvents:Ljava/lang/Runnable;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/BatchedInputEventReceiver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Landroid/view/BatchedInputEventReceiver$1;

    invoke-direct {v0, p0}, Landroid/view/BatchedInputEventReceiver$1;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable-IA;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-virtual {p1}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mTag:Ljava/lang/String;

    const-string v0, "mBatchingEnabled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private greylist-max-o scheduleBatchedInput()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private blacklist traceBoolVariable(Ljava/lang/String;Z)V
    .locals 2

    const-wide/16 v0, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method private greylist-max-o unscheduleBatchedInput()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    const-string v1, "mBatchedInputScheduled"

    iget-boolean v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v1, v2}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .locals 2

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    return-void
.end method

.method protected greylist-max-o doConsumeBatchedInput(J)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    :cond_0
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    :goto_0
    return-void
.end method

.method public blacklist setBatchingEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    const-string v0, "mBatchingEnabled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
