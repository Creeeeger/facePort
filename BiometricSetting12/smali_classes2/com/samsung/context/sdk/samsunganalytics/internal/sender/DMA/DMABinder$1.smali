.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;
.super Ljava/lang/Object;
.source "DMABinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

.field final synthetic val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p2}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/sec/android/diagmonagent/sa/IDMAInterface;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/diagmonagent/sa/IDMAInterface;->checkToken()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "DMABinder"

    if-nez v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->unBind()V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    const-string v3, "Token failed"

    invoke-static {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-interface {v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;->onResult(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DMA connected"

    invoke-static {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->unBind()V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/sec/android/diagmonagent/sa/IDMAInterface;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-void
.end method
