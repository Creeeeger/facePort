.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final CLOSE_SYSTEM_WINDOWS_REASON_RECENTS:Ljava/lang/String; = "recentapps"

.field private static final INVOCATION_TIME_MS_KEY:Ljava/lang/String; = "invocation_time_ms"

.field private static final NUM_RECENT_ACTIVITIES_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[DS]ActivityManagerWrapper"

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    return-object v0
.end method

.method public static isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancelRecentsAnimation(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->cancelRecentsAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[DS]ActivityManagerWrapper"

    const-string v0, "Failed to cancel recents animation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public clearLongLiveTask(I)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->clearLongLiveTask(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[DS]ActivityManagerWrapper"

    const-string v0, "Failed to close system windows"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getCurrentUserId()I
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getLongLiveProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getLongLiveProcesses()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ActivityManagerWrapper"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLongLiveTaskIdsForUser(I)Ljava/util/List;
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->getLongLiveTaskIdsForUser(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxLongLiveApps()I
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getMaxLongLiveApps()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ActivityManagerWrapper"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getRecentPairTasks(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRecentTasksforTaskbar(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, p1}, Landroid/app/IActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v3, p1, :cond_0

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "taskId"

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "userId"

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "taskType"

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "lastTaskDescription"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v5, "resizeable"

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    if-nez v6, :cond_2

    move v4, v1

    :cond_2
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "displayId"

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "componentName"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lastGainFocusTime"

    iget-wide v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->lastGainFocusTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    return-object v0

    :goto_1
    const-string p1, "[DS]ActivityManagerWrapper"

    const-string v0, "Failed getRecentTasksforTaskbar()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getRunningTaskIncludingPairTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getTaskInfoFromTaskIdforTaskbar(II)Landroid/os/Bundle;
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, p2}, Landroid/app/IActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v3, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo p0, "taskId"

    iget p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "userId"

    iget p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "taskType"

    iget p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "lastTaskDescription"

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p0, "resizeable"

    iget p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "displayId"

    iget p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "componentName"

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "lastGainFocusTime"

    iget-wide v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->lastGainFocusTime:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed getTaskInfoFromTaskIdforTaskbar()"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "[DS]ActivityManagerWrapper"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    :cond_2
    return-object p0
.end method

.method public getTaskThumbnail(IZZ)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[DS]ActivityManagerWrapper"

    const-string p2, "Failed to retrieve task snapshot"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    new-instance p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;

    invoke-direct {p1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;-><init>()V

    return-object p0
.end method

.method public getTopTaskClassName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string p0, "getTopTaskClassNameAsTaskId, className="

    const-string v1, "[DS]ActivityManagerWrapper"

    invoke-static {p0, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public invalidateHomeTaskSnapshot(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityClient;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "[DS]ActivityManagerWrapper"

    const-string v0, "Failed to invalidate home snapshot"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isLockTaskKioskModeActive()Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p0, v1

    :catch_0
    :cond_0
    return p0
.end method

.method public isLockToAppActive()Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method public isScreenPinningActive()Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method public isScreenPinningEnabled()Z
    .locals 2

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isTopTaskAsTaskId(I)Z
    .locals 3

    const-string v0, "[DS]ActivityManagerWrapper"

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isTopTaskAsTaskId, className="

    invoke-static {v2, v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isTopTaskAsTaskId, error. taskId="

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public registerTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V

    return-void
.end method

.method public removeAllRecentTasks()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "[DS]ActivityManagerWrapper"

    const-string v1, "Failed to remove all tasks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public removeTask(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to remove task="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[DS]ActivityManagerWrapper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setLongLiveTask(I)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->setLongLiveTask(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public showVoiceSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .locals 2

    const-string/jumbo p0, "voiceinteraction"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string p0, "invocation_time_ms"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return p1
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public startActivityFromRecents(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z
    .locals 0

    invoke-static {p2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat;->addTaskInfo(Landroid/app/ActivityOptions;Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;)V

    iget p1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result p0

    return p0
.end method

.method public startActivityFromRecentsAsync(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    :cond_1
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    :cond_2
    :try_start_0
    iget p1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_3

    new-instance p2, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;

    invoke-direct {p2, p0, p5, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p6, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)Z

    move-result p1

    if-eqz p5, :cond_0

    new-instance p2, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;

    invoke-direct {p2, p0, p5, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p6, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)Z
    .locals 1

    if-eqz p4, :cond_0

    :try_start_0
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/app/IActivityTaskManager;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsFreeformMultiWindow(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_freeform_support"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.software.freeform_window_management"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public unregisterTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V

    return-void
.end method
