.class public final Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothRestoreDialog"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive: Intent.getAction() is return null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "onReceive: getAction = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->targetAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
