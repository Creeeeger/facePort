.class public final Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaProjectionState -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskSwitchInteractor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;->task:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;

    iget-object v4, v3, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;->tasksRepository:Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;

    check-cast v4, Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository;

    iget-object v4, v4, Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository;->foregroundTask:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v5, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$taskSwitchChanges$lambda$1$$inlined$map$1;

    invoke-direct {v5, v4, v3, v1}, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$taskSwitchChanges$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    :cond_2
    instance-of v3, v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$EntireScreen;

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    instance-of v1, v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;

    :goto_0
    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/mediaprojection/taskswitcher/domain/model/TaskSwitchState$NotProjectingTask;->INSTANCE:Lcom/android/systemui/mediaprojection/taskswitcher/domain/model/TaskSwitchState$NotProjectingTask;

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v5, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput v2, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v5, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
