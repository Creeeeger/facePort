.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$4:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$2:I

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$4:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$0:I

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$4:Landroid/window/WindowContainerTransaction;

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v0, :cond_c

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-eq v4, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v5}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    invoke-virtual {v4, v3, v5}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v0, v4, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    :goto_1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_5

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    invoke-static {v6, v3, v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    invoke-static {v4, v6, v1, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :goto_2
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_7
    iget-object v5, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    invoke-static {v4, v5, v1, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v2, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    iget v2, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_4
    sub-int/2addr v2, v1

    goto :goto_5

    :cond_a
    iget v2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :goto_5
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformStashYFraction:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_6
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    int-to-float p0, p0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p0}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_b
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    return-void
.end method
