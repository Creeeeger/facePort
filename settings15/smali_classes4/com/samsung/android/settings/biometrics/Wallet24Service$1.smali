.class public final Lcom/samsung/android/settings/biometrics/Wallet24Service$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/Wallet24Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo p1, "onServiceConnected"

    const-string v0, "Biometrics_Wallet24Service"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mBound:Z

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p1, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mMessenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    new-instance p2, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/settings/biometrics/Wallet24Service$1$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/biometrics/Wallet24Service$1$1;-><init>(Lcom/samsung/android/settings/biometrics/Wallet24Service$1;Landroid/os/Looper;)V

    invoke-direct {p2, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p1, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mCallbackMessenger:Landroid/os/Messenger;

    :try_start_0
    const-string p1, "Send a message to Wallet24."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    iget-object v1, p2, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mCallbackMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p2, p2, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to send a message to Wallet24."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/Wallet24Service;->unbindService()V

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Biometrics_Wallet24Service"

    const-string/jumbo v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mBound:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mMessenger:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mCallbackMessenger:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    return-void
.end method
