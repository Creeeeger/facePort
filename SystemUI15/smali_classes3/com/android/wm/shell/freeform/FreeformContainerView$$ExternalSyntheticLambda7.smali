.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    sget-object v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ")"

    const-string v5, "[ContainerView] onTouch("

    const-string v6, "FreeformContainer"

    if-eqz v2, :cond_19

    const/16 v7, 0xa

    const/4 v8, 0x1

    if-eq v2, v8, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButton()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez v4, :cond_3

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownX:F

    sub-float/2addr v0, p1

    float-to-double p1, v0

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownY:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mThresholdToMove:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1b

    iput-boolean v8, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    :cond_2
    iput-boolean v8, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    invoke-virtual {p0, v7}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringConfig(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Ready to move"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionX:F

    sub-float v2, v0, v2

    add-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionY:F

    sub-float v2, v1, v2

    add-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionX:F

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionY:F

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringChainEndValue()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez p1, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object p1, p1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") mIsAppIconMoving="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    invoke-static {p1, v0, v6}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    const/16 v0, 0x1e

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 p2, 0x442f0000    # 700.0f

    if-nez p1, :cond_7

    :cond_6
    :goto_0
    move p1, v3

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {p1, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iget-object v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float p1, p1, v9

    if-gtz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float p1, p1, v9

    if-lez p1, :cond_6

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gez v9, :cond_9

    move v9, v8

    goto :goto_1

    :cond_9
    move v9, v3

    :goto_1
    if-eqz v9, :cond_a

    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    iget v11, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_6

    :cond_a
    if-nez v9, :cond_b

    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    iget v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    goto :goto_0

    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_d

    if-eqz v9, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    move-result p1

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpg-float p1, p1, v10

    if-ltz p1, :cond_6

    :cond_c
    if-nez v9, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    move-result p1

    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    int-to-float v9, v9

    add-float/2addr p1, v9

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    move p1, v8

    :goto_2
    const/high16 v1, 0x420c0000    # 35.0f

    if-eqz p1, :cond_e

    iget-object v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, p2

    mul-float/2addr v9, v1

    float-to-int v9, v9

    goto :goto_3

    :cond_e
    move v9, v3

    :goto_3
    if-eqz p1, :cond_f

    iget-object v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v10, p2

    mul-float/2addr v10, v1

    float-to-int p2, v10

    goto :goto_4

    :cond_f
    move p2, v3

    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getX()F

    move-result v10

    int-to-float v9, v9

    add-float/2addr v10, v9

    iget-object v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getY()F

    move-result v9

    int-to-float p2, p2

    add-float/2addr v9, p2

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpl-float p2, p2, v10

    if-gtz p2, :cond_10

    iget p2, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    cmpg-float p2, p2, v10

    if-ltz p2, :cond_10

    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    cmpl-float p2, p2, v9

    if-gtz p2, :cond_10

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p1, v9

    if-gez p1, :cond_11

    :cond_10
    const/16 v7, 0x14

    :cond_11
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringConfig(I)V

    :cond_12
    invoke-virtual {p0, v10, v9, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringChainEndValue()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-boolean p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    if-nez p1, :cond_18

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-ne p1, v8, :cond_17

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz p1, :cond_18

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz p2, :cond_16

    instance-of p2, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result p2

    if-ne p2, v8, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_5

    :cond_15
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v8, v8, v8}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    goto :goto_5

    :cond_16
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_5

    :cond_17
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v8, v8, v8}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_18
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_19
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_1a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_6

    :cond_1a
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :goto_6
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownX:F

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionX:F

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownY:F

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionY:F

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerY:F

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_7
    return v3
.end method
