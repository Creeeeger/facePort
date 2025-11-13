.class final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;
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
.field synthetic F$0:F

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->F$0:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->F$0:F

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->intEvaluator:Landroid/animation/IntEvaluator;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iget v5, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;->x:I

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->intEvaluator:Landroid/animation/IntEvaluator;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    iget v7, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;->y:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->floatEvaluator:Landroid/animation/FloatEvaluator;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Float;

    iget p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;->progress:F

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, v0, v5, v4}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;-><init>(IIF)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
