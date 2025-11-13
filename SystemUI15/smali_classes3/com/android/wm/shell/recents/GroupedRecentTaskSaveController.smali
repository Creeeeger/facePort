.class public final Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mGroupedRecentSaveFile:Ljava/io/File;

.field public final mGroupedRecentTaskSaveMap:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mSaveGroupedRecentTasks:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    new-instance v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mSaveGroupedRecentTasks:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$$ExternalSyntheticLambda0;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "recenttasks"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "grouped_recents.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentSaveFile:Ljava/io/File;

    return-void
.end method

.method public static getTaskIdKey(II)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static getTaskIdKey(III)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final addGroupedRecentTaskSaveInfo(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;)Z
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(III)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v1, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    invoke-static {v0, v1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPossibleRemoveTaskIdKey(III)I
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(III)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p2, p1, p3}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(III)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeGruopedRecentTaskSaveInfo(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scheduleSaveGroupedRecentTasks()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mSaveGroupedRecentTasks:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mSaveGroupedRecentTasks:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
