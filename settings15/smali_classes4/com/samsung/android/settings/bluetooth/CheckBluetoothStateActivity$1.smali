.class public final Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo p1, "onReceive :: action = "

    const-string v0, "CheckBluetoothStateActivity"

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mKeyGuardReceiver onReceive :: action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "showing"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "bouncerShowing"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "occluded"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v3, "keyguard onReceive :: showing = "

    const-string v4, ", bouncerShowing = "

    const-string v5, ", occluded = "

    invoke-static {v3, p1, v4, v2, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    iget-object p2, p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V

    :cond_2
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo p2, "onReceive :: ACTION_STATE_CHANGED change to = "

    const-string v1, ", mExpectingBluetoothOn = "

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDestroyed = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    invoke-static {p2, v1, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/16 p2, 0xc

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    if-ne p1, p2, :cond_5

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string p1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "EASY_MODE_CHANGE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
