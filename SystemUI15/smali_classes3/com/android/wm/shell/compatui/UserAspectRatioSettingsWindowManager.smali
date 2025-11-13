.class public final Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

.field public final mDisappearTimeSupplier:Ljava/util/function/Function;

.field mHasUserAspectRatioSettingsButton:Z

.field public mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

.field public mNextButtonHideTimeMs:J

.field public final mOnButtonClicked:Ljava/util/function/BiConsumer;

.field public final mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mUserAspectRatioButtonShownChecker:Ljava/util/function/Supplier;

.field public final mUserAspectRatioButtonStateConsumer:Ljava/util/function/Consumer;


# direct methods
.method public static $r8$lambda$mgsdsccZUsXLSfO5dZyQ22DCT6g(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mNextButtonHideTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    const v0, 0x7f0a0df2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->setViewVisibility(IZ)V

    const v0, 0x7f0a0df3

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->setViewVisibility(IZ)V

    :cond_0
    return-void
.end method

.method public static $r8$lambda$qcC5U0asMBEasgAnScT0e3j-tE0(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0df2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->setViewVisibility(IZ)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mUserAspectRatioButtonStateConsumer:Ljava/util/function/Consumer;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iget-boolean v0, v0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;->mHasShownUserAspectRatioSettingsButtonHint:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    const v1, 0x7f0a0df3

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->setViewVisibility(IZ)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iput-boolean v2, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;->mHasShownUserAspectRatioSettingsButtonHint:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;Ljava/util/function/BiConsumer;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mNextButtonHideTimeMs:J

    iput-object p8, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p10, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mUserAspectRatioButtonShownChecker:Ljava/util/function/Supplier;

    iput-object p11, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mUserAspectRatioButtonStateConsumer:Ljava/util/function/Consumer;

    iget-object p1, p2, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object p2, p2, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->shouldShowUserAspectRatioSettingsButton(Landroid/app/AppCompatTaskInfo;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mHasUserAspectRatioSettingsButton:Z

    iput-object p6, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mOnButtonClicked:Ljava/util/function/BiConsumer;

    iput-object p9, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mDisappearTimeSupplier:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    iput-object p0, v0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->mWindowManager:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->updateVisibilityOfViews()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    return-object p0
.end method

.method public final eligibleToShowLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mHasUserAspectRatioSettingsButton:Z

    return p0
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    return-object p0
.end method

.method public final getZOrder()I
    .locals 0

    const/16 p0, 0x2711

    return p0
.end method

.method public inflateLayout()Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0548

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    return-object p0
.end method

.method public isShowingButton()Z
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mUserAspectRatioButtonShownChecker:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mNextButtonHideTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final removeLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    return-void
.end method

.method public final shouldShowUserAspectRatioSettingsButton(Landroid/app/AppCompatTaskInfo;Landroid/content/Intent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    if-gt v3, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->isUserFullscreenOverrideEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->isUserFullscreenOverrideEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->isSystemFullscreenOverrideEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mUserAspectRatioButtonShownChecker:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->isShowingButton()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mHasUserAspectRatioSettingsButton:Z

    iget-object v1, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->shouldShowUserAspectRatioSettingsButton(Landroid/app/AppCompatTaskInfo;Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mHasUserAspectRatioSettingsButton:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mHasUserAspectRatioSettingsButton:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->updateVisibilityOfViews()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateSurfacePosition()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

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

    iget-object v3, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    goto :goto_0

    :goto_1
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

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

.method public updateVisibilityOfViews()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mHasUserAspectRatioSettingsButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;I)V

    const-wide/16 v2, 0x1f4

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mDisappearTimeSupplier:Ljava/util/function/Function;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mNextButtonHideTimeMs:J

    iget-object v2, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;I)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
