.class public final Lcom/android/systemui/animation/AnimatedDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

.field public final callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

.field public final controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

.field public final decorView$delegate:Lkotlin/Lazy;

.field public decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field public final dialog:Landroid/app/Dialog;

.field public dialogContentWithBackground:Landroid/view/ViewGroup;

.field public dismissRequested:Z

.field public exitAnimationDisabled:Z

.field public final featureFlags:Lcom/android/systemui/animation/AnimationFeatureFlags;

.field public final forceDisableSynchronization:Z

.field public hasInstrumentedJank:Z

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public isDismissing:Z

.field public isLaunching:Z

.field public isOriginalDialogViewLaidOut:Z

.field public isSourceDrawnInDialog:Z

.field public final onDialogDismissed:Lkotlin/jvm/functions/Function1;

.field public originalDialogBackgroundColor:I

.field public final parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

.field public final transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;ZLcom/android/systemui/animation/AnimationFeatureFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/TransitionAnimator;",
            "Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroid/app/Dialog;",
            "Z",
            "Lcom/android/systemui/animation/AnimatedDialog;",
            "Z",
            "Lcom/android/systemui/animation/AnimationFeatureFlags;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog;->callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p4, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    iput-object p5, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    iput-object p8, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    iput-boolean p9, p0, Lcom/android/systemui/animation/AnimatedDialog;->forceDisableSynchronization:Z

    iput-object p10, p0, Lcom/android/systemui/animation/AnimatedDialog;->featureFlags:Lcom/android/systemui/animation/AnimationFeatureFlags;

    new-instance p1, Lcom/android/systemui/animation/AnimatedDialog$decorView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/AnimatedDialog$decorView$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorView$delegate:Lkotlin/Lazy;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    if-eqz p7, :cond_0

    new-instance p1, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    invoke-direct {p1}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;ZLcom/android/systemui/animation/AnimationFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/animation/AnimatedDialog;-><init>(Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;ZLcom/android/systemui/animation/AnimationFeatureFlags;)V

    return-void
.end method

.method public static final access$maybeStartLaunchAnimation(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isSourceDrawnInDialog:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isOriginalDialogViewLaidOut:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    sget-object v1, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$1;->INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$startAnimation$1;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/animation/AnimatedDialog;->findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final getDecorView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final moveSourceDrawingToDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$moveSourceDrawingToDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$moveSourceDrawingToDialog$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->startDrawingInOverlayOf(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$moveSourceDrawingToDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$moveSourceDrawingToDialog$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/animation/AnimatedDialog;->synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onDialogDismissed()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->dismissRequested:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isDismissing:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isDismissing:Z

    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->callback:Lcom/android/systemui/animation/DialogTransitionAnimator$Callback;

    check-cast v1, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$1;->val$dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "DialogTransitionAnimator.Callback"

    const-string v5, "dreamManager.isDreaming failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    :goto_0
    if-eqz v1, :cond_6

    :cond_5
    :goto_1
    move v1, v3

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->shouldAnimateExit()Z

    move-result v1

    :goto_2
    if-nez v1, :cond_7

    const-string v1, "DialogTransitionAnimator"

    const-string v3, "Skipping animation of dialog into the source"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->onExitAnimationCancelled()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    :goto_3
    return-void
.end method

.method public final prepareForStackDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()V

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final startAnimation(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    if-eqz p3, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->createTransitionController()Lcom/android/systemui/animation/TransitionAnimator$Controller;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-object v9, v7, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-object v9, v7, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->createExitController()Lcom/android/systemui/animation/TransitionAnimator$Controller;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    invoke-interface {v2}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;

    move-object v0, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/TransitionAnimator$Controller;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/animation/TransitionAnimator$State;)V

    iget v6, v7, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    sget-object v0, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    iget-object v3, v7, Lcom/android/systemui/animation/AnimatedDialog;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    const/4 v7, 0x1

    const/4 v0, 0x0

    move-object v4, v9

    move-object v5, v8

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/animation/TransitionAnimator;->startAnimation(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/TransitionAnimator$State;IZZ)Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;

    return-void
.end method

.method public final synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->forceDisableSynchronization:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, p1}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
