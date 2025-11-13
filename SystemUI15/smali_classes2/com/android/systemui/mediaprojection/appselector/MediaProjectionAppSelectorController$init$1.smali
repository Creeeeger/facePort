.class final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;
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
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->recentTaskListProvider:Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskListProvider;

    iput v3, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->label:I

    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    invoke-virtual {p1, p0}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->loadRecentTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget v6, v6, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->hostUserHandle:Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->devicePolicyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    invoke-virtual {v8, v6, v7}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object v6, v6, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    iget-object v7, v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->appSelectorComponentName:Landroid/content/ComponentName;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;)V

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->label:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$refreshForegroundTaskThumbnails$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$refreshForegroundTaskThumbnails$2;-><init>(Ljava/util/List;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v1, v2, :cond_8

    goto :goto_3

    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne v1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, p1

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    invoke-virtual {p0, v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->bind(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
