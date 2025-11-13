.class public final Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition;
.super Landroid/transition/TransitionSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    sget-object p3, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v0, p1, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->type:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    new-instance p3, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V

    invoke-virtual {p0, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_1

    :cond_0
    iget-object p1, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/DefaultClockSteppingTransition;-><init>(Lcom/android/systemui/plugins/clocks/ClockController;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_2
    :goto_1
    return-void
.end method
