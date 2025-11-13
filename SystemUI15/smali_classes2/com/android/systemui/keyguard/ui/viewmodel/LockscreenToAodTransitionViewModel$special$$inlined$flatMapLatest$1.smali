.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $shadeDependentFlows$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->$shadeDependentFlows$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->$shadeDependentFlows$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->$shadeDependentFlows$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    iget-object v6, v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v5, 0x12c

    sget-object v7, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    sget-object v9, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$1;

    sget-object v14, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$2;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0xdc

    invoke-static/range {v6 .. v17}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    iget-object v6, v6, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->immediatelyTransitionTo(F)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;->transitionFlow(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->$shadeDependentFlows$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->immediatelyTransitionTo(F)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;

    iget-object v7, v6, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v6, 0xc8

    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    sget-object v10, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$3;

    sget-object v15, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$4;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$deviceEntryParentViewAlpha$1$4;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0xdc

    invoke-static/range {v7 .. v18}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/keyguard/ui/viewmodel/ShadeDependentFlows;->transitionFlow(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v4

    :goto_0
    iput v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToAodTransitionViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
