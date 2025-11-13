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
    .param p1, "this$0"    # Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    move-result-object v0

    const-string v1, "ProgressUpdateClient"

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "progressUpdate is received. But listener is unregistered. So received data is ignored."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "bundle":Landroid/os/Bundle;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 82
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

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 64
    :sswitch_0
    const-string/jumbo v2, "ret_double"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 65
    .local v2, "percent":D
    const-string/jumbo v4, "ret_int_array"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 66
    .local v5, "currentImageIndex":I
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v6, 0x1

    aget v4, v4, v6

    .line 67
    .local v4, "totalImageCount":I
    iget-object v6, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v6}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    move-result-object v6

    invoke-interface {v6, v2, v3, v5, v4}, Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;->onUpdateProgress(DII)V

    .line 68
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

    .line 69
    goto :goto_0

    .line 58
    .end local v2    # "percent":D
    .end local v4    # "totalImageCount":I
    .end local v5    # "currentImageIndex":I
    :sswitch_1
    const-string v2, "String"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "metadata":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v3}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;->onUpdateMetadata(Ljava/lang/String;)V

    .line 60
    const-string v3, "Received OnUpdateMetaData"

    invoke-static {v1, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    goto :goto_0

    .line 72
    .end local v2    # "metadata":Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 73
    const-string v2, "Received MSG_RET"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_0

    .line 77
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 78
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

    .line 79
    nop

    .line 85
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
