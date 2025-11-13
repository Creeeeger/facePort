.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    check-cast p1, Lcom/android/systemui/qs/bar/TileHostable;

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
