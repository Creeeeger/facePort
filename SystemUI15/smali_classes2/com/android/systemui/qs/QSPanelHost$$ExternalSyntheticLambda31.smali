.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSPanelHost;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/lang/String;Lcom/android/systemui/qs/bar/TileHostable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/bar/TileHostable;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": tile[ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]: record: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSPanelHost"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mTileCallbackFunction:Ljava/util/function/Function;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    iput-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/bar/TileHostable;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/qs/bar/TileHostable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/systemui/qs/bar/TileHostable;->removeAllTiles()V

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;-><init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/lang/String;Lcom/android/systemui/qs/bar/TileHostable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
