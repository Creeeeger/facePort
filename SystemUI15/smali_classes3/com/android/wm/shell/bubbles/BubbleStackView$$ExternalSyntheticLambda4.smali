.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getDotCenter()[F

    move-result-object p0

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    iput-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    iput-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->fade(ZLandroid/graphics/PointF;ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v4

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget v7, v6, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getDotCenter()[F

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iget-object v9, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v9, v9, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    iput v9, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07101a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    iput v9, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr v9, v11

    iput v9, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;)V

    iput-boolean v4, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    iput v7, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    iput-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    iput-object v6, v2, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    invoke-virtual {v2, v10}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v5, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p0, :cond_4

    sget-object v1, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    invoke-static {}, Lcom/android/wm/shell/Flags;->enableBubbleStashing()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
