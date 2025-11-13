.class public final Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;

    iget-object v6, v5, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    sget-wide v7, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel;->FROM_GLANCEABLE_HUB_DURATION:J

    sget-object v15, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    new-instance v9, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$dreamOverlayTranslationX$1$1;

    invoke-direct {v9, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$dreamOverlayTranslationX$1$1;-><init>(I)V

    new-instance v13, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$dreamOverlayTranslationX$1$2;

    invoke-direct {v13, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$dreamOverlayTranslationX$1$2;-><init>(I)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    const-string v16, "GLANCEABLE_HUB->LOCKSCREEN: dreamOverlayTranslationX"

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x2c

    invoke-static/range {v6 .. v17}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlow-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v4

    iput v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/GlanceableHubToDreamingTransitionViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
