.class final Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->recents$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasks;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    iput v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->label:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v4, v1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;

    invoke-direct {v5, v3}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    iget-object v6, p1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1, v4, v1, v5}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;ILjava/util/concurrent/Executor;Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;)V

    check-cast v6, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    goto :goto_3

    :cond_5
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    :goto_3
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_4

    :cond_6
    move-object v5, v1

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_5

    :cond_7
    move-object v4, v1

    :goto_5
    filled-new-array {v5, v4}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    new-instance v6, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object v7, v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v7, v7, v3

    iget v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v9, v9, v3

    iget-boolean v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v9, :cond_8

    move v9, v2

    goto :goto_7

    :cond_8
    move v9, v3

    :goto_7
    iget-object v10, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->userManager:Landroid/os/UserManager;

    iget-object v11, v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v11, v11, v3

    iget v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->access$toUserType(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Landroid/content/pm/UserInfo;)Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    move-result-object v10

    iget-object v11, v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-direct {v6, v7, v9, v10, v11}, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;-><init>(Landroid/app/ActivityManager$RecentTaskInfo;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;)V

    invoke-virtual {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_a

    new-instance v7, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    invoke-virtual {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v8, :cond_9

    move v8, v2

    goto :goto_8

    :cond_9
    move v8, v3

    :goto_8
    iget-object v10, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->userManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->access$toUserType(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Landroid/content/pm/UserInfo;)Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    move-result-object v10

    iget-object v5, v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-direct {v7, v9, v8, v10, v5}, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;-><init>(Landroid/app/ActivityManager$RecentTaskInfo;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;)V

    goto :goto_9

    :cond_a
    move-object v7, v1

    :goto_9
    filled-new-array {v6, v7}, [Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto/16 :goto_6

    :cond_b
    return-object v4
.end method
