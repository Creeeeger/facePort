.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mLastShownDialogCode:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    const/16 p1, 0xb

    const-wide/16 v0, 0x1f40

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/16 v0, 0xb

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
