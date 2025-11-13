.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;
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
.field final synthetic $show:Z

.field final synthetic $state:I

.field final synthetic $v:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;",
            "Landroid/view/View;",
            "ZI",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$show:Z

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$state:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$show:Z

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$state:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "View:"

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$show:Z

    const/4 v6, 0x0

    invoke-direct {p1, v2, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$show:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->showView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$state:I

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideView(Landroid/view/View;I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    :goto_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_3
    :try_start_2
    const-string/jumbo v1, "{ChipAnimationController}"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/concurrent/CancellationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Animations were cancelled: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$show:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->showView(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$state:I

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideView(Landroid/view/View;I)V

    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    goto :goto_2

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$show:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->showView(Landroid/view/View;)V

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$state:I

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideView(Landroid/view/View;I)V

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;->$v:Landroid/view/View;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method
