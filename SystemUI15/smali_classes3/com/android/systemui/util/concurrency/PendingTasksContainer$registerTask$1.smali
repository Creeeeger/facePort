.class final Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/util/concurrency/PendingTasksContainer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/util/concurrency/PendingTasksContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;->this$0:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;->$name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PendingTasksContainer#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;->this$0:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    invoke-static {v0}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->access$getPendingTasksCount$p(Lcom/android/systemui/util/concurrency/PendingTasksContainer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;->this$0:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->access$getCompletionCallback$p(Lcom/android/systemui/util/concurrency/PendingTasksContainer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
