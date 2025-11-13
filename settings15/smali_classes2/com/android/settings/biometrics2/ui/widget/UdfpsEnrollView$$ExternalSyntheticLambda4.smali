.class public final synthetic Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    iput p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    iget v4, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;->f$1:I

    iget p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;->f$2:I

    iget-object v5, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;

    iput-boolean v1, v5, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    invoke-virtual {v5, v4, p0, v0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    iget-object v3, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    iget v5, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iput p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    :cond_0
    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    if-eq v4, p0, :cond_1

    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mLocationsEnrolled:I

    add-int/2addr p0, v1

    iput p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mLocationsEnrolled:I

    invoke-virtual {v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->isCenterEnrollmentStage()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCenterTouchCount:I

    add-int/2addr p0, v1

    iput p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCenterTouchCount:I

    :cond_1
    iput v4, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    invoke-virtual {v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->isCenterEnrollmentStage()Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-boolean p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mAccessibilityEnabled:Z

    const/4 v4, 0x0

    if-nez p0, :cond_6

    if-nez p0, :cond_6

    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    if-eq p0, v6, :cond_6

    iget v5, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    sub-int v5, p0, v5

    invoke-virtual {v3, p0, v0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->getStageThresholdSteps(II)I

    move-result p0

    if-lt v5, p0, :cond_6

    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    invoke-virtual {v3, p0, v1}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->getStageThresholdSteps(II)I

    move-result p0

    if-ge v5, p0, :cond_6

    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez p0, :cond_4

    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p0, :cond_5

    :cond_4
    iget-object p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v7, "com.android.systemui.biometrics.UdfpsEnrollHelper.scale"

    const/4 v8, -0x2

    invoke-static {p0, v7, v5, v8}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    :cond_5
    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mLocationsEnrolled:I

    iget v7, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCenterTouchCount:I

    sub-int/2addr p0, v7

    iget-object v7, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mGuidedEnrollmentPoints:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/2addr p0, v8

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    iget v8, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v5

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, v5

    invoke-direct {v7, v8, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_6
    :goto_0
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentX:F

    iget v5, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v8, p0, v5

    if-nez v8, :cond_8

    iget v8, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentY:F

    iget v9, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    goto/16 :goto_4

    :cond_8
    :goto_2
    new-array v8, v2, [F

    aput p0, v8, v0

    aput v5, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v5, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;I)V

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v5, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentY:F

    iget v8, v7, Landroid/graphics/PointF;->y:F

    new-array v9, v2, [F

    aput v5, v9, v0

    aput v8, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v8, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3, v1}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;I)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v8, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v4

    if-nez v8, :cond_9

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v7, v4

    if-nez v4, :cond_9

    const-wide/16 v7, 0x258

    goto :goto_3

    :cond_9
    const-wide/16 v7, 0x320

    :goto_3
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;I)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v7, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$1;

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object p0, v8, v0

    aput-object v5, v8, v1

    aput-object v4, v8, v2

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    :goto_4
    iget p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    if-eq p0, v6, :cond_c

    iget v4, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    if-ne v4, v6, :cond_b

    goto :goto_5

    :cond_b
    sub-int v4, p0, v4

    invoke-virtual {v3, p0, v2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->getStageThresholdSteps(II)I

    move-result p0

    if-lt v4, p0, :cond_c

    move v0, v1

    :cond_c
    :goto_5
    iget-boolean p0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    if-ne p0, v0, :cond_d

    goto :goto_6

    :cond_d
    iput-boolean v0, v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40490fdb    # (float)Math.PI
    .end array-data
.end method
