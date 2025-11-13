.class public final Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;
.super Lcom/android/systemui/qs/SettingObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleValueChanged, value = "

    const-string v1, ",mSetting.getValue() = "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method
