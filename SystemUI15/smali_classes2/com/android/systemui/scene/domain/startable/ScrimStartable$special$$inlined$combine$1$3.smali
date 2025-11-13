.class public final Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;
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

.field final synthetic this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/scene/domain/startable/ScrimStartable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

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

    new-instance v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/scene/domain/startable/ScrimStartable;)V

    iput-object p1, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    aget-object v7, v4, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x2

    aget-object v8, v4, v8

    check-cast v8, Lcom/android/compose/animation/scene/SceneKey;

    const/4 v9, 0x3

    aget-object v9, v4, v9

    check-cast v9, Lcom/android/compose/animation/scene/ObservableTransitionState;

    const/4 v10, 0x4

    aget-object v10, v4, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x5

    aget-object v11, v4, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v12, 0x6

    aget-object v12, v4, v12

    check-cast v12, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    const/4 v13, 0x7

    aget-object v13, v4, v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/16 v14, 0x8

    aget-object v14, v4, v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/16 v15, 0x9

    aget-object v4, v4, v15

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v15, v6, 0x1

    sget-object v3, Lcom/android/systemui/scene/shared/model/Scenes;->Bouncer:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v8, v3}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v16

    instance-of v5, v9, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    move-object/from16 v17, v1

    if-eqz v5, :cond_3

    iget-object v1, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    move-object/from16 v18, v2

    move-object v2, v9

    check-cast v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    move/from16 v19, v7

    iget-object v7, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v2, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v18, v2

    move/from16 v19, v7

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    invoke-static {v2, v8}, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->access$isShade(Lcom/android/systemui/scene/domain/startable/ScrimStartable;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v2

    if-eqz v5, :cond_5

    iget-object v3, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    move-object v5, v9

    check-cast v5, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    iget-object v7, v5, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v3, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->access$isShade(Lcom/android/systemui/scene/domain/startable/ScrimStartable;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    iget-object v5, v5, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v3, v5}, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->access$isShade(Lcom/android/systemui/scene/domain/startable/ScrimStartable;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v9, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    if-eqz v7, :cond_7

    if-eqz v5, :cond_6

    check-cast v9, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object v7, v9, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-eqz v15, :cond_9

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    iget-object v8, v12, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->mode:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    if-eq v8, v7, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    iget-object v8, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    iget-object v8, v8, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v8}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    if-eqz v1, :cond_a

    iget-object v1, v2, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway$1()V

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    if-nez v3, :cond_b

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    if-eqz v16, :cond_e

    if-nez v7, :cond_e

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    iget-object v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    iget-object v2, v2, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_6

    :goto_7
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_e
    if-eqz v13, :cond_f

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_f
    if-eqz v2, :cond_10

    if-nez v6, :cond_10

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_10
    if-eqz v14, :cond_11

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_11
    if-eqz v4, :cond_12

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_12
    if-eqz v10, :cond_14

    if-nez v7, :cond_14

    iget-object v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/scene/domain/startable/ScrimStartable;

    if-eqz v1, :cond_13

    iget-object v1, v2, Lcom/android/systemui/scene/domain/startable/ScrimStartable;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway$1()V

    goto :goto_8

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_14
    const/4 v3, 0x0

    if-eqz v5, :cond_16

    if-eqz v15, :cond_15

    if-eqz v11, :cond_15

    if-nez v7, :cond_15

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_15
    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto :goto_5

    :cond_16
    if-eqz v15, :cond_17

    if-nez v7, :cond_17

    if-nez v19, :cond_17

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto/16 :goto_5

    :cond_17
    const/4 v3, 0x0

    if-eqz v15, :cond_18

    if-nez v7, :cond_18

    if-eqz v11, :cond_18

    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto/16 :goto_5

    :cond_18
    new-instance v1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-direct {v1, v2, v7}, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;-><init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V

    goto/16 :goto_5

    :goto_9
    iput v2, v0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$special$$inlined$combine$1$3;->label:I

    move-object/from16 v2, v18

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_19

    return-object v1

    :cond_19
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
