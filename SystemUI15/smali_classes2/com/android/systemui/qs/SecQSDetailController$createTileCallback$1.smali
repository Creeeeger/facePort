.class public final Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/SQSTile$SCallback;


# instance fields
.field public final synthetic $tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final needToSkip()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onScanStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->needToSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    new-instance v1, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onScrollToDetail(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->needToSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    new-instance v1, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onShowDetail(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetailController;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTileHost;->isLargeBarTile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoLabelTileView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    new-instance v2, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onShowDetail$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;ZLcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public final onToggleStateChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->needToSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    new-instance v1, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUpdateDetail()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->needToSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    new-instance v2, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;->$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onUpdateDetail$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
