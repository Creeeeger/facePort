.class public final Lcom/android/systemui/qs/tiles/WifiTile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSatelliteModeChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsSatelliteModeOn:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsSatelliteModeOn:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
