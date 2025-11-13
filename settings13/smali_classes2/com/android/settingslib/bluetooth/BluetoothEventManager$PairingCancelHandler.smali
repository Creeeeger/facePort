.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    .line 958
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 961
    :cond_0
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 965
    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->isBlockingDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 967
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
