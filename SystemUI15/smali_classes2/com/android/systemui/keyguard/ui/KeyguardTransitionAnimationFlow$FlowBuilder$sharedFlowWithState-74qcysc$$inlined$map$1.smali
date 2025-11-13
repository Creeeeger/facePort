.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $chunks$inlined:F

.field public final synthetic $interpolator$inlined:Landroid/view/animation/Interpolator;

.field public final synthetic $name$inlined:Ljava/lang/String;

.field public final synthetic $onCancel$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onFinish$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStart$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStep$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $start$inlined:F

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$start$inlined:F

    iput p5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$chunks$inlined:F

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    iput-object p10, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$name$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    new-instance v11, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;

    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    iget-object v10, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$name$inlined:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    iget v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$start$inlined:F

    iget v5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$chunks$inlined:F

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlowWithState-74qcysc$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v11, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
