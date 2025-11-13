.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const-string p1, "WifiSetupWizard"

    const-string v0, "onAvailable"

    .line 781
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    const/4 v0, 0x0

    .line 786
    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsFristResultReceived(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 787
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;)V

    .line 788
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 789
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p0

    const/4 v0, 0x3

    .line 790
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1b58

    .line 789
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCapabilitiesChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSetupWizard"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 798
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 800
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 801
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p0

    const/4 p2, 0x0

    .line 803
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 802
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    .line 804
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 806
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p0

    const/4 p2, 0x2

    .line 808
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 807
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 809
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsFristResultReceived(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 810
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 811
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p0

    .line 812
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 811
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "WifiSetupWizard"

    const-string v1, "onLost"

    .line 818
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 820
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    .line 821
    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsFristResultReceived(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 822
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 823
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsAutoFinished(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 824
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    move-result-object p0

    const/4 v0, -0x1

    .line 825
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 824
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
