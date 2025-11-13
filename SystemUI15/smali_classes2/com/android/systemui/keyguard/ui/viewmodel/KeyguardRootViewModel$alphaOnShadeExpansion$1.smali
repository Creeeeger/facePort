.class final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function7;"
    }
.end annotation


# instance fields
.field synthetic F$0:F

.field synthetic F$1:F

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

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

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p4

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->floatValue()F

    move-result p5

    check-cast p7, Lkotlin/coroutines/Continuation;

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;

    invoke-direct {p6, p7}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->L$0:Ljava/lang/Object;

    iput-boolean p0, p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->Z$0:Z

    iput-boolean p2, p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->Z$1:Z

    iput-boolean p3, p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->Z$2:Z

    iput p4, p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->F$0:F

    iput p5, p6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->F$1:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p6, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->Z$0:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->Z$1:Z

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->Z$2:Z

    iget v5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->F$0:F

    iget v6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->F$1:F

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v4, v1, v3}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    sub-float/2addr v5, v1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v5}, Ljava/lang/Float;-><init>(F)V

    iput v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$alphaOnShadeExpansion$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
