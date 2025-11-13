.class public abstract Lcom/android/settings/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field public final mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field public final mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

.field public mForceLoadAllApps:Z

.field public final mHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

.field public final mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iput-object p2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    new-instance p2, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;I)V

    iput-object p2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    new-instance p1, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;I)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    return-void
.end method


# virtual methods
.method public final forceUpdate(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public abstract loadAllExtraInfo()V
.end method

.method public final onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mForceLoadAllApps:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    return-void
.end method

.method public final resume(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mForceLoadAllApps:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
