.class abstract Landroid/widget/MultiSelectPopupWindow$HandleView;
.super Landroid/view/View;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final blacklist HANDLE_TYPE_END:I = 0x2

.field static final blacklist HANDLE_TYPE_NONE:I = 0x0

.field static final blacklist HANDLE_TYPE_START:I = 0x1

.field static final blacklist HEIGHT:Ljava/lang/String; = "height"

.field static final blacklist MAGNIFYING_FACTOR:F = 1.5f

.field static final blacklist WIDTH:Ljava/lang/String; = "width"


# instance fields
.field protected blacklist mBaselineY:I

.field private final blacklist mContainer:Landroid/widget/PopupWindow;

.field protected blacklist mDrawable:Landroid/graphics/drawable/Drawable;

.field protected blacklist mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected blacklist mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected blacklist mEndRange:I

.field public blacklist mHandleType:I

.field protected blacklist mHorizontalGravity:I

.field protected blacklist mHotspotX:I

.field private blacklist mIdealVerticalOffset:F

.field protected blacklist mIsDragging:Z

.field private blacklist mIsResetAnimating:Z

.field private blacklist mLastParentX:I

.field private blacklist mLastParentY:I

.field private blacklist mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mMinSize:I

.field protected blacklist mPositionHasChanged:Z

.field protected blacklist mPositionX:I

.field protected blacklist mPositionY:I

.field private blacklist mPreviousOffset:I

.field private blacklist mResetAnimator:Landroid/animation/ValueAnimator;

.field protected blacklist mStartRange:I

.field private blacklist mTouchOffsetY:F

.field private blacklist mTouchToWindowOffsetX:F

.field private blacklist mTouchToWindowOffsetY:F

.field protected blacklist mbSwitchCursor:Z

.field final synthetic blacklist this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsResetAnimating(Landroid/widget/MultiSelectPopupWindow$HandleView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsResetAnimating(Landroid/widget/MultiSelectPopupWindow$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .line 696
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 697
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 665
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 666
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    .line 673
    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    .line 686
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    .line 698
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 699
    .local v2, "contentHolder":Landroid/widget/LinearLayout;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 700
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10102c8

    invoke-direct {v3, v4, v0, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 701
    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 702
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 703
    const/16 p1, 0x3ea

    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 704
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 705
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    iput-object p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 708
    iput-object p3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 710
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateDrawable()V

    .line 711
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->recalHandleView()V

    .line 712
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10504e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    .line 715
    iget-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 716
    iget-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 717
    return-void
.end method

.method private blacklist getPreferredHeight()I
    .locals 2

    .line 785
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist getPreferredWidth()I
    .locals 2

    .line 781
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist isPositionVisible(II)Z
    .locals 7
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .line 857
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetTEMP_POSITION()[F

    move-result-object v0

    monitor-enter v0

    .line 858
    :try_start_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetTEMP_POSITION()[F

    move-result-object v1

    .line 859
    .local v1, "position":[F
    int-to-float v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 860
    int-to-float v2, p2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 861
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 863
    .local v2, "view":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_5

    .line 864
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v5

    if-eq v2, v5, :cond_0

    .line 865
    aget v5, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v1, v3

    .line 866
    aget v5, v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v1, v4

    .line 869
    :cond_0
    aget v5, v1, v3

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    aget v5, v1, v4

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_4

    aget v5, v1, v3

    .line 870
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    aget v5, v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    goto :goto_2

    .line 874
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_2

    .line 875
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 878
    :cond_2
    aget v5, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v1, v3

    .line 879
    aget v5, v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v1, v4

    .line 881
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 882
    .local v5, "parent":Landroid/view/ViewParent;
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_3

    .line 883
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    move-object v2, v6

    goto :goto_1

    .line 885
    :cond_3
    const/4 v2, 0x0

    .line 887
    .end local v5    # "parent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 871
    :cond_4
    :goto_2
    monitor-exit v0

    return v3

    .line 888
    .end local v1    # "position":[F
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    monitor-exit v0

    .line 889
    return v4

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isVisible()Z
    .locals 2

    .line 849
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x1

    return v0

    .line 853
    :cond_0
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    invoke-direct {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method private blacklist magnifyHandleView()V
    .locals 11

    .line 1103
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->requestLayout()V

    .line 1106
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1107
    .local v0, "drawableStartWidth":I
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1108
    .local v1, "drawableStartHeight":I
    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1109
    .local v2, "drawableTargetWidth":I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 1111
    .local v3, "drawableTargetHeight":I
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/PropertyValuesHolder;

    .line 1112
    .local v5, "holders":[Landroid/animation/PropertyValuesHolder;
    new-array v6, v4, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    const-string/jumbo v9, "width"

    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1113
    new-array v4, v4, [I

    aput v1, v4, v7

    aput v3, v4, v8

    const-string v6, "height"

    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v5, v8

    .line 1115
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    .line 1116
    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1117
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1118
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/MultiSelectPopupWindow$HandleView$1;

    invoke-direct {v6, p0}, Landroid/widget/MultiSelectPopupWindow$HandleView$1;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1129
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/MultiSelectPopupWindow$HandleView$2;

    invoke-direct {v6, p0, v2, v3}, Landroid/widget/MultiSelectPopupWindow$HandleView$2;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;II)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1135
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1136
    return-void
.end method

.method private blacklist resetHandleView()V
    .locals 12

    .line 1139
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 1143
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1144
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1145
    .local v1, "drawableStartWidth":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1147
    .local v2, "drawableStartHeight":I
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1148
    .local v3, "drawableTargetWidth":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1150
    .local v4, "drawableTargetHeight":I
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    .line 1151
    .local v6, "holders":[Landroid/animation/PropertyValuesHolder;
    new-array v7, v5, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    const/4 v9, 0x1

    aput v3, v7, v9

    const-string/jumbo v10, "width"

    invoke-static {v10, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1152
    new-array v5, v5, [I

    aput v2, v5, v8

    aput v4, v5, v9

    const-string v7, "height"

    invoke-static {v7, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v6, v9

    .line 1154
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    .line 1155
    const-wide/16 v7, 0xfa

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1156
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x3eeb851f    # 0.46f

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1157
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/widget/MultiSelectPopupWindow$HandleView$3;

    invoke-direct {v7, p0}, Landroid/widget/MultiSelectPopupWindow$HandleView$3;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1172
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/widget/MultiSelectPopupWindow$HandleView$4;

    invoke-direct {v7, p0}, Landroid/widget/MultiSelectPopupWindow$HandleView$4;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1183
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 1184
    return-void
.end method


# virtual methods
.method protected blacklist calculateForSwitchingCursor()Z
    .locals 1

    .line 1084
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist dismiss()V
    .locals 2

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 833
    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    .line 834
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 835
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    .line 836
    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbSwitchCursor:Z

    .line 837
    return-void
.end method

.method public abstract blacklist getCurrentCursorOffset()I
.end method

.method public blacklist getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 752
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v0

    .line 753
    .local v0, "left":I
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    .line 754
    .local v1, "hotspot":I
    const/4 v2, 0x0

    .line 756
    .local v2, "offset":I
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHorizontalGravity:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 764
    :pswitch_1
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v2, v4, 0x4

    goto :goto_1

    .line 758
    :pswitch_2
    div-int/lit8 v2, p1, 0x4

    .line 759
    goto :goto_1

    .line 761
    :pswitch_3
    div-int/lit8 v2, p1, 0x2

    .line 762
    nop

    .line 767
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    sub-int v5, v0, v5

    sub-int v6, v2, v1

    sub-int v6, v0, v6

    add-int/2addr v6, p1

    invoke-direct {v4, v5, v3, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected blacklist getHorizontalGravity(Z)I
    .locals 2
    .param p1, "isRtlRun"    # Z

    .line 729
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne p1, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    :goto_1
    return v0
.end method

.method protected blacklist getHorizontalOffset()I
    .locals 3

    .line 733
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredWidth()I

    move-result v0

    .line 734
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 736
    .local v1, "drawWidth":I
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHorizontalGravity:I

    packed-switch v2, :pswitch_data_0

    .line 742
    :pswitch_0
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 743
    .local v2, "left":I
    goto :goto_0

    .line 745
    .end local v2    # "left":I
    :pswitch_1
    sub-int v2, v0, v1

    .restart local v2    # "left":I
    goto :goto_0

    .line 738
    .end local v2    # "left":I
    :pswitch_2
    const/4 v2, 0x0

    .line 739
    .restart local v2    # "left":I
    nop

    .line 748
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract blacklist getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public blacklist hide()V
    .locals 1

    .line 840
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    .line 841
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$mgetPositionListener(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 842
    return-void
.end method

.method public blacklist initPreviousOffset()V
    .locals 1

    .line 1092
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1093
    return-void
.end method

.method public blacklist isDragging()Z
    .locals 1

    .line 1072
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    return v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 845
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public blacklist onDetached()V
    .locals 0

    .line 1079
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 975
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 976
    .local v0, "drawWidth":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 978
    .local v1, "left":I
    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    if-nez v2, :cond_0

    .line 979
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 982
    return-void
.end method

.method blacklist onHandleMoved()V
    .locals 0

    .line 1076
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 772
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 773
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 774
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 773
    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 778
    :goto_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 986
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 987
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 988
    const-string v2, "MultiSelectPopupWindow"

    const-string v3, "getTextFormultiSelection() text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return v1

    .line 992
    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v2, p1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/MultiSelectPopupWindow;Landroid/view/MotionEvent;)V

    .line 994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 1063
    :pswitch_0
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1064
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    .line 1065
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->resetHandleView()V

    goto/16 :goto_2

    .line 1019
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    .line 1020
    .local v2, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    .line 1022
    .local v3, "rawY":F
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v6, v5

    sub-float/2addr v4, v6

    .line 1023
    .local v4, "previousVerticalOffset":F
    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    int-to-float v5, v5

    sub-float/2addr v6, v5

    .line 1025
    .local v6, "currentVerticalOffset":F
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    cmpg-float v7, v4, v5

    if-gez v7, :cond_1

    .line 1026
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1027
    .local v5, "newVerticalOffset":F
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 1029
    .end local v5    # "newVerticalOffset":F
    :cond_1
    cmpg-float v7, v6, v4

    if-gez v7, :cond_2

    .line 1030
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1031
    .restart local v5    # "newVerticalOffset":F
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 1034
    .end local v5    # "newVerticalOffset":F
    :cond_2
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1035
    .restart local v5    # "newVerticalOffset":F
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1037
    :goto_0
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1039
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    sub-float v7, v2, v7

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 1040
    .local v7, "newPosX":F
    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v3, v8

    iget v9, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    add-float/2addr v8, v9

    .line 1042
    .local v8, "newPosY":F
    invoke-virtual {p0, v7, v8}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updatePosition(FF)V

    .line 1043
    goto :goto_2

    .line 1047
    .end local v2    # "rawX":F
    .end local v3    # "rawY":F
    .end local v4    # "previousVerticalOffset":F
    .end local v5    # "newVerticalOffset":F
    .end local v6    # "currentVerticalOffset":F
    .end local v7    # "newPosX":F
    .end local v8    # "newPosY":F
    :pswitch_2
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1048
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    .line 1049
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->resetHandleView()V

    .line 1050
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    iput-boolean v3, v2, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 1051
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->refreshForSwitchingCursor()Z

    .line 1053
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1054
    .local v2, "selStart":I
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1056
    .local v3, "selEnd":I
    if-le v2, v3, :cond_4

    .line 1057
    move-object v4, v0

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    .line 996
    .end local v2    # "selStart":I
    .end local v3    # "selEnd":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    .line 997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v2

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 999
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1000
    .local v2, "range":[I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v4

    .line 1002
    .local v4, "flag":Z
    if-eqz v4, :cond_3

    .line 1003
    aget v3, v2, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStartRange:I

    .line 1004
    aget v3, v2, v1

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mEndRange:I

    goto :goto_1

    .line 1006
    :cond_3
    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStartRange:I

    .line 1007
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mEndRange:I

    .line 1009
    :goto_1
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$mgetPositionListener(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v3

    .line 1010
    .local v3, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    .line 1011
    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionY()I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    .line 1012
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1013
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->magnifyHandleView()V

    .line 1014
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v5

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 1015
    nop

    .line 1068
    .end local v2    # "range":[I
    .end local v3    # "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .end local v4    # "flag":Z
    :cond_4
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist positionAtCursorOffset(IZZ)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .line 893
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 894
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 898
    .local v1, "offsetChanged":Z
    :goto_0
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_5

    .line 899
    :cond_2
    if-eqz v1, :cond_3

    .line 900
    invoke-virtual {p0, p1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateSelection(I)V

    .line 902
    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 903
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    const/high16 v4, -0x41000000    # -0.5f

    .line 905
    .local v4, "compensation":F
    :goto_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v5, v4

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    .line 906
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    .line 907
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    .line 909
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    .line 910
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    .line 911
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    .line 913
    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 914
    iput-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 916
    .end local v3    # "line":I
    .end local v4    # "compensation":F
    :cond_5
    return-void
.end method

.method public blacklist recalHandleView()V
    .locals 3

    .line 1096
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1097
    .local v0, "handleHeight":I
    int-to-float v1, v0

    const v2, -0x41666666    # -0.3f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    .line 1098
    int-to-float v1, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    .line 1099
    return-void
.end method

.method public blacklist refreshForSwitchingCursor()Z
    .locals 1

    .line 1088
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist show()V
    .locals 10

    .line 789
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$mgetPositionListener(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 794
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 796
    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 797
    .local v3, "window":[I
    new-array v1, v1, [I

    .line 798
    .local v1, "screen":[I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 799
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 800
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    aget v5, v3, v2

    add-int/2addr v4, v5

    .line 801
    .local v4, "positionX":I
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    const/4 v6, 0x1

    aget v7, v3, v6

    add-int/2addr v5, v7

    .line 802
    .local v5, "positionY":I
    aget v7, v1, v2

    aget v8, v3, v2

    sub-int/2addr v7, v8

    .line 803
    .local v7, "gapX":I
    aget v8, v1, v6

    aget v9, v3, v6

    sub-int/2addr v8, v9

    .line 805
    .local v8, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 806
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_1

    .line 807
    add-int/2addr v4, v7

    .line 808
    add-int/2addr v5, v8

    .line 811
    :cond_1
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v5, v0, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-eq v0, v9, :cond_3

    .line 814
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 816
    add-int/2addr v4, v7

    .line 817
    add-int/2addr v5, v8

    .line 818
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 820
    :cond_3
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 822
    :try_start_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 825
    const-string v2, "MultiSelectPopupWindow"

    const-string/jumbo v6, "showAtLocation occur BadTokenException"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    return-void
.end method

.method protected blacklist updateDrawable()V
    .locals 3

    .line 720
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 721
    .local v0, "offset":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .line 723
    .local v1, "isRtlCharAtOffset":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 724
    invoke-virtual {p0, v2, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    .line 725
    invoke-virtual {p0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHorizontalGravity:I

    .line 726
    return-void
.end method

.method public abstract blacklist updatePosition(FF)V
.end method

.method public blacklist updatePosition(IIZZ)V
    .locals 10
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 919
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 920
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_9

    .line 921
    :cond_0
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 922
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    if-eq p2, v1, :cond_2

    .line 923
    :cond_1
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    .line 924
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 925
    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    .line 926
    iput p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    .line 928
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onHandleMoved()V

    .line 931
    :cond_3
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p3, :cond_7

    .line 932
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 933
    .local v2, "window":[I
    new-array v0, v0, [I

    .line 934
    .local v0, "screen":[I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 935
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 936
    aget v3, v0, v1

    aget v4, v2, v1

    sub-int/2addr v3, v4

    .line 937
    .local v3, "gapX":I
    const/4 v4, 0x1

    aget v5, v0, v4

    aget v6, v2, v4

    sub-int/2addr v5, v6

    .line 938
    .local v5, "gapY":I
    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    add-int/2addr v6, p1

    .line 939
    .local v6, "positionX":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    add-int/2addr v7, p2

    .line 941
    .local v7, "positionY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 942
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v4, v8, :cond_4

    .line 943
    add-int/2addr v6, v3

    .line 944
    add-int/2addr v7, v5

    .line 946
    :cond_4
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 948
    :cond_5
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-eq v8, v9, :cond_6

    .line 949
    iget-object v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v4}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 950
    add-int/2addr v6, v3

    .line 951
    add-int/2addr v7, v5

    .line 953
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v4, v8, v1, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 955
    :cond_6
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 957
    :try_start_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v4, v8, v1, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    goto :goto_0

    .line 958
    :catch_0
    move-exception v4

    .line 959
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 960
    const-string v8, "MultiSelectPopupWindow"

    const-string/jumbo v9, "showAtLocation occur BadTokenException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v0    # "screen":[I
    .end local v2    # "window":[I
    .end local v3    # "gapX":I
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v5    # "gapY":I
    .end local v6    # "positionX":I
    .end local v7    # "positionY":I
    :goto_0
    goto :goto_1

    .line 965
    :cond_7
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 966
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    .line 969
    :cond_8
    :goto_1
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 971
    :cond_9
    return-void
.end method

.method protected abstract blacklist updateSelection(I)V
.end method
