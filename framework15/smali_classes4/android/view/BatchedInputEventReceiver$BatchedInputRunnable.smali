.class final Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method private constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    const-wide/16 v0, 0x4

    :try_start_0
    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-static {v2}, Landroid/view/BatchedInputEventReceiver;->-$$Nest$fgetmTag(Landroid/view/BatchedInputEventReceiver;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    iget-object v3, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-static {v3}, Landroid/view/BatchedInputEventReceiver;->-$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/BatchedInputEventReceiver;->doConsumeBatchedInput(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
