.class public final synthetic Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

.field public final synthetic f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    new-instance p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onConfiguratorSuccess(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedSsid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedChannels:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mBandArray:[I

    invoke-virtual {v1, p1, v0, v2, p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    :goto_0
    return-void
.end method
