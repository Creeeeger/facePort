.class final Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field synthetic F$0:F

.field synthetic F$1:F

.field synthetic F$2:F

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p0

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p3

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p4

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;

    invoke-direct {p5, p6}, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$0:Ljava/lang/Object;

    iput-object p2, p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$1:Ljava/lang/Object;

    iput p0, p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->F$0:F

    iput p3, p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->F$1:F

    iput p4, p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->F$2:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p5, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget v6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->F$0:F

    iget v7, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->F$1:F

    iget v8, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->F$2:F

    iget-object v9, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v1, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v1, v10, :cond_4

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v9, v5, :cond_4

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_4
    if-ne v1, v10, :cond_5

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v9, v1, :cond_5

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v7}, Ljava/lang/Float;-><init>(F)V

    iput-object v11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v8}, Ljava/lang/Float;-><init>(F)V

    iput-object v11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
