.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;
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

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    aget-object v4, v1, v2

    const/4 v5, 0x2

    aget-object v5, v1, v5

    const/4 v6, 0x3

    aget-object v6, v1, v6

    const/4 v7, 0x4

    aget-object v7, v1, v7

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x6

    aget-object v9, v1, v9

    const/4 v10, 0x7

    aget-object v1, v1, v10

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    check-cast v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    check-cast v6, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast v3, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    sget-object v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v10, v6

    if-ne v6, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-static {v1, v3, v4, v5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->access$getSfpsIconViewAsset(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/android/systemui/biometrics/shared/model/DisplayRotation;ZZ)I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    if-eqz v4, :cond_3

    iget-boolean v5, v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->wasConfirmed:Z

    if-eqz v5, :cond_3

    const v1, 0x7f120024

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->_previousIconWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f120020

    goto :goto_1

    :cond_4
    const v1, 0x7f120023

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f12001f

    goto :goto_1

    :cond_6
    const v1, 0x7f120022

    goto :goto_1

    :cond_7
    const v4, 0x7f120021

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f12001e

    goto :goto_1

    :cond_8
    :goto_0
    move v1, v4

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, -0x1

    :goto_1
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2$3;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    return-object v0

    :cond_b
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
