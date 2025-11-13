.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-wide p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-wide v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;->f$1:J

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v4, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    const-wide v6, 0x1000000000047L

    cmp-long v1, v1, v6

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_1

    if-lez v1, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v4, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez p0, :cond_6

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const v0, 0x7f130551

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->toggleSplitScreen(I)V

    :cond_7
    :goto_1
    return-void
.end method
