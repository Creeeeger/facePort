.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

.field public final synthetic val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    sget v1, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    invoke-direct {v1, p2}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    :goto_0
    iput-object p2, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iget-object p2, p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    check-cast p2, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;->checkToken()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "DMABinder"

    if-nez p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->unBind()V

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iput-boolean p1, p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    const-string p2, "Token failed"

    invoke-static {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-interface {v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;->onResult(Ljava/lang/Object;)V

    const-string p2, "DMA connected"

    invoke-static {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->unBind()V

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed to connect binder"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-void
.end method
