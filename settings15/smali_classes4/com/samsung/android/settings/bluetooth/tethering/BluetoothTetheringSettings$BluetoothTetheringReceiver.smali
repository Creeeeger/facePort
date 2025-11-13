.class public final Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->DBG:Z

    const-string v4, "BluetoothTetheringSettings"

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onReceive: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v5, "on"

    const-string/jumbo v6, "off"

    const/4 v7, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v7, p1

    goto :goto_0

    :sswitch_1
    const-string v8, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_0

    :sswitch_2
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v7, v0

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "android.bluetooth.extra.TETHERING_STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    move-object v5, v6

    :cond_5
    const-string p1, "BT tethering state: "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/PanProfile;->isNapEnabled()Z

    move-result p2

    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSwitchBarChecked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p2, :cond_7

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->updateConnectedDevices()V

    goto :goto_4

    :pswitch_1
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->getPanStateMessage(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PAN connection state: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, p1, :cond_a

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    if-eq p2, v1, :cond_9

    const/4 p1, 0x3

    if-ne p2, p1, :cond_b

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->-$$Nest$msetSwitchBarEnabled(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;Z)V

    goto :goto_2

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->-$$Nest$msetSwitchBarEnabled(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;Z)V

    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->updateConnectedDevices()V

    goto :goto_4

    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v3, :cond_c

    sget-object p2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    packed-switch p1, :pswitch_data_1

    const-string/jumbo v5, "unknown"

    goto :goto_3

    :pswitch_3
    const-string/jumbo v5, "turning off"

    goto :goto_3

    :pswitch_4
    const-string/jumbo v5, "turning on"

    goto :goto_3

    :pswitch_5
    move-object v5, v6

    :goto_3
    :pswitch_6
    const-string p2, "BT state: "

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 p2, 0xc

    if-eq p1, p2, :cond_d

    const/16 p2, 0xa

    if-ne p1, p2, :cond_e

    :cond_d
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$BluetoothTetheringReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings;->updateConnectedDevices()V

    :cond_e
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_2
        -0x32445438 -> :sswitch_1
        -0x31501ea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
