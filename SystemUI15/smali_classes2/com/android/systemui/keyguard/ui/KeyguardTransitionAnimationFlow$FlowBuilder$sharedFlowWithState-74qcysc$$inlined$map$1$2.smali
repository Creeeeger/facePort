.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $chunks$inlined:F

.field public final synthetic $interpolator$inlined:Landroid/view/animation/Interpolator;

.field public final synthetic $name$inlined:Ljava/lang/String;

.field public final synthetic $onCancel$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onFinish$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStart$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStep$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $start$inlined:F

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$start$inlined:F

    iput p5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$chunks$inlined:F

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    iput-object p10, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$name$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    new-instance p2, Lcom/android/systemui/keyguard/ui/StateToValue;

    iget-object v2, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v4, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v10, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    goto :goto_1

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$start$inlined:F

    iget v5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$chunks$inlined:F

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->access$sharedFlowWithState_74qcysc$stepToValue(FFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/shared/model/TransitionStep;)Ljava/lang/Float;

    move-result-object v6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$start$inlined:F

    iget v5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$chunks$inlined:F

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->access$sharedFlowWithState_74qcysc$stepToValue(FFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/shared/model/TransitionStep;)Ljava/lang/Float;

    move-result-object v6

    :cond_7
    :goto_1
    iget-object v4, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-direct {p2, v2, v4, v10, v6}, Lcom/android/systemui/keyguard/ui/StateToValue;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/TransitionState;Ljava/lang/Float;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->logger:Lcom/android/keyguard/logging/KeyguardTransitionAnimationLogger;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$name$inlined:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/systemui/keyguard/ui/StateToValue;->value:Ljava/lang/Float;

    invoke-virtual {v2, v4, p1, v5}, Lcom/android/keyguard/logging/KeyguardTransitionAnimationLogger;->logTransitionStep(Ljava/lang/String;Lcom/android/systemui/keyguard/shared/model/TransitionStep;Ljava/lang/Float;)V

    iput v3, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
