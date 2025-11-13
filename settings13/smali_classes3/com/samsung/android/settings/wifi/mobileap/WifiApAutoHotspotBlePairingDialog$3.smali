.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotBlePairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 144
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDialog Cancelled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fputmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;Landroid/os/CountDownTimer;)V

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method
