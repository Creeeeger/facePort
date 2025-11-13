.class public final Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;
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

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

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

    new-instance v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    aget-object v7, v4, v3

    const/4 v8, 0x2

    aget-object v9, v4, v8

    const/4 v10, 0x3

    aget-object v11, v4, v10

    const/4 v12, 0x4

    aget-object v12, v4, v12

    const/4 v13, 0x5

    aget-object v13, v4, v13

    const/4 v14, 0x6

    aget-object v14, v4, v14

    const/4 v15, 0x7

    aget-object v4, v4, v15

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    check-cast v11, Lcom/android/systemui/power/shared/model/ScreenPowerState;

    check-cast v9, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    check-cast v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    check-cast v6, Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    sget-object v15, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/16 v5, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eq v15, v3, :cond_9

    if-eq v15, v8, :cond_5

    if-ne v15, v10, :cond_4

    cmpl-float v8, v12, v17

    if-gtz v8, :cond_3

    cmpl-float v8, v14, v17

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v8, v16

    goto/16 :goto_2

    :cond_3
    :goto_0
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_2

    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_5
    sget-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v7, v8, :cond_6

    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    cmpl-float v8, v13, v17

    if-lez v8, :cond_8

    sget-object v8, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_TURNING_ON:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    if-ne v11, v8, :cond_7

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_7
    iget-object v8, v9, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    if-ne v8, v10, :cond_2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_8
    cmpg-float v5, v13, v17

    if-nez v5, :cond_2

    cmpg-float v5, v4, v17

    if-nez v5, :cond_2

    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    sget-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v7, v8, :cond_a

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_a
    cmpl-float v8, v12, v17

    if-gtz v8, :cond_c

    cmpl-float v8, v14, v17

    if-lez v8, :cond_b

    goto :goto_1

    :cond_b
    cmpg-float v5, v12, v17

    if-nez v5, :cond_2

    cmpg-float v5, v14, v17

    if-nez v5, :cond_2

    cmpg-float v5, v4, v17

    if-nez v5, :cond_2

    new-instance v8, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_c
    :goto_1
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    :goto_2
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->visibility:I

    if-ne v10, v5, :cond_d

    goto :goto_3

    :cond_d
    move-object/from16 v16, v8

    :goto_3
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->visibility:I

    iget-object v9, v9, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " => "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": sb: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | cks: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | ts: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | sps: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | lsse: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " | lse: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " | qe: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " | sba: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "QSScrimViewSwitch"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    iput v5, v4, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->visibility:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_4

    :cond_e
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->visibility:I

    :goto_4
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    iput v3, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$special$$inlined$combine$1$3;->label:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_f

    return-object v1

    :cond_f
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
