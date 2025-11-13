.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# instance fields
.field public final mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method


# virtual methods
.method public final onDataSaverChanged(Z)V
    .locals 2

    const-string v0, "onDataSaverChanged: "

    const-string v1, "HotspotTile"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onHotspotAvailabilityChanged(Z)V
    .locals 2

    const-string v0, "onHotspotAvailabilityChanged: "

    const-string v1, "HotspotTile"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string p1, "Tile removed. Hotspot no longer available"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSHost;->removeTile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onHotspotChanged(IZ)V
    .locals 2

    const-string v0, "onHotspotChanged: "

    const-string v1, "HotspotTile"

    invoke-static {v0, v1, p2}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    iput p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onHotspotPrepared()V
    .locals 2

    const-string v0, "HotspotTile"

    const-string v1, "onHotspotPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public final onUpdateConnectedDevices()V
    .locals 2

    const-string v0, "onUpdateConnectedDevices =true"

    const-string v1, "HotspotTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
