.class public final synthetic Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;

    sget v2, Lcom/android/systemui/qs/SecQSDetail;->$r8$clinit:I

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->configChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d03a7

    invoke-virtual {v3, v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/SecQSDetailController;->updateViews(Lcom/android/systemui/qs/SecQSDetail;)V

    iget-object v3, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/SecQSDetailController;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/SecQSDetailController;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailButtonText()V

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailHeader()V

    iget-object v3, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    move-result v2

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailButtonText()V

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->oldOrientation:I

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result v2

    if-ne v2, v0, :cond_5

    invoke-static {p1}, Lcom/android/systemui/qs/SecQSDetailController;->access$getMView$p$s103656192(Lcom/android/systemui/qs/SecQSDetailController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSDetail;

    new-instance v2, Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1$updateResources$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1$updateResources$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailHeader()V

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    invoke-static {p1, v0}, Lcom/android/systemui/qs/SecQSDetailController;->access$handleUpdatingDetail(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecQSDetailController;->updateVisibility(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_6
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iput-object v0, p1, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    :cond_8
    :goto_2
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    iput p0, p1, Lcom/android/systemui/qs/SecQSDetailController;->oldOrientation:I

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateMarginAndPadding()V

    :goto_3
    return-void
.end method
