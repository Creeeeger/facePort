.class public final Lcom/android/systemui/qs/tiles/CastTile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v0, Lcom/android/systemui/qs/tiles/CastTile;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCastTransportAllowed:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCastTransportAllowed:Z

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHotspotConnected:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
