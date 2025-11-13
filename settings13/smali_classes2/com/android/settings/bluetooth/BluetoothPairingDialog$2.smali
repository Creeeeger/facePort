.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 378
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 381
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "BTPairingDialog"

    const-string/jumbo v1, "setTimeout :: pairing time is exceeded."

    .line 384
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 387
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isBondedInitiatedLocally()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->settingIsForegroundActivity()Z

    move-result p1

    if-nez p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->-$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    .line 392
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    :cond_2
    :goto_0
    return v0
.end method
