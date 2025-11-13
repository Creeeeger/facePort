.class Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->-$$Nest$fgetmHighlightsController(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->-$$Nest$fgetmHighlightsController(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighlightsStyle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onEntriesUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->-$$Nest$fputmHighlightsSectionShowing(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->-$$Nest$fgetmHighlightsSectionShowing(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->-$$Nest$fgetmHighlightsController(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->-$$Nest$fgetmHighlightsController(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    iget-object p0, p0, Lcom/android/systemui/HighlightingTextView;->shaderSpans:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_2
    return-void
.end method
