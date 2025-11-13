.class public final Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mListeners:Ljava/util/List;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mTimeout:I

.field public mTimeoutMs:J

.field public final mTimeoutRunnable:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeout:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutMs:J

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutRunnable:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public hasScheduledTimeout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v0, v0, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutRunnable:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final resetTimer()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutRunnable:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeout:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutMs:J

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
