.class public final Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public mPriority:I

.field public mThreadName:Ljava/lang/String;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;

    iget-object v1, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mThreadName:Ljava/lang/String;

    iget p0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mPriority:I

    invoke-direct {v0, p1, v1, p0}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
