.class public final Lcom/android/wm/shell/common/split/DividerView$11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v3, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$4;

    :goto_0
    iget v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iget v4, v1, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverBgScaleSize:I

    add-int/2addr v4, v2

    filled-new-array {v4, v2}, [I

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    const-string/jumbo v4, "scaleX"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v3, v3, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v5, v4, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v4, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iget v6, v4, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    if-eqz v7, :cond_1

    const v7, 0x7f071451

    goto :goto_1

    :cond_1
    const v7, 0x7f071450

    :goto_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v5, v4, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v4, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v4, v4, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$11;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
