.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;
.super Landroid/os/Handler;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

.field final synthetic blacklist val$this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1386
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iput-object p3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->val$this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1389
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmDereisgeredListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1392
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/scontext/SContextEvent;

    .line 1393
    .local v0, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    if-eqz v0, :cond_3

    .line 1394
    iget-object v1, v0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1395
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    if-eqz v1, :cond_3

    .line 1396
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    .line 1397
    .local v2, "type":I
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmIsHistoryData(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z

    move-result v3

    const-string v4, "SContextManager"

    if-eqz v3, :cond_1

    .line 1398
    const-string v3, "Data is received so remove listener related HistoryData"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    .line 1400
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3, v0}, Landroid/hardware/scontext/SContextManager;->-$$Nest$mcheckHistoryMode(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1403
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_0

    .line 1405
    :cond_2
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager;->-$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1406
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager;->-$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    iget-object v5, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v5}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1407
    const-string v3, "Listener is already registered and history data is sent to Application"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v3, v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v3}, Landroid/hardware/scontext/SContextManager;->-$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    .line 1416
    .end local v0    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    .end local v1    # "scontext":Landroid/hardware/scontext/SContext;
    .end local v2    # "type":I
    :cond_3
    :goto_0
    return-void
.end method
