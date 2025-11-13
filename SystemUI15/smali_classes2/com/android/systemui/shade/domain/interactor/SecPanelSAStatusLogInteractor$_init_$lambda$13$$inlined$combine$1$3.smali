.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;
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
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    aget-object v6, v4, v3

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x3

    aget-object v8, v4, v8

    const/4 v9, 0x4

    aget-object v9, v4, v9

    const/4 v10, 0x5

    aget-object v4, v4, v10

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-string v3, "QPBSE1004 => SS: "

    move-object/from16 v16, v1

    const-string v1, " : SK: "

    invoke-static {v3, v4, v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecPanelSAStatusLogInteractor"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 p1, v2

    const-string v2, "QPBSE1004 => WDS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : WDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "QPBSE1004 => HSS: "

    const-string v2, " : HSK: "

    invoke-static {v1, v12, v13, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v4, v4, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfss:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    const-string v2, "QPP101"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "open_quick_panel_from_status_bar_in_shade"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v4, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfss:J

    invoke-static {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v5, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfsk:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_quick_panel_from_status_bar_in_keyguard"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfsk:J

    invoke-static {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v5, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfwds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    const/4 v1, 0x0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_quick_panel_from_wipe_down_in_shade"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfwds:J

    invoke-static {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_7
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v5, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfwdk:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    const/4 v1, 0x0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_quick_panel_from_wipe_down_in_keyguard"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfwdk:J

    invoke-static {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_9
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v5, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfhss:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    const/4 v1, 0x0

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_quick_panel_from_horizontal_swiping_in_shade"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfhss:J

    invoke-static {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_b
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v5, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfhsk:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_0

    :cond_c
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_quick_panel_from_horizontal_swiping_in_keyguard"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->oqpfhsk:J

    invoke-static {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1$3;->label:I

    move-object/from16 v2, p1

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_e

    return-object v1

    :cond_e
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
