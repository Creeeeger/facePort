.class public final Landroidx/loader/content/AsyncTaskLoader$LoadTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static sHandler:Landroid/os/Handler;


# instance fields
.field public final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mFuture:Landroidx/loader/content/ModernAsyncTask$2;

.field public volatile mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

.field public final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic this$0:Landroidx/loader/content/AsyncTaskLoader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    sget-object p1, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/loader/content/ModernAsyncTask$1;

    invoke-direct {p1, p0}, Landroidx/loader/content/ModernAsyncTask$1;-><init>(Landroidx/loader/content/AsyncTaskLoader$LoadTask;)V

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$2;

    invoke-direct {v0, p0, p1}, Landroidx/loader/content/ModernAsyncTask$2;-><init>(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Landroidx/loader/content/ModernAsyncTask$1;)V

    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mFuture:Landroidx/loader/content/ModernAsyncTask$2;

    return-void
.end method


# virtual methods
.method public final postResult(Ljava/lang/Object;)V
    .locals 3

    const-class v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->sHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->sHandler:Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$3;

    invoke-direct {v0, p0, p1}, Landroidx/loader/content/ModernAsyncTask$3;-><init>(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    return-void
.end method
