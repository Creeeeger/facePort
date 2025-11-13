.class Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;
.super Ljava/lang/Object;
.source "PhotoRemasterServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceCallRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field final synthetic blacklist val$bundle:Landroid/os/Bundle;

.field final synthetic blacklist val$serviceMessage:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    iput p2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->val$serviceMessage:I

    iput-object p3, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 185
    const-string v0, "PhotoRemasterServiceClient"

    :try_start_0
    const-string v1, "Send message to service..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->val$serviceMessage:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 187
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmIncomingMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 189
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmIncomingMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 192
    const-string v2, "mIncomingMessenger is null!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception!!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 198
    :goto_1
    return-void
.end method
