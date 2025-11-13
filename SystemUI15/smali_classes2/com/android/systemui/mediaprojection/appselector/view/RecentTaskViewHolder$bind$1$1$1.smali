.class final Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;
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
.field final synthetic $component:Landroid/content/ComponentName;

.field final synthetic $task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;",
            "Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;",
            "Landroid/content/ComponentName;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->$component:Landroid/content/ComponentName;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->$component:Landroid/content/ComponentName;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->iconLoader:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget v3, v1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->$component:Landroid/content/ComponentName;

    iput v2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->label:I

    invoke-virtual {p1, v3, v1, v4, p0}, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->loadIcon(ILcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
