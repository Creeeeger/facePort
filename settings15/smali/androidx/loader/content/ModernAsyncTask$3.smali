.class public final Landroidx/loader/content/ModernAsyncTask$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-object p2, p0, Landroidx/loader/content/ModernAsyncTask$3;->val$result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$3;->val$result:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v1, p0}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    iget-object p0, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-ne p0, v0, :cond_5

    iget-boolean p0, v1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onContentChanged()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    iget-object v3, v1, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eq v3, v0, :cond_3

    invoke-virtual {v1, p0}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    iget-object p0, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-ne p0, v0, :cond_5

    iget-boolean p0, v1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onContentChanged()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    goto :goto_0

    :cond_3
    iget-boolean v3, v1, Landroidx/loader/content/Loader;->mAbandoned:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1, p0}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, p0}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    sget-object p0, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object p0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    return-void
.end method
