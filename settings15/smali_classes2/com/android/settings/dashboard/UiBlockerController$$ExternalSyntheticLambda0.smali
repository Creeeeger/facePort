.class public final synthetic Lcom/android/settings/dashboard/UiBlockerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/UiBlockerController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/UiBlockerController;Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/UiBlockerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dashboard/UiBlockerController;

    iput-object p2, p0, Lcom/android/settings/dashboard/UiBlockerController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dashboard/UiBlockerController;

    iget-object p0, p0, Lcom/android/settings/dashboard/UiBlockerController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, v0, Lcom/android/settings/dashboard/UiBlockerController;->mTimeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "UiBlockerController"

    const-string v2, "interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
