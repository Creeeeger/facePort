.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/internal/logging/MetricsLogger;

    check-cast p1, Landroid/metrics/LogMaker;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    check-cast p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iget-boolean v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->showBar(Z)V

    :goto_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/qs/QSPanelHost;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    :goto_1
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
