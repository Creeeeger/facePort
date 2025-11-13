.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSPanelHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/QSPanelHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v0

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanelHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileCallbackFunction:Ljava/util/function/Function;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    iget-object v0, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    iput-object p1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    iget-object p1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
