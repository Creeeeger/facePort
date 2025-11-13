.class public final Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->resetCircles$1()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-wide v4, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStartPressTime:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    iget-wide v0, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float v0, v0

    iget-object v1, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput v1, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-wide v6, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float v3, v6

    iget-object v6, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->getTouchValue(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    const/4 v6, 0x1

    iput v6, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-wide v6, v3, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float v3, v6

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationExperienceFragment$1;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
