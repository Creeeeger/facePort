.class final Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;
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
.field final synthetic $isOnStartSide:Z

.field synthetic F$0:F

.field synthetic I$0:I

.field synthetic I$1:I

.field label:I


# direct methods
.method public constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->$isOnStartSide:Z

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;

    iget-boolean p0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->$isOnStartSide:Z

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->F$0:F

    iput p2, v0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->I$0:I

    iput p3, v0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->I$1:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->F$0:F

    iget v0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->I$0:I

    iget v1, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->I$1:I

    iget-boolean p0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;->$isOnStartSide:Z

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    int-to-float v0, v0

    int-to-float v2, v2

    sub-float/2addr v2, p1

    mul-float/2addr v2, v0

    int-to-float p0, p0

    mul-float/2addr v2, p0

    int-to-float p0, v1

    mul-float/2addr v2, p0

    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, v2}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
