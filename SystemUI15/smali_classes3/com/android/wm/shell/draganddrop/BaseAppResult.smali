.class public abstract Lcom/android/wm/shell/draganddrop/BaseAppResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/AppResult;


# instance fields
.field public final mBlockDropTargetClassNameMap:Ljava/util/Map;

.field public final mContentType:Ljava/lang/String;

.field public final mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

.field public final mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    const-string v1, "com.google.android.apps.bard.shellapp.BardEntryPointActivity"

    const-string v2, "com.google.android.apps.search.assistant.surfaces.voice.robin.main.MainActivity"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mBlockDropTargetClassNameMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public final isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;Z)Z
    .locals 10

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const-string v4, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    move-object v0, v4

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz p3, :cond_7

    return v3

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v4, v3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    if-ne v6, v2, :cond_9

    move v4, v2

    :cond_9
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    const-string p0, "BaseAppResult"

    const-string p1, "isVisibleSingleInstance - Visible SplitScreen and Fullscreen"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    iget p3, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne p3, v2, :cond_d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_c
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v4, v5, :cond_b

    return v2

    :cond_d
    iget p3, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq p3, v5, :cond_e

    if-ne p3, v4, :cond_10

    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_f

    return v2

    :cond_10
    iget p3, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v6, 0x4

    if-ne p3, v6, :cond_11

    return v3

    :cond_11
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_12

    return v2

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_14
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v7, v8, :cond_15

    move v7, v2

    goto :goto_5

    :cond_15
    move v7, v3

    :goto_5
    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_16

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    move v8, v2

    goto :goto_6

    :cond_16
    move v8, v3

    :goto_6
    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_7

    :cond_17
    move v6, v3

    goto :goto_8

    :cond_18
    :goto_7
    move v6, v2

    :goto_8
    if-nez v7, :cond_19

    goto :goto_4

    :cond_19
    if-eqz v8, :cond_1a

    if-nez v6, :cond_1a

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    iget-object v9, v9, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    return v3

    :cond_1a
    if-nez v6, :cond_1b

    if-eqz v8, :cond_14

    :cond_1b
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_1c
    iget p3, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq p3, v5, :cond_1d

    if-ne p3, v4, :cond_20

    :cond_1d
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->rootAffinity:Ljava/lang/String;

    if-eqz v6, :cond_1f

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1f

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_1f
    const/4 v6, 0x0

    :goto_9
    if-eqz p3, :cond_1e

    if-eqz v6, :cond_1e

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1e

    iget v7, v7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v7, v5, :cond_1e

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v4, v6, :cond_1e

    return v2

    :cond_20
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mBlockDropTargetClassNameMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mBlockDropTargetClassNameMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p3, v0, :cond_21

    return v2

    :cond_22
    return v3
.end method
