.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;
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

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

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

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

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

    aget-object v10, v4, v10

    const/4 v11, 0x6

    aget-object v4, v4, v11

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    check-cast v6, Ljava/lang/Number;

    move-object/from16 v16, v1

    move-object/from16 p1, v2

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-string v15, "ONPF => STATUSBAR+UNLOCK: "

    const-string v0, " | STATUSBAR+LOCK: "

    invoke-static {v15, v5, v6, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " | LOCK: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " | SWIPE DOWN ON QS: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " | SWIPE RIGHT ON QS: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " | HUN: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " : ETC: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "SecPanelSAStatusLogInteractor"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-object/from16 v15, p0

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    move-wide/from16 v18, v11

    iget-wide v11, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfs:J

    cmp-long v0, v5, v11

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, v17

    :goto_0
    const-string v6, "QPN003"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    iget-object v0, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_notification_panel_from_statusbar"

    invoke-interface {v0, v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v11, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfs:J

    invoke-static {v0, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v5, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v11, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfsol:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_notification_panel_from_statusbar_on_lock"

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v0, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfsol:J

    invoke-static {v2, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v5, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v7, v5, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfl:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "open_notification_panel_from_lockscreen"

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v0, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfl:J

    invoke-static {v2, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v3, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfsoq:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "open_notification_panel_from_statusbar_on_qs"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v0, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfsoq:J

    invoke-static {v2, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v3, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfq:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "open_notification_panel_from_qs"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v0, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfq:J

    invoke-static {v2, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_b
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v3, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfh:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "open_notification_panel_from_hun"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v0, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfh:J

    invoke-static {v2, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Ljava/lang/Long;

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-wide v3, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfe:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    const/4 v5, 0x0

    goto :goto_1

    :cond_e
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "open_notification_panel_from_etc"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-wide v0, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->onpfe:J

    invoke-static {v2, v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V

    :cond_f
    iget-object v0, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x1

    iput v1, v15, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2$3;->label:I

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v15}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_10

    return-object v1

    :cond_10
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
