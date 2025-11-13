.class Lcom/samsung/android/media/codec/VideoTranscodingService$1;
.super Landroid/os/Handler;
.source "VideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/VideoTranscodingService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/VideoTranscodingService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/VideoTranscodingService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$mprintTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    goto :goto_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    .line 128
    .local v0, "top":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    invoke-virtual {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const-string v1, "VideoTranscodingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") has been started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->start()V

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 135
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0    # "top":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    :cond_3
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    nop

    .line 144
    goto :goto_3

    .line 141
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    throw v0

    .line 150
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
