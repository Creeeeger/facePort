.class public final Landroidx/loader/content/ModernAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;


# direct methods
.method public constructor <init>(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Landroidx/loader/content/ModernAsyncTask$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final done()V
    .locals 4

    const-string v0, "An error occurred while executing doInBackground()"

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-object v3, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->postResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->postResult(Ljava/lang/Object;)V

    goto :goto_3

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    const-string v0, "AsyncTask"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_3
    return-void
.end method
