.class final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;
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
.field synthetic F$0:F

.field synthetic F$1:F

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

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;

    invoke-direct {p3, p4}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-boolean p0, p3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->Z$0:Z

    iput p1, p3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->F$0:F

    iput p2, p3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->F$1:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->Z$0:Z

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->F$0:F

    iget p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;->F$1:F

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr p0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sub-float p1, v2, v0

    sub-float/2addr v2, p0

    mul-float/2addr v2, p1

    :goto_0
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, v2}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
