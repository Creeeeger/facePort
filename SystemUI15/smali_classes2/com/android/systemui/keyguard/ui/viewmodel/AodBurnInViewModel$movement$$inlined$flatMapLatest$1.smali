.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;
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
.field final synthetic $params$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->$params$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->$params$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardTranslationY:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v8, v6, v5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->$params$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    iget-object v9, v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v9, v10}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$burnIn$$inlined$map$1;

    invoke-direct {v10, v9}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$burnIn$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object v9, v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->burnInInteractor:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    const v11, 0x7f07019f

    invoke-virtual {v9, v11}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnIn(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$burnIn$2;

    invoke-direct {v11, v5, v6, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$burnIn$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v5, v10, v9, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$2;

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v9, v6, v5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->goneToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v6, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v10, 0x258

    invoke-static {v10, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v15

    const/16 v10, 0x1f4

    invoke-static {v10, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v12

    sget-object v20, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v14, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel$enterFromTopTranslationY$1;

    invoke-direct {v14, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel$enterFromTopTranslationY$1;-><init>(I)V

    sget-object v19, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel$enterFromTopTranslationY$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel$enterFromTopTranslationY$2;

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v17, 0x0

    const/16 v22, 0x98

    iget-object v11, v5, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-static/range {v11 .. v22}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlowWithState-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$3;

    invoke-direct {v5, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v11, v5, v4}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->occludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;->lockscreenTranslationY:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$4;

    invoke-direct {v5, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$4;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v12, v5, v4}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->aodToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->$params$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-static {v10, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v15

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$translationY$1;

    invoke-direct {v6, v13}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$translationY$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v10, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$translationY$2;

    invoke-direct {v10, v13, v5}, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel$translationY$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function0;)V

    const/16 v22, 0x0

    const/16 v25, 0xf4

    iget-object v14, v4, Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v20, v10

    invoke-static/range {v14 .. v25}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;->sharedFlowWithState-74qcysc$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$5;

    invoke-direct {v5, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$5;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v6, v5, v4}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v13, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;

    invoke-direct {v13, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v10, v11

    move-object v11, v12

    move-object v12, v6

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v4

    iput v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;->label:I

    invoke-static {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
