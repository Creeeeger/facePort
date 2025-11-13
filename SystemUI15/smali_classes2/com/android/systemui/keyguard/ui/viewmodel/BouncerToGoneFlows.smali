.class public final Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animationFlow:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

.field public final primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->animationFlow:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    return-void
.end method


# virtual methods
.method public final createScrimAlphaFlow-KLykuaI(JLcom/android/systemui/keyguard/shared/model/KeyguardState;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;
    .locals 11

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->animationFlow:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->setup-VtjQ1oo(JLcom/android/systemui/keyguard/shared/model/Edge;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {p3, v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v2

    iget-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p3, p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow-KLykuaI$$inlined$map$1;

    invoke-direct {v0, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow-KLykuaI$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance v10, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow-KLykuaI$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    move-object v0, v10

    move-wide v3, p1

    move-object v6, p0

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow-KLykuaI$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {p3, v10}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    return-object p0
.end method

.method public final showAllNotifications-VtjQ1oo(JLcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/Flow;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v4, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->animationFlow:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    move-wide/from16 v6, p1

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->setup-VtjQ1oo(JLcom/android/systemui/keyguard/shared/model/Edge;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$1;

    invoke-direct {v8, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v11, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;

    invoke-direct {v11, v2, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;)V

    sget-object v12, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$3;

    sget-object v13, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$4;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$4;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v9, 0x0

    const/16 v16, 0xc4

    move-wide/from16 v6, p1

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications-VtjQ1oo$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications-VtjQ1oo$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
