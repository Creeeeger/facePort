.class public final Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $window:Landroid/view/Window;

.field public showAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/view/ViewGroup;ZLandroid/view/Window;)V
    .locals 1

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "extra_animate"

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setTransitionAlpha(F)V

    sget p1, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpg-float p1, p1, p4

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070428

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    goto :goto_0

    :cond_0
    sput p0, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final enterAnimation()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    :cond_0
    return-void
.end method

.method public final resetAnimation()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public final setup()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAllowEnterTransitionOverlap(Z)V

    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/controls/management/WindowTransition;

    sget-object v3, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;

    invoke-direct {v1, v3}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    new-instance v2, Lcom/android/systemui/controls/management/WindowTransition;

    sget-object v4, Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;

    invoke-direct {v2, v4}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    new-instance v2, Lcom/android/systemui/controls/management/WindowTransition;

    invoke-direct {v2, v3}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setReenterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p0

    new-instance v1, Lcom/android/systemui/controls/management/WindowTransition;

    invoke-direct {v1, v4}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method
