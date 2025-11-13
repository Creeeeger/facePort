.class public final Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfiguratorSuccess(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEnrolleeSuccess(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedSsid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedChannels:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mBandArray:[I

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onProgress(I)V
    .locals 0

    return-void
.end method
