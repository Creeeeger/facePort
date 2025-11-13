.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive :: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTPairingDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v3, 0xa

    const/high16 v4, -0x80000000

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_a

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 115
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    .line 117
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isBondedInitiatedLocally()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->settingIsForegroundActivity()Z

    move-result p1

    if-nez p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    .line 122
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    const-string v0, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fputmEmergencyCallbackMode(Lcom/android/settings/bluetooth/BluetoothPairingDialog;Z)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmEmergencyCallbackMode(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 128
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    :cond_6
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 131
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 134
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 135
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 137
    :cond_7
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    :cond_8
    const-string v0, "com.samsung.bluetooth.device.action.BOND_STATE_CHANGED_FROM_NEARBY_DEVICE"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 140
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_9

    if-ne p1, v3, :cond_a

    .line 144
    :cond_9
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    :cond_a
    :goto_0
    return-void
.end method
