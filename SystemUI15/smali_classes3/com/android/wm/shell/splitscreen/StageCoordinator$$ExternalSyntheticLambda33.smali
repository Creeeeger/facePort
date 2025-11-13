.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;III[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$4:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$1:I

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$2:I

    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$3:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda33;->f$4:[Z

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/recents/RecentTasksController;->getSplitBoundsForTaskId(I)Lcom/android/wm/shell/util/SplitBounds;

    move-result-object p1

    if-eqz p1, :cond_a

    iget v4, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    if-ne v1, v4, :cond_a

    iget v4, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    if-ne v2, v4, :cond_a

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v3, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v0, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->getAppPairDialogItems()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "AppPairShortcutController"

    const/4 v7, -0x1

    if-eq v1, v7, :cond_8

    if-ne v2, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    if-eqz v1, :cond_7

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v1, :cond_4

    if-eq v3, v7, :cond_4

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1, v4}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->isSupportAppPairForMultiInstance(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[isSupportAppPairPolicy] isSupportAppPairForMultiInstance returns false. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->isSupportAppPairType(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[isSupportAppPairPolicy] isSupportAppPairType returns false. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    :goto_0
    const-string p1, "createAppPairShortcutForRecent: Can\'t find tasks."

    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    :goto_1
    const-string p1, "createAppPairShortcutForRecent: Invalid taskId"

    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    move p1, v5

    :goto_3
    aput-boolean p1, p0, v5

    goto :goto_5

    :cond_a
    :goto_4
    const-string p0, "StageCoordinator"

    const-string p1, "canShowAddAppPairDialogForRecent: Invalid taskId"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method
