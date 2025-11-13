.class Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;
.super Landroid/os/Handler;
.source "ProgressUpdateClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    move-result-object v0

    const-string v1, "ProgressUpdateClient"

    if-nez v0, :cond_0

    const-string v0, "progressUpdate is received. But listener is unregistered. So received data is ignored."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong message is received.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "ret_double"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "ret_int_array"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v6, 0x1

    aget v4, v4, v6

    iget-object v6, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v6}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    move-result-object v6

    invoke-interface {v6, v2, v3, v5, v4}, Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;->onUpdateProgress(DII)V

    iget-object v6, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v6}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressObservers(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received OnUpdateProgress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "String"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v3}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;->onUpdateMetadata(Ljava/lang/String;)V

    const-string v3, "Received OnUpdateMetaData"

    invoke-static {v1, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string v2, "Received MSG_RET"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
