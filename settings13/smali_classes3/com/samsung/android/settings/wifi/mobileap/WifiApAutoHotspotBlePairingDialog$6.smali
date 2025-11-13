.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$6;
.super Landroid/os/CountDownTimer;
.source "WifiApAutoHotspotBlePairingDialog.java"


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
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;JJ)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 190
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
