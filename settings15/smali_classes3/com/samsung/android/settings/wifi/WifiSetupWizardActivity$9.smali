.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    const-string p1, "WifiSetupWizard"

    const-string v0, "onAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkCheckingOnGoing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkCheckingOnGoing:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFristResultReceived:Z

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1b58

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCapabilitiesChanged : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSetupWizard"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean p2, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFristResultReceived:Z

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "WifiSetupWizard"

    const-string v1, "onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkCheckingOnGoing:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFristResultReceived:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mAutoFinishByConnectNetworkEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
