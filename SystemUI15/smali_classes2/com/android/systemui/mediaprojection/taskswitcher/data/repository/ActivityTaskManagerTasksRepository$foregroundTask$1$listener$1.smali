.class public final Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository$foregroundTask$1$listener$1;
.super Landroid/app/TaskStackListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository$foregroundTask$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTaskMovedToFront: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TasksRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/taskswitcher/data/repository/ActivityTaskManagerTasksRepository$foregroundTask$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {v0, p0, p1, v1}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
