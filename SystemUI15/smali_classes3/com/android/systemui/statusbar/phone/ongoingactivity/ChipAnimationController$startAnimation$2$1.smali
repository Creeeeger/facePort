.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;
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

.field private synthetic L$0:Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$show:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$v:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$show:Z

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$v:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$show:Z

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, v6, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$v:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$show:Z

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$3;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$v:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1;->$show:Z

    invoke-direct {v2, v3, v4, p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$3;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
