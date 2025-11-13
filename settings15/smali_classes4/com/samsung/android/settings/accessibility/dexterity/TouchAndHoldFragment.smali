.class public Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCustomRadioButton:Landroid/widget/RadioButton;

.field public mDescription:Landroid/widget/TextView;

.field public mHorizontalPadding:I

.field public mLongRadioButton:Landroid/widget/RadioButton;

.field public mMediumRadioButton:Landroid/widget/RadioButton;

.field public mRootView:Landroid/view/View;

.field public mShortRadioButton:Landroid/widget/RadioButton;

.field public mTryButton:Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

.field public mVeryShortRadioButton:Landroid/widget/RadioButton;

.field public final radioGroupButtonChangeListener:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->radioGroupButtonChangeListener:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138d

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07137c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mTryButton:Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mTryButton:Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0450

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mHorizontalPadding:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/16 v1, 0x138d

    const-string v2, "A11Y0001"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0c2f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0604f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mHorizontalPadding:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0c2d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->radioGroupButtonChangeListener:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a1092

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mTryButton:Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

    new-instance v2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a10ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mVeryShortRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f0a0e33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mShortRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f0a0950

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mMediumRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f0a08fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mLongRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f0a0472

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mCustomRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mTryButton:Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setButtonsColor(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x12c

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mVeryShortRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mShortRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mMediumRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mLongRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mCustomRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a04d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mCustomRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
