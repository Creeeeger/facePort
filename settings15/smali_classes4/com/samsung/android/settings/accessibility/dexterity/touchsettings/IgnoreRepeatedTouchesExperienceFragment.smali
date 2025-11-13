.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;
.super Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

.field public mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

.field public mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

.field public mLastPressTime1:J

.field public mLastPressTime2:J

.field public mLastPressTime3:J

.field public final mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;

.field public mTimer1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

.field public mTimer2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

.field public mTimer3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mTimer3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda3;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime1:J

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime2:J

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mLastPressTime3:J

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1399

    return p0
.end method

.method public final getTouchValue(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatUtils;->getIgnoreRepeatValue(Landroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final ignore(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mIgnore:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const p1, 0x7f1411ea

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final initViews$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v1, 0x7f1411e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->isAnySuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer1:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer2:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer3:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer1:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer3:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final isAnySuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1400f8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fromPicker"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->launchFragment$1(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->launchFragment$1(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->initViews$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final overTime(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)Z
    .locals 6

    iget v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mTimeUp:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v2, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v0, 0x7f1411eb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->isAnySuccess()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const v0, 0x7f1411e8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120062

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainButton:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public final removeViews()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final resetCircles()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v1, 0x7f1411e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->STAND_BY:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iput v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iput v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final timeUp(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;)V
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mIgnore:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mTimeUp:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    const v2, 0x7f1411ed

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
