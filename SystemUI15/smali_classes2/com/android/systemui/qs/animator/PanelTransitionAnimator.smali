.class public final Lcom/android/systemui/qs/animator/PanelTransitionAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final barYDiff:F

.field public buttonContainer:Landroid/view/View;

.field public buttonFadeInDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonFadeOutDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public buttonLockScreenFadeInAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final buttonYDiff:F

.field public carrierFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public carrierFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public carrierFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public carrierFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainer:Landroid/view/View;

.field public clockDateContainerFadeInDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainerFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainerFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainerFadeOutDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainerFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public clockDateContainerFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final context:Landroid/content/Context;

.field public header:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public headerAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public inPinnedMode:Z

.field public networkSpeedContainer:Landroid/view/View;

.field public final onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;

.field public panelTransitionState:I

.field public plmn:Landroid/view/ViewGroup;

.field public privacyContainer:Landroid/view/View;

.field public qsFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

.field public qsFadeInLeft:Lcom/android/systemui/qs/TouchAnimator;

.field public qsFadeInRight:Lcom/android/systemui/qs/TouchAnimator;

.field public qsFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

.field public qsFadeOutLeft:Lcom/android/systemui/qs/TouchAnimator;

.field public qsFadeOutRight:Lcom/android/systemui/qs/TouchAnimator;

.field public qsLockScreenFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

.field public qsLockScreenTranslattionDown:Lcom/android/systemui/qs/TouchAnimator;

.field public qsRootView:Landroid/view/View;

.field public final secPanelSplitHelper$delegate:Lkotlin/Lazy;

.field public shadeFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

.field public shadeFadeInLeft:Lcom/android/systemui/qs/TouchAnimator;

.field public shadeFadeInRight:Lcom/android/systemui/qs/TouchAnimator;

.field public shadeFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

.field public shadeFadeOutLeft:Lcom/android/systemui/qs/TouchAnimator;

.field public shadeFadeOutRight:Lcom/android/systemui/qs/TouchAnimator;

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public shadeLockScreenFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

.field public shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public splitEnabled:Z

.field public systemIconContainer:Landroid/view/View;

.field public final xDiff:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    sget-object p1, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$resourcePicker$2;->INSTANCE:Lcom/android/systemui/qs/animator/PanelTransitionAnimator$resourcePicker$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$secPanelSplitHelper$2;->INSTANCE:Lcom/android/systemui/qs/animator/PanelTransitionAnimator$secPanelSplitHelper$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->secPanelSplitHelper$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->xDiff:F

    const/high16 p1, 0x43a50000    # 330.0f

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->barYDiff:F

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonYDiff:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    check-cast p3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean p1, p3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->inPinnedMode:Z

    return-void
.end method

.method public static updateVisibility(Landroid/view/View;Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->isThereNoView()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lcom/android/systemui/shade/PanelTransitionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearAnimationState "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget v4, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    if-nez v4, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-ne v4, v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_7

    iget v4, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    if-nez v4, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAlpha(F)V

    goto :goto_1

    :cond_5
    if-ne v4, v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAlpha(F)V

    :cond_6
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v0, :cond_a

    iget v4, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    if-nez v4, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_8
    if-ne v4, v1, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    if-nez p0, :cond_b

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_b
    if-ne p0, v1, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    return-void
.end method

.method public final destroyQSViews()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isThereNoView()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->inPinnedMode:Z

    if-nez p0, :cond_1

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
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->splitEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateAnimators()V

    :cond_0
    return-void
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-static {v0, v1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-static {v3, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-static {v0, v1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-static {v3, v1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-static {v1, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_7
    :goto_0
    iput v2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->splitEnabled:Z

    iget-boolean v1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    if-eq v0, v1, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateAnimators()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clearAnimationState()V

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->splitEnabled:Z

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->fraction:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clearAnimationState()V

    :cond_a
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clearAnimationState()V

    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;-><init>(ZFI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->destroyQSViews()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0a0434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    const v0, 0x7f0a04e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    const v0, 0x7f0a02a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object p1, p1, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz p1, :cond_3

    const v0, 0x7f0a0991

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->networkSpeedContainer:Landroid/view/View;

    const v0, 0x7f0a0b42

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->systemIconContainer:Landroid/view/View;

    const v0, 0x7f0a0920

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->privacyContainer:Landroid/view/View;

    const v0, 0x7f0a00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->plmn:Landroid/view/ViewGroup;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->splitEnabled:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->inPinnedMode:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz p0, :cond_6

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_6
    return-void
.end method

.method public final slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Lcom/android/systemui/shade/PanelTransitionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    invoke-static {v2}, Lcom/android/systemui/shade/PanelTransitionState;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fraction = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " direction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stateToChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " StatusBar = "

    const-string v5, " panelTransitionState = "

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PanelTransitionAnimator"

    invoke-static {v3, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/4 v3, 0x1

    if-nez v2, :cond_35

    iget p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->panelTransitionState:I

    if-ne p2, v3, :cond_2

    const-string p1, "SHADE_STATE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateAnimators()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clearAnimationState()V

    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_4

    const-string p1, "QS_STATE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateAnimators()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clearAnimationState()V

    :goto_1
    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->secPanelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result p2

    sget-object v2, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p3, v2, :cond_1d

    const-string p3, "DOWN animation"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_3
    sget p3, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-ne p3, v3, :cond_e

    if-eqz p4, :cond_7

    if-eqz p2, :cond_39

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz p2, :cond_8

    invoke-static {p2, v3}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz p2, :cond_9

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->headerAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonLockScreenFadeInAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_b
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeLockScreenFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_c
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsLockScreenFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_d

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsLockScreenTranslattionDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto/16 :goto_a

    :cond_e
    if-eqz p4, :cond_14

    if-eq p4, v3, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_10

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_10
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_11

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_11
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeOutDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_12

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_12
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_13

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_13
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeInDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto/16 :goto_a

    :cond_14
    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 p3, 0x0

    if-eqz p2, :cond_15

    invoke-interface {p2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_4

    :cond_15
    move-object p2, p3

    :goto_4
    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p2, :cond_16

    invoke-interface {p2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p3

    :cond_16
    if-nez p3, :cond_17

    goto :goto_5

    :cond_17
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_18
    :goto_5
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_19

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_19
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_1a

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1a
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeInDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_1b

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1b
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_1c

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeOutDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto/16 :goto_a

    :cond_1d
    sget-object p4, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p3, p4, :cond_29

    const-string p3, "LEFT animation"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    if-nez p3, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_6
    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p3, :cond_1f

    goto :goto_7

    :cond_1f
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_7
    if-eqz p2, :cond_24

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeInLeft:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_20

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_20
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeOutLeft:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_21

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_21
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_22

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_22
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_23

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_23
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto/16 :goto_a

    :cond_24
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeInLeft:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_25

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_25
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeOutLeft:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_26

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_26
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_27

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_27
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_28

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_28
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto/16 :goto_a

    :cond_29
    sget-object p4, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p3, p4, :cond_39

    const-string p3, "RIGHT animation"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    if-nez p3, :cond_2a

    goto :goto_8

    :cond_2a
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_8
    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p3, :cond_2b

    goto :goto_9

    :cond_2b
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_9
    if-eqz p2, :cond_30

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeOutRight:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_2c

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2c
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeInRight:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_2d

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2d
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_2e

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2e
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_2f

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2f
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto/16 :goto_a

    :cond_30
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeOutRight:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_31

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_31
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeInRight:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_32

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_32
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_33

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_33
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    if-eqz p2, :cond_34

    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p2, :cond_34

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_34
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_a

    :cond_35
    const/high16 p1, -0x3d380000    # -100.0f

    float-to-double p3, p1

    int-to-double v3, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v5, p1

    const-wide v7, 0x3ff0126e978d4fdfL    # 1.0045

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    mul-double/2addr v3, p3

    const/high16 p1, 0x42c80000    # 100.0f

    float-to-double p3, p1

    add-double/2addr v3, p3

    double-to-float p1, v3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "overScrollX = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " overScrollAmount = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float p2, p2, v1

    if-lez p2, :cond_37

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_36

    goto :goto_a

    :cond_36
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_a

    :cond_37
    if-gez v2, :cond_39

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    if-nez p0, :cond_38

    goto :goto_a

    :cond_38
    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_39
    :goto_a
    return-void
.end method

.method public final updateAnimators()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "PanelTransitionAnimator"

    const-string/jumbo v5, "updateAnimators"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clearAnimationState()V

    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsRootView:Landroid/view/View;

    sget v5, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->SCALE_DOWN_RATIO:F

    const-string/jumbo v6, "scaleY"

    const-string/jumbo v7, "scaleX"

    const-string/jumbo v8, "translationY"

    const-string/jumbo v9, "translationX"

    const/high16 v10, 0x3f000000    # 0.5f

    const-string v11, "alpha"

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-eqz v4, :cond_0

    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v15, v3, [F

    fill-array-data v15, :array_0

    invoke-virtual {v14, v4, v11, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v15, v3, [F

    fill-array-data v15, :array_1

    invoke-virtual {v14, v4, v8, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v15, v3, [F

    aput v5, v15, v1

    aput v12, v15, v2

    invoke-virtual {v14, v4, v7, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v15, v3, [F

    aput v5, v15, v1

    aput v12, v15, v2

    invoke-virtual {v14, v4, v6, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v10, v14, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v15, v3, [F

    fill-array-data v15, :array_2

    invoke-virtual {v14, v4, v11, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v15, v3, [F

    aput v5, v15, v1

    aput v12, v15, v2

    invoke-virtual {v14, v4, v7, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v15, v3, [F

    aput v5, v15, v1

    aput v12, v15, v2

    invoke-virtual {v14, v4, v6, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v10, v14, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsLockScreenFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget v15, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->barYDiff:F

    neg-float v15, v15

    new-array v10, v3, [F

    aput v15, v10, v1

    aput v13, v10, v2

    invoke-virtual {v14, v4, v8, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsLockScreenTranslattionDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_3

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_4

    invoke-virtual {v10, v4, v8, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    aput v12, v14, v1

    aput v5, v14, v2

    invoke-virtual {v10, v4, v7, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    aput v12, v14, v1

    aput v5, v14, v2

    invoke-virtual {v10, v4, v6, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_5

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_6

    invoke-virtual {v10, v4, v9, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeInLeft:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_7

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_8

    invoke-virtual {v10, v4, v9, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeOutRight:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_9

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_a

    invoke-virtual {v10, v4, v9, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeInRight:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_b

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_c

    invoke-virtual {v10, v4, v9, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->qsFadeOutLeft:Lcom/android/systemui/qs/TouchAnimator;

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v4, :cond_1

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_d

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_e

    invoke-virtual {v10, v4, v8, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->headerAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeRootView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_3

    sget-boolean v10, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    div-int/2addr v10, v3

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setPivotX(F)V

    :cond_2
    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_f

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_10

    invoke-virtual {v10, v4, v8, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    aput v5, v14, v1

    aput v12, v14, v2

    invoke-virtual {v10, v4, v7, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    aput v5, v14, v1

    aput v12, v14, v2

    invoke-virtual {v10, v4, v6, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeInDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v14, v3, [F

    fill-array-data v14, :array_11

    invoke-virtual {v10, v4, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    fill-array-data v14, :array_12

    invoke-virtual {v10, v4, v8, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    aput v12, v14, v1

    aput v5, v14, v2

    invoke-virtual {v10, v4, v7, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v14, v3, [F

    aput v12, v14, v1

    aput v5, v14, v2

    invoke-virtual {v10, v4, v6, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v10, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_13

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_14

    invoke-virtual {v5, v4, v8, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeLockScreenFadeOutDown:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_15

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_16

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeOutLeft:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_17

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_18

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeInRight:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_19

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_1a

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeOutRight:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_1b

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_1c

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->shadeFadeInLeft:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_0

    :cond_3
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonContainer:Landroid/view/View;

    if-eqz v4, :cond_8

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_1d

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_1e

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-instance v10, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$4$1;

    invoke-direct {v10, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$4$1;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object v10, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_1f

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_20

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-instance v10, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$4$2;

    invoke-direct {v10, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$4$2;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object v10, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_21

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_22

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_23

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_24

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v10, v3, [F

    fill-array-data v10, :array_25

    invoke-virtual {v5, v4, v11, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v10, v3, [F

    fill-array-data v10, :array_26

    invoke-virtual {v5, v4, v8, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    sget-boolean v10, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v10, :cond_4

    move v12, v14

    goto :goto_1

    :cond_4
    move v12, v13

    :goto_1
    iput v12, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    new-instance v12, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$4$3;

    invoke-direct {v12, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$4$3;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object v12, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeInDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v12, v3, [F

    fill-array-data v12, :array_27

    invoke-virtual {v5, v4, v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    if-eqz v10, :cond_5

    move v12, v14

    goto :goto_2

    :cond_5
    move v12, v13

    :goto_2
    iput v12, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonFadeOutDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v12, v3, [F

    fill-array-data v12, :array_28

    invoke-virtual {v5, v4, v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v12, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->context:Landroid/content/Context;

    invoke-static {v12}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v12

    iget v15, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->xDiff:F

    if-ne v12, v2, :cond_6

    neg-float v15, v15

    :cond_6
    new-array v12, v3, [F

    aput v15, v12, v1

    aput v13, v12, v2

    invoke-virtual {v5, v4, v9, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget v12, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonYDiff:F

    neg-float v12, v12

    new-array v15, v3, [F

    aput v12, v15, v1

    aput v13, v15, v2

    invoke-virtual {v5, v4, v8, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v1, v3, [F

    fill-array-data v1, :array_29

    invoke-virtual {v5, v4, v7, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v1, v3, [F

    fill-array-data v1, :array_2a

    invoke-virtual {v5, v4, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    if-eqz v10, :cond_7

    move v1, v14

    goto :goto_3

    :cond_7
    move v1, v13

    :goto_3
    iput v1, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->buttonLockScreenFadeInAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_8
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->plmn:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    new-array v4, v3, [F

    fill-array-data v4, :array_2b

    invoke-virtual {v1, v2, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->plmn:Landroid/view/ViewGroup;

    if-eqz v2, :cond_a

    new-array v4, v3, [F

    fill-array-data v4, :array_2c

    invoke-virtual {v1, v2, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->plmn:Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    new-array v4, v3, [F

    fill-array-data v4, :array_2d

    invoke-virtual {v1, v2, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    :cond_b
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->plmn:Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    new-array v4, v3, [F

    fill-array-data v4, :array_2e

    invoke-virtual {v1, v2, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    :cond_c
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->carrierFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz v1, :cond_f

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v3, [F

    fill-array-data v4, :array_2f

    invoke-virtual {v2, v1, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v4, v3, [F

    fill-array-data v4, :array_30

    invoke-virtual {v2, v1, v9, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-instance v4, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$1;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeInRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v3, [F

    fill-array-data v4, :array_31

    invoke-virtual {v2, v1, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v4, v3, [F

    fill-array-data v4, :array_32

    invoke-virtual {v2, v1, v9, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-instance v4, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$2;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$2;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeInLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v3, [F

    fill-array-data v4, :array_33

    invoke-virtual {v2, v1, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v4, v3, [F

    fill-array-data v4, :array_34

    invoke-virtual {v2, v1, v9, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeOutLeftAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v3, [F

    fill-array-data v4, :array_35

    invoke-virtual {v2, v1, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v4, v3, [F

    fill-array-data v4, :array_36

    invoke-virtual {v2, v1, v9, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeOutRightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v3, [F

    fill-array-data v4, :array_37

    invoke-virtual {v2, v1, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v4, v3, [F

    fill-array-data v4, :array_38

    invoke-virtual {v2, v1, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v4, :cond_d

    move v5, v14

    goto :goto_4

    :cond_d
    move v5, v13

    :goto_4
    iput v5, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    new-instance v5, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$3;-><init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V

    iput-object v5, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeInDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_39

    invoke-virtual {v2, v1, v11, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    if-eqz v4, :cond_e

    move v10, v14

    goto :goto_5

    :cond_e
    move v10, v13

    :goto_5
    iput v10, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainerFadeOutDownAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_f
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3cea0000    # -150.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x43160000    # 150.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x43960000    # 300.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x43960000    # 300.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        -0x3c6a0000    # -300.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        -0x3c6a0000    # -300.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        -0x3cea0000    # -150.0f
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x43160000    # 150.0f
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x43160000    # 150.0f
    .end array-data

    :array_15
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x0
        -0x3c6a0000    # -300.0f
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        -0x3c6a0000    # -300.0f
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x43960000    # 300.0f
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1c
    .array-data 4
        0x43960000    # 300.0f
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        0x41700000    # 15.0f
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_20
    .array-data 4
        -0x3e900000    # -15.0f
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data

    :array_23
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x0
        -0x3e900000    # -15.0f
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_26
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_29
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2d
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_30
    .array-data 4
        -0x3e900000    # -15.0f
        0x0
    .end array-data

    :array_31
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_32
    .array-data 4
        0x41700000    # 15.0f
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x0
        -0x3e900000    # -15.0f
    .end array-data

    :array_35
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data

    :array_37
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_38
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
