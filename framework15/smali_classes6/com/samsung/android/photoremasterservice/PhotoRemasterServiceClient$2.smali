.class Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;
.super Ljava/lang/Object;
.source "PhotoRemasterServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service is connected(attached)."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "Service is disconnected."

    const-string v1, "PhotoRemasterServiceClient"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmDisconnectionRequested(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unexpected disconnection with PhotoRemaster Service! CancellationException will be thrown!"

    const-string v2, "Unexpected disconnection with PhotoRemaster Service! CancellationException will be thrown!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceDisconnectionCallback(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceDisconnectionCallback(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;->onServiceDisconnected()V

    :cond_1
    return-void
.end method
