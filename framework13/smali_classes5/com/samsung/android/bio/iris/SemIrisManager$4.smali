.class Lcom/samsung/android/bio/iris/SemIrisManager$4;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/iris/SemIrisManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/bio/iris/SemIrisManager;

    .line 4280
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(JI)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .line 4296
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_0

    .line 4297
    const-string v0, "BioPrompt onAcquired 1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$4$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$4$1;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4305
    :cond_0
    const-string v0, "BioPrompt onAcquired 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4308
    :goto_0
    return-void
.end method

.method public blacklist onAuthenticationFailed(J)V
    .locals 2
    .param p1, "deviceId"    # J

    .line 4340
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_0

    .line 4341
    const-string v0, "BioPrompt onAuthenticationFailed 1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$4$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/iris/SemIrisManager$4$3;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4349
    :cond_0
    const-string v0, "BioPrompt onAuthenticationFailed 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4352
    :goto_0
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p4, "fidoResultData"    # [B

    .line 4314
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_0

    .line 4315
    const-string v0, "BioPrompt onAuthenticationSucceeded 1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;Lcom/samsung/android/camera/iris/Iris;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4325
    :cond_0
    const-string v0, "BioPrompt onAuthenticationSucceeded 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4332
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4334
    :goto_0
    return-void
.end method

.method public blacklist onEnrollResult(JIII)V
    .locals 8
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 4288
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

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

    .line 4290
    return-void
.end method

.method public blacklist onError(JI)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .line 4359
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_0

    .line 4360
    const-string v0, "BioPrompt onError 1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$4$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$4$4;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4378
    :cond_0
    const-string v0, "BioPrompt onError 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4381
    :goto_0
    return-void
.end method

.method public blacklist onIRImage(J[BII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "irisImage"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 4409
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4411
    return-void
.end method

.method public blacklist onRemoved(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .line 4389
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4391
    return-void
.end method
