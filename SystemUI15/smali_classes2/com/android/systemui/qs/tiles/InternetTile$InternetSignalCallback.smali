.class public final Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

.field public final mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

.field public final mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/InternetTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/InternetTile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    return-void
.end method


# virtual methods
.method public final setConnectivityStatus(ZZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setConnectivityStatus: noDefaultNetwork = "

    const-string v2, ",noValidatedNetwork = "

    const-string v3, ",noNetworksAvailable = "

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iput-boolean p1, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoDefaultNetwork:Z

    iput-boolean p2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoValidatedNetwork:Z

    iput-boolean p3, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoNetworksAvailable:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoValidatedNetwork:Z

    iput-boolean p3, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final setEthernetIndicators(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "setEthernetIndicators: icon = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    iput v3, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "setIsAirplaneMode: icon = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mAirplaneModeEnabled:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mAirplaneModeEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    iget-boolean v2, v2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    if-nez v2, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-boolean p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    if-eqz p1, :cond_4

    iget p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    if-lez p1, :cond_4

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMobileDataIndicators: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getControllerWithSubId(I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_0
    iput-object v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataSubscriptionName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-object v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iget v2, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    iput v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    iget v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsType:I

    iput v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    iput-boolean p1, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getNumberSubscriptions()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMultipleSubs:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setNoSims(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setNoSims: show = "

    const-string v2, ",simDetected = "

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoSim:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWifiIndicators: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    if-eqz p1, :cond_1

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mConnected:Z

    iget v2, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    iput v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mConnected:Z

    iput v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InternetSignalCallback[mWifiInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCellularInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mEthernetInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
