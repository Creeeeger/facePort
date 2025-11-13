.class public final Lcom/android/systemui/qs/bar/TopLargeTileBar;
.super Lcom/android/systemui/qs/bar/LargeTileBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBluetoothTileView:Lcom/android/systemui/plugins/qs/QSTileView;

.field public final mOtherTileViews:Ljava/util/ArrayList;

.field public mWifiTileView:Lcom/android/systemui/plugins/qs/QSTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/LargeTileBar;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mOtherTileViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/LargeTileBar;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mOtherTileViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/bar/TopLargeTileBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/TopLargeTileBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/TopLargeTileBar;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
