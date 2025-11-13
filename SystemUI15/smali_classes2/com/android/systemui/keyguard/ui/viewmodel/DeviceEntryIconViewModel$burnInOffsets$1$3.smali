.class final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;
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

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    check-cast p3, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;

    invoke-direct {p0, p4}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->L$2:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v4, 0x2

    iget-object v1, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    const/4 p1, 0x0

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    invoke-direct {v0, p1, p1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;-><init>(IIF)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    invoke-direct {v0, p1, p1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;-><init>(IIF)V

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
