.class public final Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final handler:Landroid/os/Handler;

.field public final mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field public final mediaProjectionServiceHelper:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;

.field public final mediaProjectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final tasksRepository:Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/projection/MediaProjectionManager;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->tasksRepository:Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;

    new-instance p1, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1;-><init>(Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    sget-object p4, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;->INSTANCE:Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;

    invoke-static {p1, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->mediaProjectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$stateForSession(Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;

    iget v1, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;-><init>(Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p2, :cond_3

    sget-object v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;->INSTANCE:Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_7

    iput-object p1, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stateForSession$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->tasksRepository:Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;

    check-cast p0, Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository;->findRunningTaskFromWindowContainerToken(Landroid/os/IBinder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object p0, p1

    :goto_1
    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p3, :cond_6

    new-instance v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$EntireScreen;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p0}, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$EntireScreen;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;-><init>(Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$EntireScreen;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p1}, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$EntireScreen;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final stopProjecting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stopProjecting$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$stopProjecting$2;-><init>(Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
