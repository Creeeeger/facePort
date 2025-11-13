.class public final Lcom/android/systemui/ShelfToolTipManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final THRESHOLD_COUNT:I

.field public alreadyToolTipShown:Z

.field public isTappedNotiSettings:Z

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mContext:Landroid/content/Context;

.field public mFirstExpanded:Z

.field public final mNotiSettingButton:Landroid/widget/TextView;

.field public mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

.field public final mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public mOrientation:I

.field public final mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public mStatusBarState:I

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public panelExpandedCount:I

.field public final stateListener:Lcom/android/systemui/ShelfToolTipManager$stateListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/SecPanelSplitHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/ShelfToolTipManager;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object p4, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/ShelfToolTipManager;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    const/16 p3, 0xc8

    iput p3, p0, Lcom/android/systemui/ShelfToolTipManager;->THRESHOLD_COUNT:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarState:I

    new-instance v0, Lcom/android/systemui/ShelfToolTipManager$stateListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ShelfToolTipManager$stateListener$1;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip(Z)V

    const-string p3, "NotificationSettingsToolTipShown"

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->alreadyToolTipShown:Z

    iget-object p1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p3, 0x7f0a07f3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarState:I

    invoke-interface {p4, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-interface {p4, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    check-cast p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iget-object p3, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/ShelfToolTipManager$1;

    invoke-direct {p4, p0, p2}, Lcom/android/systemui/ShelfToolTipManager$1;-><init>(Lcom/android/systemui/ShelfToolTipManager;Lkotlin/coroutines/Continuation;)V

    iget-object p2, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p1, p2, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p6}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/android/systemui/ShelfToolTipManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ShelfToolTipManager$2;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    invoke-virtual {p8, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    new-instance p1, Lcom/android/systemui/ShelfToolTipManager$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/ShelfToolTipManager$3;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    invoke-virtual {p7, p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    return-void
.end method

.method public static final access$tryToShowToolTip(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarState:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    iget v1, p0, Lcom/android/systemui/ShelfToolTipManager;->THRESHOLD_COUNT:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->needsToShow()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->getToolTip()V

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getToolTip()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    const v3, 0x7f130d0d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060513

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setBorderColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060512

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColorWithAlpha(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    :cond_6
    return-void
.end method

.method public final needsToShow()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/ShelfToolTipManager;->alreadyToolTipShown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ShelfToolTipManager;->isTappedNotiSettings:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    iget v1, p0, Lcom/android/systemui/ShelfToolTipManager;->THRESHOLD_COUNT:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final releaseToolTip(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method
