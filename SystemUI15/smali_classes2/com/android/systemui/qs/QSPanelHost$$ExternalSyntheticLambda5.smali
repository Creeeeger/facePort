.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->click(Lcom/android/systemui/animation/Expandable;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;

    iget-object p0, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->calculateContainerHeight()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
