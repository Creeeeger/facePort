.class public interface abstract Lcom/android/systemui/util/concurrency/ThreadFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract buildDelayableExecutorOnHandler(Landroid/os/Handler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
.end method

.method public abstract buildDelayableExecutorOnLooper(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
.end method

.method public abstract buildDelayableExecutorOnNewThread(Ljava/lang/String;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
.end method

.method public abstract buildExecutorOnNewThread(Ljava/lang/String;)Ljava/util/concurrent/Executor;
.end method

.method public abstract buildHandlerOnNewThread(Ljava/lang/String;)Landroid/os/Handler;
.end method

.method public abstract buildLooperOnNewThread(Ljava/lang/String;)Landroid/os/Looper;
.end method
