.class public final Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    instance-of p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v2, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda25;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda25;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v1

    :goto_1
    instance-of v2, p1, Lcom/android/systemui/plugins/qs/SQSTile;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/android/systemui/plugins/qs/SQSTile;

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/SQSTile;->getTileMapKey()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPDE1007"

    invoke-static {p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130083

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->onDoneButtonClicked()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    :cond_5
    return-void
.end method
