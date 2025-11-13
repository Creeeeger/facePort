.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanelHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-interface {v2, v0, p0}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
