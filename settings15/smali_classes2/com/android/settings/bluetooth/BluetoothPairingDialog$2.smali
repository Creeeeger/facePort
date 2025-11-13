.class public final Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "BTPairingDialog"

    const-string v1, "setTimeout :: pairing time is exceeded."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    :cond_2
    :goto_0
    return v0
.end method
