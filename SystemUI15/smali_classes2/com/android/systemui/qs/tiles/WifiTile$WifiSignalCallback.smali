.class public final Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->inetCondition:I

    iput v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->inetCondition:I

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    iput-boolean v3, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    iput v3, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    iput p1, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
