.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime3:J

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v1

    float-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->isAnySuccess()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->overTime(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float p1, v2

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime3:J

    long-to-float v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->ignore(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->success()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v1, p2

    :cond_7
    :goto_1
    return v1

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_a

    if-eq p1, p2, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime2:J

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    if-nez p1, :cond_e

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result p0

    float-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->overTime(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float p1, v2

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime2:J

    long-to-float v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->ignore(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)V

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->success()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_2
    move v1, p2

    :cond_f
    :goto_3
    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_17

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p1, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_12

    if-eq p1, p2, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    goto :goto_4

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime1:J

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    if-nez p1, :cond_16

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result p0

    float-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->overTime(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float p1, v2

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime1:J

    long-to-float v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_15

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->ignore(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)V

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->success()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_4
    move v1, p2

    :cond_17
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
