.class public final Lcom/android/wm/shell/compatui/CompatUIWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Ljava/util/function/Consumer;

.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

.field mHasSizeCompat:Z

.field public final mHideScmTolerance:F

.field mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

.field public final mOnRestartButtonClicked:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/function/Consumer;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/impl/CompatUIEvents;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p4, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Ljava/util/function/Consumer;

    iget-object p1, p2, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingMode()Z

    iput-object p7, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iput-object p8, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iput-object p9, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mOnRestartButtonClicked:Ljava/util/function/Consumer;

    iget p1, p8, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mHideSizeCompatRestartButtonTolerance:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHideScmTolerance:F

    return-void
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/CompatUILayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    iput-object p0, v0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateVisibilityOfViews$1()V

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;

    iget v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    invoke-direct {v1, v2}, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-object p0
.end method

.method public final eligibleToShowLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowSizeCompatRestartButton(Landroid/app/TaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-object p0
.end method

.method public final getZOrder()I
    .locals 0

    const/16 p0, 0x2711

    return p0
.end method

.method public inflateLayout()Lcom/android/wm/shell/compatui/CompatUILayout;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d009a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUILayout;

    return-object p0
.end method

.method public final removeLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-void
.end method

.method public shouldShowSizeCompatRestartButton(Landroid/app/TaskInfo;)Z
    .locals 6

    invoke-static {}, Lcom/android/window/flags/Flags;->allowHideScmButton()Z

    iget-object v0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget v0, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget p1, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v3, v0, :cond_1

    if-le v1, p1, :cond_1

    return v2

    :cond_1
    iget v4, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHideScmTolerance:F

    iget-object v5, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x64

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-ne v3, v0, :cond_2

    return v5

    :cond_2
    mul-int/2addr v0, p1

    mul-int/2addr v3, v1

    if-eqz v0, :cond_5

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v0

    int-to-float v0, v3

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHideScmTolerance:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v5

    :goto_0
    return v2

    :cond_5
    :goto_1
    return v5
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    iget-object v1, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingMode()Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateVisibilityOfViews$1()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateSurfacePosition()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    goto :goto_0

    :goto_1
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;II)V

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_2
    return-void
.end method

.method public final updateVisibilityOfViews$1()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    const v2, 0x7f0a0b6f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v2, 0x7f0a0b6e

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iget-boolean v0, v0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;->mHasShownSizeCompatHint:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;->mHasShownSizeCompatHint:Z

    :cond_6
    return-void
.end method
