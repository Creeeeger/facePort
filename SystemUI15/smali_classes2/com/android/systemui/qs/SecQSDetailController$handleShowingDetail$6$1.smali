.class public final Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_run:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;->$this_run:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetailController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;->$this_run:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;->$this_run:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->dismissListPopupWindow()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-void
.end method
