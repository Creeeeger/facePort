.class Landroid/net/LowLatencyModeManager$1;
.super Landroid/os/Handler;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LowLatencyModeManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/LowLatencyModeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "slotId"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get latency done, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v3, v1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get latency settings from modem, ul:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",dl:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",prio:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x2

    aget-byte v8, v1, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",ets:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    aget-byte v9, v1, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    new-instance v3, Landroid/net/LowLatencyModeManager$LatencyResult;

    aget-byte v4, v1, v5

    aget-byte v9, v1, v6

    aget-byte v7, v1, v7

    if-ne v7, v6, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    aget-byte v8, v1, v8

    if-ne v8, v6, :cond_3

    move v5, v6

    :cond_3
    invoke-direct {v3, v4, v9, v7, v5}, Landroid/net/LowLatencyModeManager$LatencyResult;-><init>(IIZZ)V

    iget-object v4, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-static {v4}, Landroid/net/LowLatencyModeManager;->-$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-static {v4}, Landroid/net/LowLatencyModeManager;->-$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/LowLatencyModeManager$LatencyCallback;->onGetLatencyDone(Landroid/net/LowLatencyModeManager$LatencyResult;)V

    iget-object v4, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/net/LowLatencyModeManager;->-$$Nest$fputmCallback(Landroid/net/LowLatencyModeManager;Landroid/net/LowLatencyModeManager$LatencyCallback;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    const-string v3, "get latency wrong result format"

    invoke-static {v2, v3}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LowLatencyModeManager;->-$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set latency done, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LowLatencyModeManager;->-$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V

    nop

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
