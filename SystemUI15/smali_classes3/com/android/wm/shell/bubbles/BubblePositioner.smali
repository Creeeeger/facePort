.class public final Lcom/android/wm/shell/bubbles/BubblePositioner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

.field public mBubbleBarTopOnScreen:I

.field public mBubbleElevation:I

.field public mBubbleOffscreenAmount:I

.field public mBubbleOverflowLandscapeHeight:I

.field public mBubbleOverflowMarginBottom:I

.field public mBubblePaddingTop:I

.field public mBubbleSize:I

.field public final mContext:Landroid/content/Context;

.field public mDefaultMaxBubbles:I

.field public mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

.field public mExpandedViewLargeScreenInsetClosestEdge:I

.field public mExpandedViewLargeScreenInsetFurthestEdge:I

.field public mExpandedViewLargeScreenWidth:I

.field public mExpandedViewMinHeight:I

.field public mExpandedViewPadding:I

.field public mImeHeight:I

.field public mImeVisible:Z

.field public mInsets:Landroid/graphics/Insets;

.field public mManageButtonHeight:I

.field public mManageButtonHeightIncludingMargins:I

.field public mMaxBubbles:I

.field public mMinimumFlyoutWidthLargeScreen:I

.field public mOverflowHeight:I

.field public mOverflowWidth:I

.field public mPointerHeight:I

.field public mPointerMargin:I

.field public mPointerOverlap:I

.field public mPointerWidth:I

.field public mPositionRect:Landroid/graphics/Rect;

.field public mRestingStackPosition:Landroid/graphics/PointF;

.field public mRotation:I

.field public mScreenRect:Landroid/graphics/Rect;

.field public mShowingInBubbleBar:Z

.field public mSpacingBetweenBubbles:I

.field public mStackOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    sget-object v0, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    return-void
.end method


# virtual methods
.method public final getAllowableStackPositionRegion(I)Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mStackOffset:I

    add-int/2addr p1, v2

    :goto_1
    int-to-float p1, p1

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    goto :goto_1

    :goto_2
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOffscreenAmount:I

    neg-int v3, v3

    int-to-float v4, v3

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v3, p0

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v1

    add-float/2addr v1, p1

    int-to-float p0, p0

    add-float/2addr v1, p0

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final getBubbleBarExpandedViewBounds(Landroid/graphics/Rect;ZZ)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar(Z)I

    move-result p3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget p2, p2, Landroid/graphics/Insets;->left:I

    add-int/2addr p2, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    sub-int/2addr p2, v0

    :goto_1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public final getBubbleRowStart(Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)F
    .locals 5

    iget p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    mul-int/2addr p1, v2

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForLargeScreen()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v4, v3, Landroid/graphics/Insets;->bottom:I

    iget v3, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mManageButtonHeight:I

    sub-int/2addr v2, v3

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr v1, v0

    sub-float/2addr p0, v1

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    int-to-float v1, v1

    :cond_3
    div-float/2addr p1, v0

    sub-float p0, v1, p1

    :goto_3
    return p0
.end method

.method public final getDefaultStartPosition(Z)Landroid/graphics/PointF;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;->LEFT:Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;->RIGHT:Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getStartPosition(Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;
    .locals 8

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleRowStart(Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)F

    move-result v2

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    iget v5, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    if-ne v5, v3, :cond_2

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_1

    :cond_2
    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sub-float/2addr v2, v1

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v1, :cond_3

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    sub-int v5, v4, v5

    iget v6, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    add-int/2addr v1, v4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v1, v4

    :goto_3
    sget-boolean v4, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result v4

    add-int/2addr v4, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    sub-int/2addr v4, v1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result v5

    add-int/2addr v5, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    sub-int/2addr v5, v1

    goto :goto_4

    :cond_5
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOffscreenAmount:I

    div-int/2addr v4, v3

    neg-int v4, v4

    sub-int/2addr v5, v4

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    :goto_4
    iget-boolean v1, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->onLeft:Z

    if-eqz v1, :cond_6

    int-to-float v1, v4

    goto :goto_5

    :cond_6
    int-to-float v1, v5

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    if-ne v5, v3, :cond_8

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    div-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    div-int/2addr v1, v3

    int-to-float v1, v1

    :cond_8
    add-float/2addr v1, v2

    move v2, v4

    :goto_5
    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v0, :cond_f

    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_b

    :cond_9
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v4

    int-to-float v4, v6

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iget v4, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    iget v7, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    mul-int/2addr v7, v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleRowStart(Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v7, v4, v6

    if-lez v7, :cond_d

    sub-float/2addr v4, v6

    sub-float/2addr v5, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpg-float v5, v5, v2

    if-gez v5, :cond_c

    iget v4, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    add-int/lit8 v5, v4, -0x1

    iget v7, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    mul-int/2addr v5, v7

    sub-int/2addr v4, v3

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    int-to-float v3, v4

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    :goto_7
    int-to-float v4, v4

    goto :goto_8

    :cond_b
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    goto :goto_7

    :goto_8
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float v5, v4, v3

    sub-float/2addr v4, v3

    sub-float/2addr v5, v6

    sub-float v5, v4, v5

    goto :goto_9

    :cond_c
    move v5, v4

    :cond_d
    :goto_9
    iget p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->selectedIndex:I

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    add-int/2addr v3, p0

    mul-int/2addr p2, v3

    int-to-float p0, p2

    add-float/2addr p0, v5

    cmpg-float p0, p0, v2

    if-gez p0, :cond_e

    goto :goto_a

    :cond_e
    move v2, v5

    :goto_a
    mul-int/2addr v3, p1

    int-to-float p0, v3

    add-float/2addr v2, p0

    :goto_b
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_f
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getExpandedViewContainerPadding(ZZ)[I
    .locals 9

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerOverlap:I

    sub-int/2addr v0, v1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetFurthestEdge:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v3, v3, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    aput v3, v2, v7

    aput v7, v2, v6

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    sub-int v1, p1, v0

    :goto_2
    aput v1, v2, v5

    if-eqz p2, :cond_3

    iget v7, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    :cond_3
    aput v7, v2, v4

    return-object v2

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v3, v1, Landroid/graphics/Insets;->left:I

    iget v8, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    add-int/2addr v3, v8

    iget v1, v1, Landroid/graphics/Insets;->right:I

    add-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr p1, v0

    add-int/2addr v3, p1

    :cond_6
    :goto_3
    aput v3, v2, v7

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v7

    goto :goto_4

    :cond_7
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    :goto_4
    aput p1, v2, v6

    aput v1, v2, v5

    aput v7, v2, v4

    sget-boolean p1, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result p1

    aput p1, v2, v7

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    aput p1, v2, v6

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result p1

    aput p1, v2, v5

    if-eqz p2, :cond_8

    iget v7, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    :cond_8
    aput v7, v2, v4

    :cond_9
    return-object v2
.end method

.method public final getExpandedViewHeight(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)F
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "Overflow"

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v2, v2, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-nez v2, :cond_2

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOverflowLandscapeHeight:I

    int-to-float p0, p0

    return p0

    :cond_2
    if-eqz v1, :cond_3

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowHeight:I

    int-to-float p1, p1

    goto :goto_3

    :cond_3
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    if-eqz v3, :cond_6

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-eqz v4, :cond_5

    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    move p1, v0

    :cond_4
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "Bubble"

    const-string v3, "Couldn\'t find desired height res id"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_5
    :goto_2
    int-to-float p1, v0

    goto :goto_3

    :cond_6
    iget p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    :goto_3
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewMinHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getMaxExpandedViewHeight(Z)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_7
    return p1
.end method

.method public final getExpandedViewHeightForBubbleBar(Z)I
    .locals 2

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowHeight:I

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, p1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getExpandedViewHeightForLargeScreen()I
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v1, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mManageButtonHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    return v1
.end method

.method public final getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "Overflow"

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeight(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewYTopAligned()I

    move-result v3

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOverflowMarginBottom:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mManageButtonHeightIncludingMargins:I

    :goto_2
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    if-nez v5, :cond_3

    iget-boolean v4, v4, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v1

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForLargeScreen()I

    move-result p2

    sub-int/2addr p1, p2

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    return p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v0

    if-eqz v0, :cond_8

    cmpl-float v0, p1, v1

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getPointerPosition(F)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    add-float v1, p2, v0

    int-to-float v4, v2

    add-float/2addr v1, v4

    sub-float v4, p2, v0

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_6

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    cmpl-float v1, v7, v1

    if-lez v1, :cond_6

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    sub-float/2addr p2, v0

    return p2

    :cond_6
    cmpg-float p2, v4, v6

    if-gtz p2, :cond_7

    int-to-float p0, v3

    return p0

    :cond_7
    iget p2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    return p2

    :cond_8
    :goto_4
    int-to-float p0, v3

    return p0
.end method

.method public final getExpandedViewYTopAligned()I
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    goto :goto_0
.end method

.method public final getMaxExpandedViewHeight(Z)I
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForLargeScreen()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewYTopAligned()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    add-int/2addr v2, v3

    :goto_1
    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mManageButtonHeightIncludingMargins:I

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v0

    sub-int/2addr p0, v1

    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getPointerPosition(F)F
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    const v1, 0x3f28e38e

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr p0, p1

    goto :goto_0

    :cond_0
    div-float/2addr v0, v2

    add-float/2addr v0, p1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    int-to-float p0, p0

    sub-float p0, v0, p0

    :goto_0
    return p0
.end method

.method public final getRestingPosition()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition(Z)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getStartPosition(Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;)Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v2, v2, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    sget-object v4, Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;->LEFT:Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(ZF)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070193

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    sget-object v5, Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;->LEFT:Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;

    if-ne p1, v5, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(ZF)V

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getTabletSidePadding()I
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final isStackOnLeft(Landroid/graphics/PointF;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object p1

    :cond_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setRestingPosition(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method public final showBubblesVertically()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    int-to-long v2, v2

    iget-object v4, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInBubbleBar:Z

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v14, 0x3f1

    const/4 v15, 0x0

    const-wide v12, -0x48cf138ab6f6c781L    # -7.588833682885774E-43

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v2, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v3, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr p2, v3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Insets;->top:I

    add-int/2addr p2, v3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr p2, v3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07018f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    const p2, 0x7f070190

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    const p2, 0x7f0b0009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDefaultMaxBubbles:I

    const p2, 0x7f070166

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    const p2, 0x7f070182

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    const p2, 0x7f070191

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOffscreenAmount:I

    const p2, 0x7f070192

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mStackOffset:I

    const p2, 0x7f07015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleElevation:I

    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInBubbleBar:Z

    if-eqz p2, :cond_1

    const p2, 0x7f070153

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean p2, p2, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const v2, 0x3f3851ec    # 0.72f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    goto :goto_1

    :cond_2
    const p2, 0x7f070164

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    :goto_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v2, p2, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v2, :cond_4

    iget-boolean p2, p2, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetFurthestEdge:I

    goto :goto_2

    :cond_3
    const p2, 0x7f070163

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetFurthestEdge:I

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetFurthestEdge:I

    :goto_2
    const p2, 0x7f070165

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    const p2, 0x7f070187

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:I

    const p2, 0x7f070183

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    const p2, 0x7f070184

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    const p2, 0x7f070185

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerOverlap:I

    const p2, 0x7f07016e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mManageButtonHeight:I

    const p3, 0x7f07016f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    iput p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mManageButtonHeightIncludingMargins:I

    const p2, 0x7f070162

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewMinHeight:I

    const p2, 0x7f07017b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowHeight:I

    const p2, 0x7f07017f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOverflowLandscapeHeight:I

    const p2, 0x7f070180

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleOverflowMarginBottom:I

    const p2, 0x7f070199

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMinimumFlyoutWidthLargeScreen:I

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDefaultMaxBubbles:I

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    :cond_5
    return-void
.end method
