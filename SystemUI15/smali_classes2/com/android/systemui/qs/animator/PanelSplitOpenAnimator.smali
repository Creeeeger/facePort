.class public final Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final barController:Lcom/android/systemui/qs/bar/BarController;

.field public final barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

.field public final barYDiff:F

.field public bottomLargeTileBarView:Landroid/view/View;

.field public brightnessVolumeBarView:Landroid/view/View;

.field public buttonAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonContainer:Landroid/view/View;

.field public final buttonYDiff:F

.field public clockDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainer:Landroid/view/View;

.field public containerViewAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final context:Landroid/content/Context;

.field public dataUsageBarView:Landroid/view/View;

.field public header:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public headerAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final headerController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public multiSimBarView:Landroid/view/View;

.field public openPosition:F

.field public overExpansionAmount:F

.field public final overExpansionBarAnimators:Ljava/util/ArrayList;

.field public final overExpansionMaxAmount:F

.field public panelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final panelBarViews:Ljava/util/ArrayList;

.field public panelMediaPlayerBarView:Landroid/view/View;

.field public panelQuickControlBarView:Landroid/view/View;

.field public securityFooterBarView:Landroid/view/View;

.field public smartViewLargeTileBarView:Landroid/view/View;

.field public tileChunkLayoutBarView:Landroid/view/View;

.field public topLargeTileBarView:Landroid/view/View;

.field public videoCallMicModeBarView:Landroid/view/View;

.field public final xDiff:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->headerController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iput-object p4, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->barController:Lcom/android/systemui/qs/bar/BarController;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarViews:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionBarAnimators:Ljava/util/ArrayList;

    const/high16 p2, 0x43a50000    # 330.0f

    iput p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->barYDiff:F

    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonYDiff:F

    iput p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->xDiff:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c84

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionMaxAmount:F

    return-void
.end method

.method public static final updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    const-string v0, "expand_anim"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 5

    const-string v0, "PanelSplitOpenAnimator"

    const-string v1, "clearAnimationState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    sget v3, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->getBars()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final destroyQSViews()V
    .locals 0

    return-void
.end method

.method public final getBars()Ljava/util/ArrayList;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->getBarViewsByOrder()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    iget-object p0, v1, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBars:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->getBarViewsByOrder()Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final isThereNoView()Z
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

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

.method public final onPanelClosed$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateAnimators()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clearAnimationState()V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPanelExpansionChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelSplitOpenAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->setPosition$2(F)V

    :cond_1
    return-void
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    iget v1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateAnimators()V

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    sput p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->setPosition$2(F)V

    :cond_0
    return-void
.end method

.method public final setOverDragAmount(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->setOverScrollAmount(F)V

    return-void
.end method

.method public final setOverScrollAmount(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOverScrollAmount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelSplitOpenAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionAmount:F

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionMaxAmount:F

    div-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionBarAnimators:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setPosition$2(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v2

    sget-boolean v3, Lcom/android/systemui/qs/animator/QsAnimatorState;->isSliding:Z

    iget v4, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionAmount:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setPosition : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " // "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v2, v1, v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "PanelSplitOpenAnimator"

    invoke-static {v5, v4, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isSliding:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->openPosition:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->openPosition:F

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->headerAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clockDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->containerViewAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->headerController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0a02a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clockDateContainer:Landroid/view/View;

    const v0, 0x7f0a04e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonContainer:Landroid/view/View;

    :cond_1
    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->barController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->topLargeTileBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->tileChunkLayoutBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    goto :goto_4

    :cond_6
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_5

    :cond_7
    move-object p1, v2

    :goto_5
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->videoCallMicModeBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    goto :goto_6

    :cond_8
    move-object p1, v2

    :goto_6
    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_7

    :cond_9
    move-object p1, v2

    :goto_7
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->multiSimBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_VOLUME:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    goto :goto_8

    :cond_a
    move-object p1, v2

    :goto_8
    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_9

    :cond_b
    move-object p1, v2

    :goto_9
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->brightnessVolumeBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v1, :cond_c

    check-cast p1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    goto :goto_a

    :cond_c
    move-object p1, v2

    :goto_a
    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_b

    :cond_d
    move-object p1, v2

    :goto_b
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelMediaPlayerBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->QUICK_CONTROL:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/QuickControlBar;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/android/systemui/qs/bar/QuickControlBar;

    goto :goto_c

    :cond_e
    move-object p1, v2

    :goto_c
    if-eqz p1, :cond_f

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_d

    :cond_f
    move-object p1, v2

    :goto_d
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelQuickControlBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    if-eqz v1, :cond_10

    check-cast p1, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    goto :goto_e

    :cond_10
    move-object p1, v2

    :goto_e
    if-eqz p1, :cond_11

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_f

    :cond_11
    move-object p1, v2

    :goto_f
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->bottomLargeTileBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->SMARTVIEW_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    if-eqz v1, :cond_12

    check-cast p1, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    goto :goto_10

    :cond_12
    move-object p1, v2

    :goto_10
    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_11

    :cond_13
    move-object p1, v2

    :goto_11
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->smartViewLargeTileBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    goto :goto_12

    :cond_14
    move-object p1, v2

    :goto_12
    if-eqz p1, :cond_15

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object p1

    goto :goto_13

    :cond_15
    move-object p1, v2

    :goto_13
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->securityFooterBarView:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->DATAUSAGE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/qs/bar/DataUsageBar;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/android/systemui/qs/bar/DataUsageBar;

    goto :goto_14

    :cond_16
    move-object p1, v2

    :goto_14
    if-eqz p1, :cond_17

    invoke-static {p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateViews$lambda$1$toBarView(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v2

    :cond_17
    iput-object v2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->dataUsageBarView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "################ setTransitionToFullShadeAmount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelSplitOpenAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->setPosition$2(F)V

    return-void
.end method

.method public final slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V
    .locals 0

    sget p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->openPosition:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->openPosition:F

    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->containerViewAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateAnimators()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->isThereNoView()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "PanelSplitOpenAnimator"

    const-string/jumbo v5, "updateAnimators"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonYDiff:F

    const-string v6, "alpha"

    const-string/jumbo v7, "translationY"

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v11, v3, [F

    fill-array-data v11, :array_0

    invoke-virtual {v10, v4, v6, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    neg-float v11, v5

    new-array v12, v3, [F

    aput v11, v12, v1

    aput v9, v12, v2

    invoke-virtual {v10, v4, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->headerAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clockDateContainer:Landroid/view/View;

    iget v10, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->barYDiff:F

    iget v11, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->xDiff:F

    const-string/jumbo v12, "translationX"

    const-string/jumbo v13, "scaleY"

    const-string/jumbo v14, "scaleX"

    if-eqz v4, :cond_3

    new-instance v15, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    invoke-virtual {v15, v4, v6, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->context:Landroid/content/Context;

    invoke-static {v8}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v2, :cond_2

    move v8, v11

    move/from16 v16, v8

    goto :goto_0

    :cond_2
    neg-float v8, v11

    move/from16 v16, v11

    :goto_0
    new-array v11, v3, [F

    aput v8, v11, v1

    aput v9, v11, v2

    invoke-virtual {v15, v4, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    sub-float v8, v10, v5

    new-array v11, v3, [F

    aput v8, v11, v1

    aput v9, v11, v2

    invoke-virtual {v15, v4, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v8, v3, [F

    fill-array-data v8, :array_2

    invoke-virtual {v15, v4, v14, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v8, v3, [F

    fill-array-data v8, :array_3

    invoke-virtual {v15, v4, v13, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->clockDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_1

    :cond_3
    move/from16 v16, v11

    :goto_1
    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v4, :cond_5

    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v11, v3, [F

    fill-array-data v11, :array_4

    invoke-virtual {v8, v4, v6, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v11, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->context:Landroid/content/Context;

    invoke-static {v11}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v11

    if-ne v11, v2, :cond_4

    move/from16 v11, v16

    neg-float v11, v11

    goto :goto_2

    :cond_4
    move/from16 v11, v16

    :goto_2
    new-array v15, v3, [F

    aput v11, v15, v1

    aput v9, v15, v2

    invoke-virtual {v8, v4, v12, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    sub-float v5, v10, v5

    new-array v11, v3, [F

    aput v5, v11, v1

    aput v9, v11, v2

    invoke-virtual {v8, v4, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v5, v3, [F

    fill-array-data v5, :array_5

    invoke-virtual {v8, v4, v14, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v5, v3, [F

    fill-array-data v5, :array_6

    invoke-virtual {v8, v4, v13, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->buttonAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_5
    iget-object v4, v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    neg-float v8, v10

    new-array v10, v3, [F

    aput v8, v10, v1

    aput v9, v10, v2

    invoke-virtual {v5, v4, v7, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->containerViewAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_6
    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->topLargeTileBarView:Landroid/view/View;

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->tileChunkLayoutBarView:Landroid/view/View;

    if-eqz v5, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->videoCallMicModeBarView:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->multiSimBarView:Landroid/view/View;

    if-eqz v5, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->brightnessVolumeBarView:Landroid/view/View;

    if-eqz v5, :cond_b

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelMediaPlayerBarView:Landroid/view/View;

    if-eqz v5, :cond_c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelQuickControlBarView:Landroid/view/View;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->bottomLargeTileBarView:Landroid/view/View;

    if-eqz v5, :cond_e

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->smartViewLargeTileBarView:Landroid/view/View;

    if-eqz v5, :cond_f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->securityFooterBarView:Landroid/view/View;

    if-eqz v5, :cond_10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->dataUsageBarView:Landroid/view/View;

    if-eqz v5, :cond_11

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    new-array v10, v3, [F

    fill-array-data v10, :array_7

    invoke-virtual {v4, v8, v6, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    sget v10, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->SCALE_DOWN_RATIO:F

    new-array v11, v3, [F

    aput v10, v11, v1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v2

    invoke-virtual {v4, v8, v14, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v11, v3, [F

    aput v10, v11, v1

    aput v12, v11, v2

    invoke-virtual {v4, v8, v13, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_3

    :cond_12
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->panelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionBarAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->getBars()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_14

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_13

    const-string v5, "expand_anim"

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_13

    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    mul-int/lit8 v10, v8, 0x14

    int-to-float v10, v10

    new-array v11, v3, [F

    aput v9, v11, v1

    aput v10, v11, v2

    invoke-virtual {v6, v5, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;->overExpansionBarAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move v5, v8

    goto :goto_4

    :cond_14
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_15
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
