.class public final Lcom/android/wm/shell/splitscreen/AppPairShortcutController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sPairComponentNameList:[Ljava/lang/String;

.field public static final sPairUserIdList:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

.field public final mSplitAreaBounds:Landroid/graphics/Rect;

.field public final mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "component_second"

    const-string v1, "component_third"

    const-string v2, "component_first"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    const-string/jumbo v0, "userId_second"

    const-string/jumbo v1, "userId_third"

    const-string/jumbo v2, "userId_first"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;-><init>(Lcom/android/wm/shell/splitscreen/AppPairShortcutController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-void
.end method

.method public static getLaunchActivityForTask(Landroid/app/TaskInfo;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getLaunchActivityForTask, can\'t get ComponentName from Task="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppPairShortcutController"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/app/TaskInfo;->userId:I

    invoke-static {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static isSupportAppPairForMultiInstance(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/TaskInfo;

    iget-object v3, v1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const-string v5, "AppPairShortcutController"

    if-nez v3, :cond_0

    const-string p0, "componentName is null"

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v6, v1, Landroid/app/TaskInfo;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget v1, v1, Landroid/app/TaskInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSingleInstancePerTask(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "com.samsung.android.multiwindow.support.pair.shortcut"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_3

    :cond_4
    :goto_1
    const-string p0, "[Divider AppPair] appInfo or appInfo.metaData is null="

    invoke-static {p0, v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v4

    goto :goto_3

    :catch_0
    const-string p0, "[Divider AppPair] No such package="

    invoke-static {p0, v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    return v2

    :cond_5
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return v2
.end method

.method public static isSupportAppPairType(Ljava/util/ArrayList;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/TaskInfo;

    iget-object v1, v0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    const-string v2, "AppPairShortcutController"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string p0, "componentName is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v4, v0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/app/TaskInfo;->userId:I

    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "getLaunchIntentForPackageAsUser is null or empty component ("

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final createAppPairShortcut(I)V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    const-string v2, "AppPairShortcutController"

    if-eqz v1, :cond_16

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    if-nez v3, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, v5, v4}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v5

    if-eqz v1, :cond_15

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_9

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    if-nez v12, :cond_2

    const-string p0, "createAppPairShortcut: Can\'t find topActivity there is null for cell"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v3, v12, v4}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string p0, "createAppPairShortcut: Can\'t find topActivity there is no child tasks for cell"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v7

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {v0, v7}, Lcom/android/wm/shell/common/split/CellUtil;->getCellSide(IZ)I

    move-result v0

    if-eq v2, v9, :cond_7

    if-ne v2, v10, :cond_4

    goto :goto_2

    :cond_4
    if-eq v0, v9, :cond_6

    if-ne v0, v10, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_0
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_7
    :goto_2
    if-eq v0, v9, :cond_9

    if-ne v0, v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    :goto_3
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v10, [I

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->getLaunchActivityForTask(Landroid/app/TaskInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    aput v2, v1, v11

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_10

    if-eq p1, v8, :cond_10

    if-eq p1, v9, :cond_f

    if-eq p1, v10, :cond_e

    goto :goto_7

    :cond_e
    const-string v2, "com.samsung.android.multiwindow.SEND_SPLIT_STATE_CHANGED"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;

    move-result-object v4

    goto :goto_7

    :cond_f
    const-string v2, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_EDGEPANEL"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;

    move-result-object v4

    goto :goto_7

    :cond_10
    const-string v2, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_LAUNCHER"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;

    move-result-object v4

    :goto_7
    if-eqz v4, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    if-ne p1, v10, :cond_11

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_11
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_APP_PAIR_SA_LOGGING:Z

    if-eqz p0, :cond_14

    if-nez p1, :cond_12

    const-string p0, "Taskbar"

    goto :goto_8

    :cond_12
    if-ne p1, v8, :cond_13

    const-string p0, "Home screen"

    goto :goto_8

    :cond_13
    const-string p0, "Apps edge"

    :goto_8
    const-string p1, "1050"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void

    :cond_15
    :goto_9
    const-string p0, "createAppPairShortcut: Can\'t find topActivity Or there is no child tasks."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :goto_a
    const-string p0, "createAppPairShortcut: Can\'t find topActivity there is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x11000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x3

    if-ne p4, p1, :cond_0

    const-string v1, "com.samsung.android.smartsuggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    aget-object v3, v3, v2

    aget v4, p3, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq p4, p1, :cond_2

    const-string v2, "add_app_pair_to"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v5

    const-string v6, "pair_orientation"

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    if-eqz v5, :cond_6

    const v5, 0x7f071451

    goto :goto_3

    :cond_6
    const v5, 0x7f071450

    :goto_3
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v5, v8, p0, v2}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateSplitRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result p0

    goto :goto_5

    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v6}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-static {v5, p0, v7, v2}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateSplitRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result p0

    :goto_5
    const-string v5, "divider_ratio"

    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz p0, :cond_9

    if-le v1, v3, :cond_9

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1, p0, v7, v2}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateSplitRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result p0

    const-string v1, "cell_divider_ratio"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_9
    const-string p0, "AppPairShortcutController"

    if-ne p4, p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "send split state, Split activities = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "createAppPairShortcutLocked() Split activities = "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", userIds = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-object v0
.end method

.method public final createAppPairShortcutIntentForRecent(Ljava/lang/String;Ljava/util/ArrayList;[IIIZLcom/android/wm/shell/util/SplitBounds;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x11000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sget-object v2, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    aget-object v2, v2, v1

    aget v3, p3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "add_app_pair_to"

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const/4 p4, 0x2

    if-eqz p3, :cond_3

    const-string p3, "pair_orientation"

    if-eqz p6, :cond_1

    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    iget-boolean p5, p7, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    if-eqz p5, :cond_2

    const/4 p5, 0x3

    goto :goto_1

    :cond_2
    move p5, p4

    :goto_1
    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_2
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    if-eqz p5, :cond_4

    const p5, 0x7f071451

    goto :goto_3

    :cond_4
    const p5, 0x7f071450

    :goto_3
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    const/4 p6, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p5, :cond_6

    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p5, :cond_5

    goto :goto_4

    :cond_5
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p5

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iget-object p5, p7, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p5, v2, p0, p3}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateSplitRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result p0

    goto :goto_5

    :cond_6
    :goto_4
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p5

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, v1, p6}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object p5, p7, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    const/4 p6, 0x0

    invoke-static {p5, p0, p6, p3}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateSplitRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result p0

    :goto_5
    const-string p3, "divider_ratio"

    invoke-virtual {v0, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz p0, :cond_a

    if-le p1, p4, :cond_a

    iget-boolean p0, p7, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_8

    iget p0, p7, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_7

    iget p0, p7, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    :goto_6
    sub-float/2addr p1, p0

    goto :goto_7

    :cond_7
    iget p1, p7, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    goto :goto_7

    :cond_8
    iget p0, p7, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_9

    iget p0, p7, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    goto :goto_6

    :cond_9
    iget p1, p7, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    :goto_7
    const-string p0, "cell_divider_ratio"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createAppPairShortcut for Recent, activities = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPairShortcutController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
