.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;
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
.field final synthetic $animate:Z

.field final synthetic $v:Landroid/view/View;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;",
            "Landroid/view/View;",
            "Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->$animate:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->$v:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->$animate:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "animateChipShow() else case v:"

    const-string v2, "animateChipShow() view:"

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->label:I

    const-string/jumbo v5, "{ChipAnimationController}"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->Z$0:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->Z$0:Z

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v10

    goto/16 :goto_6

    :cond_2
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->Z$0:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/sync/Mutex;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v4, v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMutex:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->$v:Landroid/view/View;

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->$animate:Z

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$2:Ljava/lang/Object;

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->Z$0:Z

    iput v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->label:I

    invoke-virtual {v4, v9, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_4

    return-object v3

    :cond_4
    move/from16 v16, v12

    move-object v12, v4

    move/from16 v4, v16

    :goto_0
    :try_start_2
    sget-object v13, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " animate:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " view_visibility:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$2:Ljava/lang/Object;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->Z$0:Z

    iput v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->label:I

    invoke-static {v11, v10, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$cancelAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move v2, v4

    move-object v4, v10

    move-object v7, v11

    move-object v10, v12

    :goto_1
    :try_start_3
    iget-object v11, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideTransitionView:Landroid/view/View;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->Z$0:Z

    iput v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;->label:I

    const-wide/16 v11, 0x3e8

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    move-object v3, v4

    move-object v4, v7

    move-object v6, v10

    :goto_2
    :try_start_4
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    move-object v7, v4

    move-object v4, v3

    goto :goto_3

    :cond_7
    move-object v6, v10

    :goto_3
    if-eqz v2, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$handleOnGoingCallChipAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Z)V

    goto :goto_4

    :cond_9
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$handleOnGoingActivityChipAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Z)V

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_b
    :goto_5
    :try_start_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->showView(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v6, v12

    :goto_6
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
