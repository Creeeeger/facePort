.class final Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;
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

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

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

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    check-cast p2, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    check-cast p3, Lcom/android/systemui/keyguard/ui/StateToValue;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p5, Lcom/android/systemui/keyguard/ui/StateToValue;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;

    invoke-direct {p4, p6}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;-><init>(Lkotlin/coroutines/Continuation;)V

    iput p0, p4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->F$0:F

    iput-object p2, p4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->L$1:Ljava/lang/Object;

    iput p1, p4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->F$1:F

    iput-object p5, p4, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->L$2:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p4, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->F$0:F

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/keyguard/ui/StateToValue;

    iget v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->F$1:F

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$1$6;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/ui/StateToValue;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/StateToValue;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/shared/model/TransitionState;->isTransitioning()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/StateToValue;->value:Ljava/lang/Float;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/keyguard/ui/StateToValue;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/shared/model/TransitionState;->isTransitioning()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/android/systemui/keyguard/ui/StateToValue;->value:Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_1
    iget p0, v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->translationY:I

    int-to-float p0, p0

    add-float/2addr v4, p0

    goto :goto_0

    :cond_2
    iget p0, v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->translationY:I

    int-to-float p0, p0

    add-float/2addr p0, v2

    add-float v4, p0, p1

    :cond_3
    :goto_0
    float-to-int p0, v4

    iget p1, v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->translationX:I

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    iget v2, v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->scale:F

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->scaleClockOnly:Z

    invoke-direct {v1, p1, p0, v2, v0}, Lcom/android/systemui/keyguard/shared/model/BurnInModel;-><init>(IIFZ)V

    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
