.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiSetupWizardActivityVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 409
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmIsWifiConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V

    .line 410
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmLastShownDialogCode(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    .line 411
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmConnectionStatus(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    .line 412
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const/16 p1, 0x10

    .line 417
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/16 v0, 0xb

    if-eqz p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmIsWifiConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V

    .line 419
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/16 p2, 0xd

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmConnectionStatus(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    .line 420
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    .line 422
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmIsWifiConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V

    .line 424
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmConnectionStatus(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    .line 425
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 432
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmIsWifiConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V

    .line 434
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fputmConnectionStatus(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    .line 435
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 436
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
