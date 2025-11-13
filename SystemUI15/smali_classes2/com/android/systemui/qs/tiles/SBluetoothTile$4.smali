.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBluetoothDevicesChanged()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    new-instance v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$1;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBluetoothScanStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    new-instance v2, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$4$2;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "4919"

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final onBluetoothStateChange(Z)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-eqz v4, :cond_5

    const-string v4, "onBluetoothStateChange isShowingDetail bluetoothState: "

    const-string v5, "SBluetoothTile"

    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    iput-boolean v1, v4, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mTransientEnabling:Z

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v5, :cond_3

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    :cond_3
    if-eqz v3, :cond_4

    const/16 v2, 0x17

    move-object v6, p1

    check-cast v6, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setScanMode(I)V

    :cond_4
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->setItemsVisible(Z)V

    if-ne v0, v5, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    :cond_5
    return-void
.end method

.method public final onMusicShareDiscoveryStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMusicShareDiscoveryStateChanged() : "

    const-string v1, "SBluetoothTile"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    :cond_1
    return-void
.end method

.method public final onMusicShareStateChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SBluetoothTile"

    const-string v1, "onMusicShareStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->updateMusicShareItems()V

    :cond_1
    return-void
.end method
