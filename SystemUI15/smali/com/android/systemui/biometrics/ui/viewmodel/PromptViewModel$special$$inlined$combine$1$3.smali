.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;
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

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

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

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget-object v5, v1, v2

    const/4 v6, 0x2

    aget-object v7, v1, v6

    const/4 v8, 0x3

    aget-object v9, v1, v8

    const/4 v10, 0x4

    aget-object v10, v1, v10

    const/4 v11, 0x5

    aget-object v1, v1, v11

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast v10, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    check-cast v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    check-cast v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    check-cast v5, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    check-cast v4, Landroid/graphics/Rect;

    sget-object v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v4, v4, v9

    if-eq v4, v2, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_2

    move v1, v3

    move v4, v1

    :goto_0
    move v5, v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-static {v4, v7, v10, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->access$getHorizontalPadding(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Z)I

    move-result v1

    move v5, v1

    move v1, v3

    move v4, v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-static {v4, v7, v10, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->access$getHorizontalPadding(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Z)I

    move-result v1

    move v4, v3

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isOnePaneNoSensorLandscapeBiometric()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v1, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->mediumTopGuidelinePadding:I

    :goto_1
    move v4, v1

    move v1, v3

    move v5, v1

    :goto_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1$3;->label:I

    invoke-interface {p1, v6, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
