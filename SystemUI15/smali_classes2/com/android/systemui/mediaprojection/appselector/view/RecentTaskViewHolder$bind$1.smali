.class final Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;
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
.field final synthetic $task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;",
            "Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    new-instance v5, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;

    invoke-direct {v5, v4, v0, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v5, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v5, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$2;

    invoke-direct {v5, v4, v0, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v5, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$2;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    invoke-direct {v0, v1, p0, v3}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
