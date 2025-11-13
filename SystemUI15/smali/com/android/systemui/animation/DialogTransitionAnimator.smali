.class public final Lcom/android/systemui/animation/DialogTransitionAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

.field public static final TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;


# instance fields
.field public final callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

.field public final featureFlags:Lcom/android/systemui/animation/AnimationFeatureFlags;

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final isForTesting:Z

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final openedDialogs:Ljava/util/HashSet;

.field public final transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/animation/DialogTransitionAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sput-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, v1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    iget-object v3, v1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/animation/DialogTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;)V
    .locals 9

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/DialogTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 9

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/DialogTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;Lcom/android/systemui/animation/TransitionAnimator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

    iput-object p3, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p4, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->featureFlags:Lcom/android/systemui/animation/AnimationFeatureFlags;

    iput-object p5, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    iput-boolean p6, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->isForTesting:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/animation/TransitionAnimator;

    sget-object v1, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-object v2, Lcom/android/systemui/animation/DialogTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    move-object v4, p1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/animation/TransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/TransitionAnimator$Timings;Lcom/android/systemui/animation/TransitionAnimator$Interpolators;)V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    move-object v8, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v9, v0

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/animation/DialogTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/AnimationFeatureFlags;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method

.method public static createActivityTransitionController$default(Lcom/android/systemui/animation/DialogTransitionAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v3, v3, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->createActivityTransitionController(Lcom/android/systemui/animation/AnimatedDialog;Ljava/lang/Integer;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    move-result-object v2

    :goto_2
    return-object v2
.end method


# virtual methods
.method public final createActivityTransitionController(Lcom/android/systemui/animation/AnimatedDialog;Ljava/lang/Integer;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    iget-object v0, p1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

    check-cast p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;->val$alternateBouncerInteractor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/16 v3, 0x1c

    invoke-static {v1, p0, p2, v3}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    new-instance p2, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/app/Dialog;Lcom/android/systemui/animation/AnimatedDialog;)V

    return-object p2

    :cond_3
    :goto_0
    return-object v2
.end method

.method public final disableAllCurrentDialogsExitAnimations()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/AnimatedDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dismissStack(Landroid/app/Dialog;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v1, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/animation/AnimatedDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V
    .locals 15

    move-object v0, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v4, v4, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    move-object v12, v2

    check-cast v12, Lcom/android/systemui/animation/AnimatedDialog;

    if-eqz v12, :cond_4

    iget-object v1, v12, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getCuj()Lcom/android/systemui/animation/DialogCuj;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v8, v1

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v8, p2

    :goto_3
    iget-object v1, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v2, v2, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    invoke-interface {v2}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getSourceIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getSourceIdentity()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "DialogTransitionAnimator"

    const-string v1, "Not running dialog launch animation from source as it is already expanded into a dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_7
    :goto_4
    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v7, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v9, Lcom/android/systemui/animation/DialogTransitionAnimator$show$animatedDialog$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/animation/DialogTransitionAnimator$show$animatedDialog$1;-><init>(Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    iget-object v5, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    iget-object v6, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

    iget-boolean v13, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->isForTesting:Z

    iget-object v14, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->featureFlags:Lcom/android/systemui/animation/AnimationFeatureFlags;

    move-object v4, v1

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-direct/range {v4 .. v14}, Lcom/android/systemui/animation/AnimatedDialog;-><init>(Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;ZLcom/android/systemui/animation/AnimationFeatureFlags;)V

    iget-object v0, v0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getCuj()Lcom/android/systemui/animation/DialogCuj;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    invoke-interface {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->jankConfigurationBuilder()Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, v2, Lcom/android/systemui/animation/DialogCuj;->tag:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    :cond_8
    iget-object v2, v1, Lcom/android/systemui/animation/AnimatedDialog;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v2, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    iput-boolean v4, v1, Lcom/android/systemui/animation/AnimatedDialog;->hasInstrumentedJank:Z

    :cond_9
    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->create()V

    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_e

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_e

    invoke-virtual {v1}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move-object v7, v3

    move v5, v6

    :goto_5
    if-ge v5, v2, :cond_b

    invoke-virtual {v1}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/animation/AnimatedDialog;->findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    if-eqz v7, :cond_d

    instance-of v2, v7, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The animated ViewGroup with background must implement LaunchableView"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find ViewGroup with background"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v2, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v2}, Lcom/android/systemui/util/DialogKt;->maybeForceFullscreen(Landroid/app/Dialog;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/animation/view/LaunchableFrameLayout;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    iput-object v2, v1, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    :goto_7
    iput-object v7, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v5, 0x7f0a0cf3

    invoke-virtual {v7, v5, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_8

    :cond_f
    const/high16 v2, -0x1000000

    :goto_8
    iput v2, v1, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    move-object v2, v7

    check-cast v2, Lcom/android/systemui/animation/LaunchableView;

    invoke-interface {v2, v4}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setTransitionVisibility(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v5, 0x7f14000e

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v5, 0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    and-int/2addr v5, v8

    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    move v4, v6

    :goto_9
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    not-int v8, v8

    and-int/2addr v5, v8

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/systemui/animation/AnimatedDialog$start$1;

    invoke-direct {v5, v4}, Lcom/android/systemui/animation/AnimatedDialog$start$1;-><init>(Z)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$start$2;

    invoke-direct {v2, v7, v1}, Lcom/android/systemui/animation/AnimatedDialog$start$2;-><init>(Ljava/lang/Object;Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    new-instance v4, Lcom/android/systemui/animation/AnimatedDialog$start$3;

    invoke-direct {v4, v1}, Lcom/android/systemui/animation/AnimatedDialog$start$3;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->featureFlags:Lcom/android/systemui/animation/AnimationFeatureFlags;

    check-cast v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v0, v7, v3, v2, v3}, Lcom/android/systemui/util/DialogKt;->registerAnimationOnBackInvoked$default(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/back/BackAnimationSpec;ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Lcom/android/systemui/animation/AnimatedDialog;->moveSourceDrawingToDialog()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "showFromView must be called from the main thread and dialog must be created in the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v3, v3, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    :cond_2
    if-nez v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Showing dialog "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " normally as the dialog it is shown from was not shown using DialogTransitionAnimator"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DialogTransitionAnimator"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    sget-object p2, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p3}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    :goto_1
    return-void
.end method
