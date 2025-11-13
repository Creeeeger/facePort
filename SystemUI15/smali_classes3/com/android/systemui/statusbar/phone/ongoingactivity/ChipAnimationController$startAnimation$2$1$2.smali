.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;
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

.field final synthetic $v:Landroid/view/View;

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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->$show:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->$v:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->$show:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->$v:Landroid/view/View;

    sget-object v3, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->$show:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;->label:I

    invoke-static {p1, v1, v3, v4, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->access$animateSpring(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
