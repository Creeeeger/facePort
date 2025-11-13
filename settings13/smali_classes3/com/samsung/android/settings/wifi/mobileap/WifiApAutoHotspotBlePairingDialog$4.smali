.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotBlePairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 130
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onOK"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 134
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetdevice(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 136
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fputmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;Landroid/os/CountDownTimer;)V

    .line 141
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method
