.class public final Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MDEServiceBindingManager"

    const-string/jumbo v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    new-instance v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;-><init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iget-object v1, v1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iput-boolean p2, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "MDEServiceBindingManager"

    const-string/jumbo v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iget-object p1, p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;->onSuggestionsUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    return-void
.end method
