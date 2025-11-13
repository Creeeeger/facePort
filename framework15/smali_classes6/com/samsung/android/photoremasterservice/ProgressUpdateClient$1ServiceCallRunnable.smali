.class Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1ServiceCallRunnable;
.super Ljava/lang/Object;
.source "ProgressUpdateClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceCallRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    const-string v0, "ProgressUpdateClient"

    :try_start_0
    const-string v1, "Send message to service..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmIncomingMessenger(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$1ServiceCallRunnable;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v2}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceMessenger(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at sending message. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
