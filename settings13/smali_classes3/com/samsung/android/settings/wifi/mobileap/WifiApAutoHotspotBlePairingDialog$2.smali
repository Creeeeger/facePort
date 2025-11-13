.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotBlePairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device.getBondState():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",onBackKeyPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetonBackKeyPressed(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetonBackKeyPressed(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$menableGaurd(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmPartialWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmPartialWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmPartialWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmScreenWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmScreenWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmScreenWakeLock(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 179
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fputmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;Landroid/os/CountDownTimer;)V

    .line 182
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method
