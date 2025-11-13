.class public final Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->showSaveStatusByState(I)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq p1, v3, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    const/4 p1, -0x1

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->finishWithResult(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-boolean p1, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    if-eqz p1, :cond_3

    iget-object p1, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget-object p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v0, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_3
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iget-object p0, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iput v2, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNetwork(I)V

    :goto_0
    return-void
.end method
