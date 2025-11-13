.class public final Lcom/android/wm/shell/compatui/RestartDialogWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field public final mDialogVerticalMargin:I

.field mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

.field public final mOnDismissCallback:Ljava/util/function/Consumer;

.field public final mOnRestartCallback:Ljava/util/function/Consumer;

.field public mRequestRestartDialog:Z

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ")V"
        }
    .end annotation

    new-instance v9, Lcom/android/wm/shell/compatui/DialogAnimationController;

    const-string v0, "RestartDialogWindowManager"

    move-object v1, p1

    invoke-direct {v9, p1, v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;",
            "Lcom/android/wm/shell/compatui/DialogAnimationController;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p6, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p8, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnRestartCallback:Ljava/util/function/Consumer;

    iput-object p9, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07073c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mDialogVerticalMargin:I

    iput-object p10, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    return-void
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01e1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/RestartDialogLayout;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->updateDialogMargins$1()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v1, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/Transitions;->runOnIdle(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    return-object p0
.end method

.method public final eligibleToShowLayout()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->isTaskbarEduShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget v3, p0, Landroid/app/TaskInfo;->userId:I

    iget-object p0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    return-object p0
.end method

.method public final getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getZOrder()I
    .locals 0

    const/16 p0, 0x2712

    return p0
.end method

.method public isTaskbarEduShowing()Z
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onParentBoundsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->updateDialogMargins$1()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    return-void
.end method

.method public final removeLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    return-void
.end method

.method public final updateDialogMargins$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mDialogVerticalMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateSurfacePosition()V
    .locals 0

    return-void
.end method
