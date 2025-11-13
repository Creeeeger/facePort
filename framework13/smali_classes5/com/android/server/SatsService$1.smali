.class Lcom/android/server/SatsService$1;
.super Landroid/os/UEventObserver;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/SatsService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/SatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SatsService;

    .line 162
    iput-object p1, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 166
    invoke-static {}, Lcom/android/server/SatsService;->-$$Nest$sfgetmLockUEvent()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 170
    :try_start_1
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "switchName":Ljava/lang/String;
    const-string/jumbo v2, "uart3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "switchState":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    .line 189
    const-string v4, "SatsService"

    goto :goto_0

    .line 182
    :pswitch_0
    const-string v4, "SatsService"

    const-string v5, "SATServiceAt will wake up."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 184
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v4}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    :try_start_2
    iget-object v5, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v5}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v4

    .line 187
    goto :goto_1

    .line 186
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/SatsService$1;
    .end local p1    # "event":Landroid/os/UEventObserver$UEvent;
    :try_start_3
    throw v5

    .line 178
    .restart local p0    # "this":Lcom/android/server/SatsService$1;
    .restart local p1    # "event":Landroid/os/UEventObserver$UEvent;
    :pswitch_1
    const-string v4, "SatsService"

    const-string v5, "SATServiceAt will wait."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 180
    goto :goto_1

    .line 189
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown state["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    .end local v1    # "switchName":Ljava/lang/String;
    .end local v2    # "switchState":Ljava/lang/String;
    .end local v3    # "state":I
    :cond_0
    :goto_1
    goto :goto_2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
