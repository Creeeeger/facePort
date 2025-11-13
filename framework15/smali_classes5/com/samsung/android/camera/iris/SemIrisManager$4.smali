.class Lcom/samsung/android/camera/iris/SemIrisManager$4;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(JI)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v0, v3, p3, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onEnrollResult(JIII)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/camera/iris/Iris;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p4

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/iris/Iris;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onError(JI)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {v0, v3, p3, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onIRImage(J[BII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRemoved(JII)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
