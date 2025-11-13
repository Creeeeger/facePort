.class public final synthetic Lcom/android/systemui/qs/bar/TopLargeTileBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/TopLargeTileBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/TopLargeTileBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mWifiTileView:Lcom/android/systemui/plugins/qs/QSTileView;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mBluetoothTileView:Lcom/android/systemui/plugins/qs/QSTileView;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mOtherTileViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
