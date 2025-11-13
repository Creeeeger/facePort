.class public final Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    const-string v2, "CheckBluetoothStateActivity"

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "mKeyGuardHandler - "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {p0, v3, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-virtual {v1, v2, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    const-string p0, "keyguard"

    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/high16 v5, 0xc000000

    invoke-static {v1, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "afterKeyguardGone"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "dismissIfInsecure"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "sendBendedPendingIntent"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v5}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    iput p1, p0, Landroid/os/Message;->what:I

    iget-object p1, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V

    :cond_4
    :goto_0
    return-void

    :pswitch_0
    iget p0, p1, Landroid/os/Message;->what:I

    if-eq p0, v0, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "Received BT_ENABLE_TIMEOUT"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "BluetoothState = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mExpectingBluetoothOn = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsDestroyed = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    invoke-static {p0, p1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_6

    sget-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    if-eqz p0, :cond_6

    sget-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
