.class public final Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getChangedType()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DB changed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WirelessKeyboardShareFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
