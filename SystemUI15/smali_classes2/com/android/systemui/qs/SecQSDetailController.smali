.class public final Lcom/android/systemui/qs/SecQSDetailController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public closeDetailOnRelease:Z

.field public final coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public final configChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field public currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

.field public detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public detailAdapterDismissRunnable:Ljava/lang/Runnable;

.field public detailButtonsDivider:Landroid/view/View;

.field public final detailCallback:Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;

.field public final detailCallbackForPopup:Lcom/android/systemui/qs/SecQSDetailController$detailCallbackForPopup$1;

.field public detailContent:Landroid/view/ViewGroup;

.field public detailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

.field public detailDoneButton:Landroid/widget/Button;

.field public detailExtendedContainer:Landroid/widget/LinearLayout;

.field public detailExtendedSummarContainer:Landroid/view/ViewGroup;

.field public detailExtendedSummary:Landroid/widget/TextView;

.field public detailExtendedText:Landroid/widget/TextView;

.field public detailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

.field public detailSettingsButton:Landroid/widget/Button;

.field public detailTileSpec:Ljava/lang/String;

.field public final detailViews:Landroid/util/SparseArray;

.field public final dndSummaryCallback:Lcom/android/systemui/qs/SecQSDetailController$dndSummaryCallback$1;

.field public final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public oldOrientation:I

.field public final onConfigurationChangedListener:Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;

.field public panelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

.field public qsDetailExtendedContainer:Landroid/widget/LinearLayout;

.field public qsDetailHeader:Landroid/view/View;

.field public qsDetailHeaderProgress:Landroid/widget/ProgressBar;

.field public qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

.field public qsDetailHeaderSwitchStub:Landroid/view/ViewStub;

.field public qsDetailHeaderTitle:Landroid/widget/TextView;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public scanState:Z

.field public scrollView:Landroid/view/View;

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

.field public switchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public switchState:Z

.field public final tileHost:Lcom/android/systemui/qs/QSTileHost;

.field public toggleDivider:Landroid/view/View;

.field public transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field public final view:Lcom/android/systemui/qs/SecQSDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/SecQSDetailController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecQSDetailController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSDetailController;->statusBarStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/qs/SecQSDetailController;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p5, p0, Lcom/android/systemui/qs/SecQSDetailController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/qs/SecQSDetailController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p7, p0, Lcom/android/systemui/qs/SecQSDetailController;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p8, p0, Lcom/android/systemui/qs/SecQSDetailController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p9, p0, Lcom/android/systemui/qs/SecQSDetailController;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    new-instance p1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const p2, -0x3ffeedfc

    invoke-direct {p1, p2}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->configChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/systemui/qs/SecQSDetailController$dndSummaryCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetailController$dndSummaryCallback$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->dndSummaryCallback:Lcom/android/systemui/qs/SecQSDetailController$dndSummaryCallback$1;

    new-instance p1, Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->onConfigurationChangedListener:Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->oldOrientation:I

    new-instance p1, Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailCallback:Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;

    new-instance p1, Lcom/android/systemui/qs/SecQSDetailController$detailCallbackForPopup$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSDetailController$detailCallbackForPopup$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailCallbackForPopup:Lcom/android/systemui/qs/SecQSDetailController$detailCallbackForPopup$1;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public static final synthetic access$getMView$p$s103656192(Lcom/android/systemui/qs/SecQSDetailController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final access$handleToggleStateChanged(Lcom/android/systemui/qs/SecQSDetailController;ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->switchState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final access$handleUpdatingDetail(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v1, v2, v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a0965

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->toViewGroup(I)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailSettingsButton:Landroid/widget/Button;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailButtonsDivider:Landroid/view/View;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static final updateDetailButtonText$update(Landroid/widget/TextView;I)V
    .locals 2

    const v0, 0x7f071061

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/Typeface;->isLikeDefault:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f081095

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final closeDetail()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->closeDetailOnRelease:Z

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQSDetailController;->showDetail(ZLcom/android/systemui/qs/SecQSPanelControllerBase$Record;)V

    :cond_0
    return-void
.end method

.method public final closeTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    :cond_1
    return-void
.end method

.method public final getQsExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-eqz v5, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v2, :cond_4

    sget-boolean v6, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateVisibility(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    const/16 v6, 0x8

    if-eqz v2, :cond_6

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->setDetailExtendedContainerHeight()V

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderProgress:Landroid/widget/ProgressBar;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6
    if-eq v4, v2, :cond_7

    move v7, v0

    goto :goto_4

    :cond_7
    move v7, v1

    :goto_4
    if-nez v7, :cond_8

    if-nez v4, :cond_8

    return-void

    :cond_8
    const/4 v7, 0x0

    if-eqz v2, :cond_11

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v7

    :goto_5
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_6

    :cond_a
    move v8, v1

    :goto_6
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v6, v8}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    if-eqz v5, :cond_b

    const v6, 0x7f0a0965

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/SecQSDetailController;->toViewGroup(I)Landroid/view/ViewGroup;

    move-result-object v6

    goto :goto_7

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContent:Landroid/view/ViewGroup;

    :goto_7
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_9

    :cond_e
    move-object v0, v7

    :goto_9
    if-nez v0, :cond_10

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Tile = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " detailView is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecQSDetailController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f13010e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput-object v7, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapterDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateMarginAndPadding()V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v5, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailButtonText()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    const-string v1, "Dnd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateDndDetail()V

    goto :goto_c

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v5, :cond_13

    if-eqz v4, :cond_12

    goto :goto_a

    :cond_12
    move-object v5, v7

    :goto_a
    if-eqz v5, :cond_13

    new-instance v4, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/qs/SecQSDetailController$handleShowingDetail$6$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    iput-object v4, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapterDismissRunnable:Ljava/lang/Runnable;

    :cond_13
    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetailController;->statusBarStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v4, v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v4, v0, :cond_14

    goto :goto_b

    :cond_14
    move v0, v1

    :goto_b
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->getQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->getQsExpanded()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecQSPanelController;->setGridContentVisibility(Z)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->scanState:Z

    if-nez v0, :cond_17

    goto :goto_c

    :cond_17
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->scanState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_18
    :goto_c
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_ANIMATION_SUPPORT_DETAIL_POPUP:Z

    if-eqz v0, :cond_1f

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result v0

    if-nez v0, :cond_19

    instance-of p1, p1, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;

    if-eqz p1, :cond_1a

    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->getQsExpanded()Z

    move-result p1

    if-nez p1, :cond_1b

    :cond_1a
    if-nez v2, :cond_1e

    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    if-eqz p1, :cond_1e

    :cond_1b
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanelHost;->getTileView(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p1

    if-eqz p1, :cond_1d

    const-string v0, "anchor"

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    goto :goto_d

    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p1, :cond_1d

    sget-object v0, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    iget-object v7, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    :cond_1d
    :goto_d
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    if-eqz p0, :cond_20

    invoke-virtual {p0, v7, v2}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->transitionDetail(Landroid/view/View;Z)V

    goto :goto_e

    :cond_1e
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    if-eqz p0, :cond_20

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->transitionDetail(Z)V

    goto :goto_e

    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    if-eqz p0, :cond_20

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->transitionDetail(Z)V

    :cond_20
    :goto_e
    const-string p0, "QPP101"

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method

.method public final isBluetoothOrWifiTile()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    const-string v0, "Wifi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bluetooth"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPortrait()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onInit()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateMarginAndPadding()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mOnConfigurationChangedListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->onConfigurationChangedListener:Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/qs/SecQSDetailController$onViewAttached$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSDetailController$onViewAttached$1$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->updateViews(Lcom/android/systemui/qs/SecQSDetail;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailButtonText()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailHeader()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail;->mOnConfigurationChangedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->onConfigurationChangedListener:Lcom/android/systemui/qs/SecQSDetailController$onConfigurationChangedListener$1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDetailExtendedContainerHeight()V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v5, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_1

    const v5, 0x7f07106e

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDetailContentViewMaxHeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDetailContentViewMinHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_2

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    if-eqz v0, :cond_3

    move v1, v5

    :cond_3
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailExtendedContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_5

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    :cond_5
    if-eqz v4, :cond_7

    const/16 v1, 0x31

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x3e4738c8

    goto :goto_2

    :cond_6
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_2
    mul-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_9

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_3

    :cond_9
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v1

    goto :goto_4

    :cond_a
    move v6, v3

    :goto_4
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_b
    move-object v5, v4

    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDetailContentViewMaxHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_d

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_6

    :cond_d
    move-object v6, v4

    :goto_6
    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_7

    :cond_e
    const v4, 0x7f071060

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v4

    :goto_7
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f070d66

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v4

    goto :goto_8

    :cond_f
    move v4, v3

    :goto_8
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_10

    move v1, v2

    goto :goto_9

    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->scrollView:Landroid/view/View;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    :cond_11
    iget p0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v1, v3, p0

    :cond_12
    :goto_9
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v4, v6

    :cond_13
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    return-void
.end method

.method public final setQsAnimatorManager(Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailCallback:Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;

    iput-object v2, v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mQsDetailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailCallbackForPopup:Lcom/android/systemui/qs/SecQSDetailController$detailCallbackForPopup$1;

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    return-void
.end method

.method public final setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    const-string v0, "SecQSDetailController"

    const-string/jumbo v1, "setupDetailFooter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailButtonsDivider:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailSettingsButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$2;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/qs/SecQSSwitch;

    if-eqz v3, :cond_5

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/qs/SecQSSwitch;

    :cond_5
    iput-object v4, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    :cond_6
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->switchAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->switchState:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    if-eqz v1, :cond_9

    new-instance v2, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;-><init>(Lcom/android/systemui/plugins/qs/DetailAdapter;Lcom/android/systemui/qs/SecQSSwitch;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;-><init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/qs/SecQSSwitch;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_9
    :goto_3
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showDetail(ZLcom/android/systemui/qs/SecQSPanelControllerBase$Record;)V
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v3, p1, :cond_2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_ANIMATION_SUPPORT_DETAIL_POPUP:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->getQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_6
    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailController;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    :cond_8
    :goto_4
    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    :cond_9
    if-eqz p1, :cond_b

    new-instance p1, Lkotlin/Pair;

    if-eqz p2, :cond_a

    iget-object v1, p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_a
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController;->currentRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_d
    return-void
.end method

.method public final showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    invoke-direct {v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;-><init>()V

    iput-object p1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecQSDetailController;->showDetail(ZLcom/android/systemui/qs/SecQSPanelControllerBase$Record;)V

    return-void
.end method

.method public final toDp(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final toViewGroup(I)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final updateDetailButtonText()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    const-string v1, "Dnd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailDoneButton:Landroid/widget/Button;

    const v1, 0x7f1310d9

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailButtonText$update(Landroid/widget/TextView;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailSettingsButton:Landroid/widget/Button;

    const v0, 0x7f1310d8

    invoke-static {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->updateDetailButtonText$update(Landroid/widget/TextView;I)V

    return-void
.end method

.method public final updateDetailHeader()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v1

    const v2, 0x7f071070

    const/4 v4, 0x0

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const v1, 0x7f0a0960

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQSDetailController;->toViewGroup(I)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v0, 0x7f071072

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result p0

    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_5
    :goto_1
    const v1, 0x7f0a0968

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQSDetailController;->toViewGroup(I)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_6
    if-eqz v3, :cond_8

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_7

    const v0, 0x7f071071

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result p0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result p0

    :goto_2
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_8
    :goto_3
    return-void
.end method

.method public final updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    .locals 9

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_6

    if-nez v4, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v0, v1

    invoke-interface {p2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedText:Landroid/widget/TextView;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateDetailTitle"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecQSDetailController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x2

    const v5, 0x7f06067c

    const/4 v6, 0x0

    if-eqz p1, :cond_11

    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-eqz v7, :cond_a

    if-nez v0, :cond_9

    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v7, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_a
    :goto_6
    iget-object v6, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_e

    if-nez v0, :cond_c

    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    new-instance v7, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, p2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v5, 0x7f1310f6

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v5, 0x7f06067b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, p2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v5, 0x7f1310f5

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v5, 0x7f06067a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, p2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    if-eqz p2, :cond_17

    if-nez v0, :cond_10

    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    move v5, v1

    goto :goto_a

    :cond_10
    :goto_9
    move v5, v4

    :goto_a
    invoke-virtual {p2, v5}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    goto :goto_e

    :cond_11
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-eqz v7, :cond_14

    if-nez v0, :cond_13

    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v8, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_13
    :goto_b
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_c
    iget-object v7, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_17

    if-nez v0, :cond_16

    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v8, :cond_15

    goto :goto_d

    :cond_15
    move-object v6, v7

    :cond_16
    :goto_d
    if-eqz v6, :cond_17

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17
    :goto_e
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_1a

    if-nez v0, :cond_18

    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v5, :cond_19

    :cond_18
    move v1, v4

    :cond_19
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->toggleDivider:Landroid/view/View;

    if-eqz p0, :cond_1d

    if-nez v0, :cond_1b

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz p2, :cond_1c

    :cond_1b
    if-eqz p1, :cond_1c

    goto :goto_f

    :cond_1c
    move v2, v3

    :goto_f
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_10
    return-void
.end method

.method public final updateDndDetail()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    const-string v1, "Dnd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f07107c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v0

    const v1, 0x7f07106e

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQSDetailController;->toDp(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0, v2, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    check-cast v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    check-cast v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final updateMarginAndPadding()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSDetail;

    const v1, 0x7f0a08af

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v2, v2, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDetailSidePadding(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDetailSidePadding(Landroid/content/Context;)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final updateViews(Lcom/android/systemui/qs/SecQSDetail;)V
    .locals 3

    const v0, 0x7f0a095e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a0354

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailSettingsButton:Landroid/widget/Button;

    const v0, 0x7f0a03ae

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailDoneButton:Landroid/widget/Button;

    const v0, 0x7f0a095f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailButtonsDivider:Landroid/view/View;

    const v0, 0x7f0a0964

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0963

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedText:Landroid/widget/TextView;

    const v0, 0x7f0a0968

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSDetailContentView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContentParent:Lcom/android/systemui/qs/SecQSDetailContentView;

    const v0, 0x7f0a098b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->toggleDivider:Landroid/view/View;

    const v0, 0x7f0a0966

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0d34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0d4e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeader:Landroid/view/View;

    const v0, 0x7f0a0967

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0962

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0961

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0960

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailExtendedContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    const-string v0, "Dnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->updateDndDetail()V

    :cond_1
    return-void
.end method

.method public final updateVisibility(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldUseFullScreen()Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v2, :cond_8

    const p1, 0x7f0a0965

    const/16 v2, 0x8

    const v3, 0x7f0a0960

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_5
    return-void
.end method
