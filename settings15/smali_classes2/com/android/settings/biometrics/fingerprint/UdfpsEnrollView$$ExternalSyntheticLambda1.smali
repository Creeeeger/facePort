.class public final synthetic Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;III)V
    .locals 0

    iput p4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$2:I

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget v4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$2:I

    iget-object v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    iput-boolean v2, v5, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    invoke-virtual {v5, v4, p0, v0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    iget-object p0, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    iget-boolean v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mAccessibilityEnabled:Z

    const/4 v6, 0x0

    if-nez v5, :cond_5

    if-nez v5, :cond_5

    iget v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    if-eq v5, v4, :cond_5

    iget v7, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne v7, v4, :cond_2

    goto :goto_0

    :cond_2
    sub-int v7, v5, v7

    invoke-virtual {v3, v5, v0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v5

    if-lt v7, v5, :cond_5

    iget v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v5

    if-ge v7, v5, :cond_5

    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v5, :cond_3

    sget-boolean v5, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "com.android.systemui.biometrics.UdfpsEnrollHelper.scale"

    const/4 v9, -0x2

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v7

    :cond_4
    iget v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mLocationsEnrolled:I

    iget v8, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mCenterTouchCount:I

    sub-int/2addr v5, v8

    iget-object v3, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mGuidedEnrollmentPoints:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/2addr v5, v8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v7

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v7

    invoke-direct {v5, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentX:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v3, v7

    if-nez v8, :cond_7

    iget v8, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentY:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    goto/16 :goto_4

    :cond_7
    :goto_2
    new-array v8, v1, [F

    aput v3, v8, v0

    aput v7, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v7, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;I)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v7, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentY:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    new-array v9, v1, [F

    aput v7, v9, v0

    aput v8, v9, v2

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;I)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v8, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_8

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    const-wide/16 v5, 0x258

    goto :goto_3

    :cond_8
    const-wide/16 v5, 0x320

    :goto_3
    new-array v8, v1, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$1;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v0

    aput-object v7, v6, v2

    aput-object v8, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    :goto_4
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz v3, :cond_b

    iget v5, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    if-eq v5, v4, :cond_b

    iget v6, v3, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne v6, v4, :cond_a

    goto :goto_5

    :cond_a
    sub-int v4, v5, v6

    invoke-virtual {v3, v5, v1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v1

    if-lt v4, v1, :cond_b

    move v0, v2

    :cond_b
    :goto_5
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    if-ne v1, v0, :cond_c

    goto :goto_6

    :cond_c
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x40490fdb    # (float)Math.PI
    .end array-data
.end method
