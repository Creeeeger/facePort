.class public Lcom/android/settingslib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field private mFlags:I

.field private final mHasLifecycle:Z

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field mRebuildForeground:Z

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/settingslib/applications/ApplicationsState$Session;)I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    return p0
.end method

.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 1077
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    const/16 v0, 0xd

    .line 1074
    iput v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    .line 1078
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    if-eqz p3, :cond_0

    .line 1080
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p2, 0x1

    .line 1081
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1083
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    .line 1086
    :goto_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smisAppIconCacheEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1088
    iget p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    :cond_1
    return-void
.end method


# virtual methods
.method public activateSession()V
    .locals 2

    .line 1152
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1154
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 1155
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 1157
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkDisabledApp(Z)V
    .locals 0

    .line 1144
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCheckDisabledApp:Z

    return-void
.end method

.method public deactivateSession()V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1165
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1166
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 1167
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 1169
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllApps()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1174
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 1175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method handleRebuildList()V
    .locals 7

    .line 1209
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_1

    .line 1214
    monitor-exit v0

    return-void

    .line 1217
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1218
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    .line 1219
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v4, 0x0

    .line 1220
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1221
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 1222
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x2

    .line 1223
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1224
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    .line 1226
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 1233
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1234
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1235
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    .line 1242
    invoke-interface {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1243
    :cond_5
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    if-eqz v2, :cond_6

    .line 1249
    :try_start_2
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 1254
    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    if-eqz v2, :cond_8

    .line 1273
    :try_start_3
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1276
    :try_start_4
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1277
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const-string v0, "ApplicationsState"

    const-string/jumbo v1, "sorting error"

    .line 1280
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_6
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_a

    .line 1286
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 1287
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v1, :cond_9

    .line 1288
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 1289
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1291
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1292
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1294
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1298
    :cond_a
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 p0, 0xa

    .line 1300
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_2
    move-exception p0

    .line 1298
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 1235
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 1226
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1305
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    if-nez v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1311
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1124
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1125
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 1126
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 1127
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1128
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 1131
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1110
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1111
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 1112
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 1113
    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 1114
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 1116
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1180
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1186
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1187
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 1188
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 1189
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 1190
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1191
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 1192
    iput-boolean p3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    const/4 p1, 0x0

    .line 1193
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 1194
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1195
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1197
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1199
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p0

    .line 1199
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 1202
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setSessionFlags(I)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smisAppIconCacheEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x3

    .line 1100
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    goto :goto_0

    .line 1102
    :cond_0
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    :goto_0
    return-void
.end method
