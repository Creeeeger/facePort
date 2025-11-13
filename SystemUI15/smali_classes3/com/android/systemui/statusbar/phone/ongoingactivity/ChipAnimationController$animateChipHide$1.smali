.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;
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

.field final synthetic $state:I

.field final synthetic $v:Landroid/view/View;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;",
            "Landroid/view/View;",
            "IZ",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$state:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$animate:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$v:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$state:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$animate:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;IZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-string v0, "animateChipHide() view:"

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->Z$0:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->I$0:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->Z$0:Z

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->I$0:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$2:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v8

    move v8, v2

    move-object v2, v9

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMutex:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$v:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$state:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->$animate:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$2:Ljava/lang/Object;

    iput v7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->I$0:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->Z$0:Z

    iput v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->label:I

    invoke-virtual {v2, v5, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_3

    return-object v1

    :cond_3
    move v13, v7

    move-object v7, v6

    move v6, v13

    :goto_0
    :try_start_1
    const-string/jumbo v9, "{ChipAnimationController}"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " animate:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " visibility:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->L$2:Ljava/lang/Object;

    iput v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->I$0:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->Z$0:Z

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;->label:I

    invoke-static {p1, v7, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$cancelAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v3, p1

    move-object p0, v2

    move v1, v6

    move-object v2, v7

    move v0, v8

    :goto_1
    if-eqz v0, :cond_8

    :try_start_4
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->touchInterceptCallChip:Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;->isTouchInProgress:Z

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$handleOnGoingCallChipAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Z)V

    goto :goto_2

    :cond_7
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$handleOnGoingActivityChipAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Z)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    :goto_3
    :try_start_5
    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideView(Landroid/view/View;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_4
    move-object p0, v2

    goto :goto_6

    :goto_5
    move-object p1, p0

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :goto_6
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
