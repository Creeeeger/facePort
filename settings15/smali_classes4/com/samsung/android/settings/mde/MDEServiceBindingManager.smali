.class public final Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;


# instance fields
.field public mBound:Z

.field public mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mClientCallbackMessenger:Landroid/os/Messenger;

.field public final mContext:Landroid/content/Context;

.field public mServiceCallbackMessenger:Landroid/os/Messenger;

.field public final mServiceConnection:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;-><init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceConnection:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    const-string v0, "MDEServiceBindingManager"

    const-string v1, "MDEServiceBindingManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final registerCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MDEServiceBindingManager"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startServiceBind"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.smartsuggestions"

    const-string v4, "com.samsung.android.smartsuggestions.mde.MDEService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceConnection:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "startServiceBind: binding is failed."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;->onSuggestionsUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "service already bounded"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final sendMessage(ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "sendMessage : Send message to Service. what = "

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p0, "MDEServiceBindingManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final unregisterCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MDEServiceBindingManager"

    const-string/jumbo v0, "stopServiceBind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceConnection:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    :cond_1
    return-void
.end method
