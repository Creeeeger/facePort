.class public final synthetic Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/wm/shell/util/SplitBounds;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitWindowManager;Landroid/util/ArrayMap;IIILcom/android/wm/shell/util/SplitBounds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    iput p3, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$5:Lcom/android/wm/shell/util/SplitBounds;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$2:I

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$3:I

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$4:I

    iget-object v11, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;->f$5:Lcom/android/wm/shell/util/SplitBounds;

    iget-object p0, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "AppPairShortcutController"

    const/4 v0, -0x1

    if-eq v1, v0, :cond_16

    if-ne v2, v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    if-eqz v1, :cond_15

    if-nez v2, :cond_1

    goto/16 :goto_b

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_2

    move v10, v5

    goto :goto_0

    :cond_2
    move v10, v6

    :goto_0
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    const/4 v8, 0x2

    const/4 v12, 0x3

    if-eqz v7, :cond_d

    if-eqz v10, :cond_d

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "createAppPairShortcutForRecent: Can\'t find tasks for cell"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_3
    iget-boolean p2, v11, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    if-eqz p2, :cond_5

    iget v3, v11, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move v3, v12

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    goto :goto_1

    :cond_5
    iget v3, v11, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    move v3, v8

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    :goto_1
    xor-int/2addr p2, v5

    iget v7, v11, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    invoke-static {v7, p2}, Lcom/android/wm/shell/common/split/CellUtil;->getCellSide(IZ)I

    move-result p2

    if-eq v3, v8, :cond_a

    if-ne v3, v12, :cond_7

    goto :goto_4

    :cond_7
    if-eq p2, v8, :cond_9

    if-ne p2, v12, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_a
    :goto_4
    if-eq p2, v8, :cond_c

    if-ne p2, v12, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_7
    move v9, v3

    goto :goto_8

    :cond_d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v0

    :goto_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-array v7, v12, [I

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->getLaunchActivityForTask(Landroid/app/TaskInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    aput v0, v7, v6

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v0, :cond_10

    goto :goto_d

    :cond_10
    if-eqz p1, :cond_13

    if-eq p1, v5, :cond_13

    if-eq p1, v8, :cond_12

    if-eq p1, v12, :cond_11

    const/4 p2, 0x0

    goto :goto_a

    :cond_11
    const-string v5, "com.samsung.android.multiwindow.SEND_SPLIT_STATE_CHANGED"

    move-object v4, p0

    move-object v6, p2

    move v8, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntentForRecent(Ljava/lang/String;Ljava/util/ArrayList;[IIIZLcom/android/wm/shell/util/SplitBounds;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_a

    :cond_12
    const-string v5, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_EDGEPANEL"

    move-object v4, p0

    move-object v6, p2

    move v8, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntentForRecent(Ljava/lang/String;Ljava/util/ArrayList;[IIIZLcom/android/wm/shell/util/SplitBounds;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_a

    :cond_13
    const-string v5, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_LAUNCHER"

    move-object v4, p0

    move-object v6, p2

    move v8, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntentForRecent(Ljava/lang/String;Ljava/util/ArrayList;[IIIZLcom/android/wm/shell/util/SplitBounds;)Landroid/content/Intent;

    move-result-object p2

    :goto_a
    if-eqz p2, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    if-ne p1, v12, :cond_14

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    :cond_14
    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    :cond_15
    :goto_b
    const-string p0, "createAppPairShortcutForRecent: Can\'t find tasks."

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    :goto_c
    const-string p0, "createAppPairShortcutForRecent: Invalid taskId"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_d
    return-void
.end method
