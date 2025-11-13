.class public interface abstract Lcom/android/wm/shell/common/ShellExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public executeBlocking(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x2

    int-to-long p0, p0

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method
