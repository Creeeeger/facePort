.class public final Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/RunningState;

.field public volatile usersChanged:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object p2, p2, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
