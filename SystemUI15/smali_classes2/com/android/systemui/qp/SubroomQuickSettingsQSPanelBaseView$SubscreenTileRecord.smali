.class public final Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;
.super Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTilespec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;->mTilespec:Ljava/lang/String;

    return-void
.end method
