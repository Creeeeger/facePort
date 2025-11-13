.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApAutoHotspotBlePairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;
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

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBLEReceiver onReceive: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v0, 0xa

    .line 57
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 58
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 59
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBLEReceiver ACTION_BOND_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmBTPairingCloseDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",bondState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",previousBondState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_2

    const/16 p1, 0xb

    if-ne p2, p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmBTPairingCloseDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmBTPairingCloseDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmBTPairingCloseDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fputmBTPairingCloseDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;Landroid/app/AlertDialog;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fgetmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$fputmCountdownTimer(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;Landroid/os/CountDownTimer;)V

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_2
    return-void

    .line 53
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotBlePairingDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBLEReceiver do nothing, action is null or Knox userID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
