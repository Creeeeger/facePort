.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;
.super Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;

.field public mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

.field public mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

.field public mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

.field public mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

.field public final mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1397

    return p0
.end method

.method public final getTouchValue(Landroid/content/Context;)F
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "long_press_timeout"

    const/16 v0, 0x1f4

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final initViews$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v1, 0x7f142f4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer1:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer2:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer3:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer1:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer3:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f142f4e

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

    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->launchFragment$1(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->launchFragment$1(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->initViews$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final removeViews()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final resetCircles$2()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    const v1, 0x7f142f4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->STAND_BY:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iput v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
