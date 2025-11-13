.class Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;
.super Ljava/lang/Object;
.source "ProgressUpdateClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    .line 237
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;Landroid/os/Messenger;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "ProgressUpdateClient"

    const-string v1, "Service is connected(attached)."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 248
    const-string v0, "ProgressUpdateClient"

    const-string v1, "Service is disconnected."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;Landroid/os/Messenger;)V

    .line 250
    return-void
.end method
