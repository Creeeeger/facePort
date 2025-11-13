.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field final synthetic $translationDistance:I

.field synthetic F$0:F

.field synthetic F$1:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->$translationDistance:I

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;

    iget p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->$translationDistance:I

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->F$0:F

    iput p3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->F$1:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

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

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->F$0:F

    iget v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->F$1:F

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    cmpg-float v6, v1, v8

    if-nez v6, :cond_4

    :goto_1
    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    cmpg-float v8, v4, v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    cmpg-float v4, v4, v5

    if-nez v4, :cond_6

    if-eqz v6, :cond_6

    :goto_3
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v5}, Ljava/lang/Float;-><init>(F)V

    iput v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_6
    if-nez v6, :cond_7

    iget v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->$translationDistance:I

    sget-object v4, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v3, v7, v1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
