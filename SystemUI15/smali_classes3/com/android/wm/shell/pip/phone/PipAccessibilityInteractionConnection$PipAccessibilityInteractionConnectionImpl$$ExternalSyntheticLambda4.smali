.class public final synthetic Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iput-wide p2, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$1:J

    iput p4, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$2:I

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$3:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$4:I

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$5:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iget-wide v1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$1:J

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$2:I

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$3:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$4:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda4;->f$5:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, v1, v6

    const/4 v2, 0x0

    if-nez v1, :cond_a

    const v1, 0x7f0a008f

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const/4 v7, 0x1

    if-ne v3, v1, :cond_1

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    if-ne v1, v3, :cond_0

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v1, v3}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3, v1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;I)V

    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v1, v3}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3, v1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;I)V

    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    :goto_0
    move v2, v7

    goto/16 :goto_4

    :cond_1
    const v1, 0x7f0a0090

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    if-ne v3, v1, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v8, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    if-ne v3, v7, :cond_3

    iget v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getStashInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    :goto_2
    int-to-float v4, v4

    goto :goto_3

    :cond_3
    iget-object v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    sub-int/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getStashInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    goto :goto_2

    :goto_3
    float-to-int v6, v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v4, v10

    float-to-int v4, v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v9, v4, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v8, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked$1(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    goto :goto_0

    :cond_4
    const v1, 0x7f0a0091

    if-ne v3, v1, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mUnstashCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v6, v2, v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x10

    if-eq v3, v1, :cond_9

    const/high16 v1, 0x40000

    if-eq v3, v1, :cond_8

    const/high16 v1, 0x100000

    if-eq v3, v1, :cond_7

    const v1, 0x1020042

    if-eq v3, v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->dismissPip()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v8, v2, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip$1(ZZ)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    check-cast v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v4

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(Landroid/graphics/Rect;ZZZ)V

    goto/16 :goto_0

    :cond_a
    :goto_4
    :try_start_0
    invoke-interface {p0, v2, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
