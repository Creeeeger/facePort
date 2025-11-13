.class public final Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskListProvider;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final recentTasks:Ljava/util/Optional;

.field public final recents$delegate:Lkotlin/Lazy;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Ljava/util/Optional;Lcom/android/systemui/settings/UserTracker;Landroid/os/UserManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Landroid/os/UserManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->recentTasks:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->userManager:Landroid/os/UserManager;

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$recents$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$recents$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->recents$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final access$toUserType(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Landroid/content/pm/UserInfo;)Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;->CLONED:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;->WORK:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;->PRIVATE:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;->STANDARD:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final loadRecentTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
