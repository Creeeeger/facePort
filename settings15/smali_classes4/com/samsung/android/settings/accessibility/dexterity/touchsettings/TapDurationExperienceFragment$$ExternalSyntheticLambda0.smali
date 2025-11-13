.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    sget-object v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a029f

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    goto :goto_0

    :cond_1
    const v3, 0x7f0a02a0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    const/4 v3, 0x4

    if-eqz p2, :cond_e

    if-eq p2, v0, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "%.2f"

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const v6, 0x7f142f5e

    goto :goto_1

    :cond_4
    const v6, 0x7f142f5d

    :goto_1
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v6, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float p2, v6

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v4

    add-float/2addr v4, v5

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mCircle:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mHold:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mFail:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v4, 0x7f142e50

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float p2, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v4

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mCircle:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mHold:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    const v4, 0x7f142e53

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mCircle:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mHold:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mFail:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v4, 0x7f142e52

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;

    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStartPressTime:J

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_8
    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-nez p1, :cond_b

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const p2, 0x7f142e4a

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120062

    invoke-virtual {p2, v4, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainButton:Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-eq p2, v0, :cond_c

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-eq p2, v0, :cond_c

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-ne p0, v0, :cond_d

    :cond_c
    move v2, v0

    :cond_d
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_e
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-eqz p2, :cond_11

    if-ne p2, v0, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStartPressTime:J

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {p2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->reset()V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput v2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result p2

    float-to-long v1, p2

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v3, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    if-nez p2, :cond_10

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result p0

    float-to-long v1, p0

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    :goto_3
    move v2, v0

    :cond_11
    :goto_4
    return v2
.end method
