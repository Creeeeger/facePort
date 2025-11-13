.class public final Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Landroid/telephony/SignalStrength;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;

    iget-object p2, p2, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    const-string v4, "getCellSignalStrengths(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/telephony/CellSignalStrength;

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    check-cast v5, Landroid/telephony/CellSignalStrength;

    const/4 v2, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v5

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/telephony/CellSignalStrength;

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v8

    if-eq v8, v7, :cond_6

    move-object v6, v4

    :cond_7
    check-cast v6, Landroid/telephony/CellSignalStrength;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v2

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f142c68

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$signalStrengthDisplayFlow$lambda$1$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
