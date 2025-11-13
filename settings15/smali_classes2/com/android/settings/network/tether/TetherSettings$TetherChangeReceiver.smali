.class public final Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/network/tether/TetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/tether/TetherSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive: action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetheringSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceive: state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iget-object p2, p2, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothProfile;

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iget-object p2, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mProfileServiceListener:Lcom/android/settings/network/tether/TetherSettings$1;

    const/4 v0, 0x5

    invoke-virtual {p1, p2, p0, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/settings/network/tether/TetherSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "onReceive() action : "

    const-string v1, "TetheringSettings"

    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "availableArray"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "tetherArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothState$1()V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/tether/TetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/settings/network/tether/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {p1}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothAndEthernetState()V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateUsbPreference()V

    goto/16 :goto_2

    :cond_4
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iput-boolean v1, p1, Lcom/android/settings/network/tether/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {p1}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothAndEthernetState()V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateUsbPreference()V

    goto :goto_2

    :cond_5
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    const-string v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/settings/network/tether/TetherSettings;->mUsbConnected:Z

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p1}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothAndEthernetState()V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateUsbPreference()V

    goto :goto_2

    :cond_6
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iget-boolean p1, p1, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothEnableForTether:Z

    if-eqz p1, :cond_9

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_8

    const/16 p2, 0xa

    if-eq p1, p2, :cond_8

    const/16 p2, 0xc

    if-eq p1, p2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/tether/TetherSettings;->startTethering$1(I)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iput-boolean v1, p1, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothEnableForTether:Z

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    iput-boolean v1, p1, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothEnableForTether:Z

    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothAndEthernetState()V

    goto :goto_2

    :cond_a
    const-string p2, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothAndEthernetState()V

    :cond_b
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
