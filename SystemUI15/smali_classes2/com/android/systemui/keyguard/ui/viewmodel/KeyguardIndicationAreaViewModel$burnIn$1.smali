.class final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;
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

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;

    invoke-direct {p2, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;->L$0:Ljava/lang/Object;

    iput p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;->F$0:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    iget p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel$burnIn$1;->F$0:F

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/BurnInModel;

    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->translationX:I

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    iget v2, p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->translationY:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int p0, v2

    iget v2, p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->scale:F

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/BurnInModel;->scaleClockOnly:Z

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/systemui/keyguard/shared/model/BurnInModel;-><init>(IIFZ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
