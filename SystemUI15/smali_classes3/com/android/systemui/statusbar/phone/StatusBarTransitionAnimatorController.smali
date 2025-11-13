.class public final Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# static fields
.field public static final ANIMATION_DELAY_ICON_FADE_IN:J


# instance fields
.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final displayId:I

.field public hideIconsDuringLaunchAnimation:Z

.field public final isLaunchForActivity:Z

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v0, v0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    const/16 v2, 0x140

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const/16 v2, 0x32

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const/16 v2, 0x30

    int-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->ANIMATION_DELAY_ICON_FADE_IN:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->displayId:I

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->isLaunchForActivity:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->hideIconsDuringLaunchAnimation:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZ)V

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    return-object p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    move-result-object p0

    return-object p0
.end method

.method public final isBelowAnimatingWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isBelowAnimatingWindow()Z

    move-result p0

    return p0
.end method

.method public final isDialogLaunch()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isDialogLaunch()Z

    move-result p0

    return p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p0

    return p0
.end method

.method public final onIntentStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onIntentStarted(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->setIsLaunchingActivity(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->collapseOnMainThread()V

    :goto_0
    return-void
.end method

.method public final onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-static {p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->setIsLaunchingActivity(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p1, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->isLaunchForActivity:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->onClosingFinished$1()V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/systemui/shade/ShadeController;->collapseShade(Z)V

    :goto_1
    return-void
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->setIsLaunchingActivity(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->onClosingFinished$1()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->instantCollapseShade()V

    :cond_2
    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    sget-object p1, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->ANIMATION_DELAY_ICON_FADE_IN:J

    const-wide/16 v4, 0x64

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->hideIconsDuringLaunchAnimation:Z

    if-eq p1, p3, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->hideIconsDuringLaunchAnimation:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->displayId:I

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_1
    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->setIsLaunchingActivity(Z)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v0, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    long-to-int p1, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, p1}, Lcom/android/systemui/shade/ShadeController;->collapseWithDuration(I)V

    :cond_0
    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
