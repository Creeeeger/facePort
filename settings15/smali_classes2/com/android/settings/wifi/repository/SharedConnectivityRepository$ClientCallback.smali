.class public final Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/repository/SharedConnectivityRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    return-void
.end method


# virtual methods
.method public final onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHotspotNetworkConnectionStatusChanged(), status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onHotspotNetworksUpdated(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHotspotNetworksUpdated(), networks:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKnownNetworkConnectionStatusChanged(), status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onKnownNetworksUpdated(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKnownNetworksUpdated(), networks:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onRegisterCallbackFailed(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "onRegisterCallbackFailed(), e:"

    const-string v0, "SharedConnectivityRepository"

    invoke-static {p0, p1, v0}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceConnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object v0, v0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected(), Manager#getSettingsState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SharedConnectivityRepository"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mSettingsState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onServiceDisconnected()"

    invoke-static {p0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSharedConnectivitySettingsChanged(), state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedConnectivityRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;->this$0:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mSettingsState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
