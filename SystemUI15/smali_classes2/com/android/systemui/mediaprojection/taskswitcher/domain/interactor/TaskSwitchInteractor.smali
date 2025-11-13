.class public final Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mediaProjectionRepository:Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;

.field public final taskSwitchChanges:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final tasksRepository:Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;->tasksRepository:Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/TasksRepository;

    check-cast p1, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->mediaProjectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/taskswitcher/domain/interactor/TaskSwitchInteractor;->taskSwitchChanges:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
