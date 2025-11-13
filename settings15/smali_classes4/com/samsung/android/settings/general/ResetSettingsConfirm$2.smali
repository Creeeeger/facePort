.class public final Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p1, "ResetSettings"

    const-string v0, "Acc Reset Complete!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140246

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
