.class public final Lcom/android/systemui/unfold/FoldAodAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public alwaysOnEnabled:Z

.field public cancelAnimation:Ljava/lang/Runnable;

.field public final context:Landroid/content/Context;

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

.field public final foldTransitionInteractor:Ldagger/Lazy;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public isAnimationPlaying:Z

.field public isFoldHandled:Z

.field public isFolded:Z

.field public isScrimOpaque:Z

.field public final keyguardInteractor:Ldagger/Lazy;

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public pendingScrimReadyCallback:Ljava/lang/Runnable;

.field public shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public shouldPlayAnimation:Z

.field public final startAnimationRunnable:Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;

.field public final statusListeners:Ljava/util/ArrayList;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/internal/util/LatencyTracker;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Landroid/content/Context;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p4, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p5, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p6, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p7, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->keyguardInteractor:Ldagger/Lazy;

    iput-object p8, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldTransitionInteractor:Ldagger/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFoldHandled:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    new-instance p1, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->startAnimationRunnable:Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getShadeFoldAnimator$1()Lcom/android/systemui/shade/ShadeFoldAnimator;
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeViewController;->getShadeFoldAnimator()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    iget-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldTransitionInteractor:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;

    invoke-interface {p2}, Lcom/android/systemui/shade/ShadeViewController;->getShadeFoldAnimator()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p2, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p1, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->parentAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    iget-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    new-instance p2, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    iget-object p3, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {p1, p3, p2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final isAnimationPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    return p0
.end method

.method public final isKeyguardHideDelayed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    return p0
.end method

.method public final onAlwaysOnChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->alwaysOnEnabled:Z

    return-void
.end method

.method public final onScrimOpaqueChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isScrimOpaque:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->pendingScrimReadyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->pendingScrimReadyCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->cancelAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator$1()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeFoldAnimator;->cancelFoldToAodAnimation()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setAnimationState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;

    invoke-interface {p1}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;->onFoldToAodAnimationChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final shouldAnimateClockChange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldAnimateDozingChange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldDelayDisplayDozeTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    return p0
.end method

.method public final shouldPlayAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    return p0
.end method

.method public final shouldShowAodIconsWhenShade()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    return p0
.end method

.method public final shouldStartAnimation()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->alwaysOnEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v0, "animator_duration_scale"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startAnimation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldStartAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator$1()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeFoldAnimator;->prepareFoldToAodAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    :goto_0
    return v0
.end method
