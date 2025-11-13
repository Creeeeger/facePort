.class public final Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    const-string v3, "BluetoothTetheringSwitchEnabler"

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v4, "on"

    const-string/jumbo v5, "off"

    const-string/jumbo v6, "unknown"

    const/16 v7, 0x15

    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_1
    const-string v9, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_2
    const-string v9, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v8, v0

    goto :goto_0

    :sswitch_4
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v8, p1

    :goto_0
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 p1, 0x17

    if-eqz v2, :cond_a

    const-string v0, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v1, 0x14

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    if-eq p2, v1, :cond_9

    if-eq p2, v7, :cond_8

    if-eq p2, p1, :cond_7

    goto :goto_1

    :cond_7
    const-string v6, "discoverable"

    goto :goto_1

    :cond_8
    const-string v6, "connectable"

    goto :goto_1

    :cond_9
    const-string/jumbo v6, "none"

    :goto_1
    const-string p2, "BT scan mode: "

    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode(I)V

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "android.bluetooth.extra.TETHERING_STATE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_b

    move-object v4, v5

    :cond_b
    const-string p2, "BT tethering state: "

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode(I)V

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    goto/16 :goto_3

    :pswitch_2
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->getPanStateMessage(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PAN connection state: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    goto :goto_3

    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "airplane_mode_on"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_d

    move p1, v0

    :cond_d
    const-string p2, "Airplane mode: "

    invoke-static {p2, v3, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    goto :goto_3

    :pswitch_4
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz v2, :cond_e

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    packed-switch p2, :pswitch_data_1

    move-object v4, v6

    goto :goto_2

    :pswitch_5
    const-string/jumbo v4, "turning off"

    goto :goto_2

    :pswitch_6
    const-string/jumbo v4, "turning on"

    goto :goto_2

    :pswitch_7
    move-object v4, v5

    :goto_2
    :pswitch_8
    const-string v0, "BT state: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v0, 0xc

    if-ne p2, v0, :cond_f

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->getProfileProxy()V

    goto :goto_3

    :cond_f
    const/16 v0, 0xa

    if-ne p2, v0, :cond_10

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->closeProfileProxy()V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setSwitchChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :cond_10
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_4
        -0x402b4235 -> :sswitch_3
        -0x32445438 -> :sswitch_2
        -0x31501ea2 -> :sswitch_1
        -0xc520160 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
