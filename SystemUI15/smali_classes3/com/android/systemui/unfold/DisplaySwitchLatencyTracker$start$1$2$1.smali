.class final Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $foldableDeviceState:Lcom/android/systemui/util/kotlin/WithPrev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/kotlin/WithPrev<",
            "Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;",
            "Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lcom/android/systemui/util/kotlin/WithPrev;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;",
            "Lcom/android/systemui/util/kotlin/WithPrev<",
            "+",
            "Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;",
            "+",
            "Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iput-object p2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->$foldableDeviceState:Lcom/android/systemui/util/kotlin/WithPrev;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;

    iget-object v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->$foldableDeviceState:Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lcom/android/systemui/util/kotlin/WithPrev;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->label:I

    const-wide/16 v3, 0x1000

    const/4 v5, 0x2

    const-string v6, "DisplaySwitchLatency"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v9, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->J$0:J

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->I$0:I

    iget-object v11, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/util/time/SystemClock;

    iget-object v12, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    iget-object v13, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$0:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Lkotlinx/coroutines/flow/FlowCollector;

    new-instance v2, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    move-object v14, v2

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v36, 0x1fffff

    const/16 v37, 0x0

    invoke-direct/range {v14 .. v37}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;-><init>(IIIIILjava/util/Set;IIIIILjava/util/Set;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v9, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget-object v10, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->$foldableDeviceState:Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-virtual {v10}, Lcom/android/systemui/util/kotlin/WithPrev;->getNewValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    invoke-static {v9, v10}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->access$toStatsInt(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;)I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget-object v11, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->$foldableDeviceState:Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-virtual {v11}, Lcom/android/systemui/util/kotlin/WithPrev;->getPreviousValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    invoke-static {v10, v11}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->access$toStatsInt(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;)I

    move-result v10

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "fromFoldableDeviceState="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v4, v6, v11}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const v19, 0x1ffffd

    move-object v14, v2

    move/from16 v16, v10

    invoke-static/range {v14 .. v19}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->copy$default(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;IIIII)Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    move-result-object v12

    iget-object v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget-object v11, v2, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v11}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v14

    :try_start_1
    sget-wide v3, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->SCREEN_EVENT_TIMEOUT:J

    new-instance v10, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;

    invoke-direct {v10, v2, v9, v8}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;ILkotlin/coroutines/Continuation;)V

    iput-object v13, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$2:Ljava/lang/Object;

    iput v9, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->I$0:I

    iput-wide v14, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->J$0:J

    iput v7, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->label:I

    invoke-static {v3, v4, v10, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move v2, v9

    move-wide v9, v14

    :goto_0
    move-object/from16 v18, v12

    goto :goto_1

    :catch_0
    move v2, v9

    move-wide v9, v14

    :catch_1
    const-string v3, "Wait for display switch timed out"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    invoke-interface {v11}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v9, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    long-to-int v3, v3

    sget v4, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->$r8$clinit:I

    invoke-virtual {v9}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->isAsleepDueToFold()Z

    move-result v4

    iget-object v10, v9, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    if-eqz v4, :cond_5

    iget-object v4, v10, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isAodAvailable:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->isAsleepDueToFold()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v10, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isAodAvailable:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v7, 0x9

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "toFoldableDeviceState="

    const-string v9, ", toState="

    invoke-static {v2, v7, v4, v9}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v9, 0x1000

    invoke-static {v9, v10, v6, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_7
    const v23, 0x1ffe7e

    const/16 v20, 0x0

    move/from16 v19, v3

    move/from16 v21, v2

    move/from16 v22, v7

    invoke-static/range {v18 .. v23}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->copy$default(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;IIIII)Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    move-result-object v2

    iput-object v8, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1;->label:I

    invoke-interface {v13, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
