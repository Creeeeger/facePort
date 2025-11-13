.class public final Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "svc connected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResetSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->registerAccCallbackToService()V

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    const/4 p2, 0x4

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    const-string p0, "ResetSettings"

    const-string/jumbo p1, "svc disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
