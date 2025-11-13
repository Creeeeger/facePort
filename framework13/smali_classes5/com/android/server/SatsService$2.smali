.class Lcom/android/server/SatsService$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 201
    iput-object p1, p0, Lcom/android/server/SatsService$2;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    const-string v1, "com.sec.atd.em_at_request_reconnect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.atd.em_at_activation_request"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.hmt.request_reconnect"

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.factory.entry.REQUEST_FTCLIENT_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    const-string v1, "SatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, "SatsService"

    const-string v2, "SATServiceAt will wake up through received intent..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 215
    iget-object v1, p0, Lcom/android/server/SatsService$2;->this$0:Lcom/android/server/SatsService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/SatsService;->-$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V

    .line 216
    iget-object v1, p0, Lcom/android/server/SatsService$2;->this$0:Lcom/android/server/SatsService;

    invoke-static {v1}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SatsService$2;->this$0:Lcom/android/server/SatsService;

    invoke-static {v2}, Lcom/android/server/SatsService;->-$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 218
    monitor-exit v1

    .line 222
    :cond_1
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "action":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/SatsService$2;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    .restart local v0    # "action":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/SatsService$2;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
