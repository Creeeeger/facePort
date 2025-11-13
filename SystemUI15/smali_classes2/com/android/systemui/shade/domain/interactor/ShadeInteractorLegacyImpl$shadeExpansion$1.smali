.class final Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;
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

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

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

    check-cast p2, Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p3

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;

    invoke-direct {p5, p6}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput p0, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->F$0:F

    iput-object p2, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->L$0:Ljava/lang/Object;

    iput p1, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->F$1:F

    iput p3, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->F$2:F

    iput-boolean p4, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p5, p0}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->F$0:F

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    iget v1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->F$1:F

    iget v2, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->F$2:F

    iget-boolean p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;->Z$0:Z

    sget-object v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v0, v3, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    cmpl-float p0, v2, p0

    if-lez p0, :cond_2

    sub-float p1, v4, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
