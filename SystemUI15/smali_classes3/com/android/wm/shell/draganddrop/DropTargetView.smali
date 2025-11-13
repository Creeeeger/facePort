.class public Lcom/android/wm/shell/draganddrop/DropTargetView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mBlurredBitmapCreated:Z

.field public final mBounds:Landroid/graphics/Rect;

.field public mCapture:Landroid/graphics/Bitmap;

.field public mCurrentDensityDpi:I

.field public mCurrentFontScale:F

.field public mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

.field public mFreeformHeight:I

.field public mFreeformPatialBlurViewHeight:I

.field public mFreeformPatialBlurViewWidth:I

.field public mFreeformWidth:I

.field public mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field public mIsFreeform:Z

.field public mIsNightModeOn:Z

.field public mOrientation:I

.field public mPartialBlurView:Landroid/widget/ImageView;

.field public mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field public mText:Landroid/widget/TextView;

.field public mUiHandler:Landroid/os/Handler;

.field public mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$tplp4yJwUthw95eKri7lNnjwHIU(Lcom/android/wm/shell/draganddrop/DropTargetView;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string p0, "DropTargetView"

    const-string p1, "createBlurredBitmapIfNeeded: bitmap is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;Landroid/graphics/Bitmap;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public final getBackgroundResourceId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PARTIAL_BLUR:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080772

    goto :goto_0

    :cond_0
    const p0, 0x7f08076f

    :goto_0
    return p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PARTIAL_BLUR:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz p0, :cond_2

    const p0, 0x7f080771

    goto :goto_1

    :cond_2
    const p0, 0x7f080770

    :goto_1
    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz p0, :cond_4

    const p0, 0x7f08076e

    goto :goto_2

    :cond_4
    const p0, 0x7f08076d

    :goto_2
    return p0
.end method

.method public final hide()V
    .locals 12

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x7d

    goto :goto_0

    :cond_0
    const/16 v3, 0x50

    :goto_0
    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    new-array v6, v0, [F

    fill-array-data v6, :array_2

    const-string/jumbo v7, "scaleX"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v8, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    const-string/jumbo v10, "scaleY"

    new-array v11, v0, [F

    fill-array-data v11, :array_3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/wm/shell/draganddrop/DropTargetView$3;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/draganddrop/DropTargetView$3;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x5

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v4

    const/4 v1, 0x1

    aput-object v2, v7, v1

    aput-object v5, v7, v0

    const/4 v0, 0x3

    aput-object v9, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public final isLandScapeWithNotMultiSplit()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    return v2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateBounds()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f060140

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v3, :cond_5

    :cond_3
    iput v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07034c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    div-float/2addr p1, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_1
    double-to-float p1, v2

    goto :goto_2

    :cond_4
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03a4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    const v0, 0x7f0a03a3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    const v0, 0x7f0a08cf

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentDensityDpi:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsNightModeOn:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07034c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCurrentFontScale:F

    const v3, 0x3fa66666    # 1.3f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_1
    double-to-float v0, v2

    goto :goto_2

    :cond_1
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final setBlurEffect(I)V
    .locals 11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070345

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_CAPTURED_BLUR:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    sub-int/2addr v1, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x7d0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setBlurEffect: failed, capture failed, "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DropTargetView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    iget-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBlurredBitmapCreated:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBlurredBitmapCreated:Z

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;J)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_7
    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method public final showBlurEffect()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080774

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080773

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7d

    goto :goto_1

    :cond_2
    const/16 v0, 0x50

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->setBlurEffect(I)V

    return-void
.end method

.method public final updateBounds()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->isLandScapeWithNotMultiSplit()Z

    move-result v0

    const v1, 0x7f070347

    const v2, 0x7f070346

    const v3, 0x7f07034b

    const v4, 0x7f070348

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewHeight:I

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget v6, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformWidth:I

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformHeight:I

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewWidth:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mFreeformPatialBlurViewHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_PARTIAL_BLUR:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->showBlurEffect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    const v1, 0x7f13056d

    if-eqz v0, :cond_8

    iget-boolean v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    if-eqz v2, :cond_6

    const v1, 0x7f13056b

    goto :goto_3

    :cond_6
    iget-boolean v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFullscreen:Z

    if-eqz v2, :cond_8

    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsResizable:Z

    if-eqz v0, :cond_7

    const v1, 0x7f13056e

    goto :goto_3

    :cond_7
    const v1, 0x7f130540

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
