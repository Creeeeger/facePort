.class public Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mCircleCue:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mIgnoreImageView:Landroid/widget/ImageView;

.field public final mIgnoreRepeatObserver:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$1;

.field public mIgnoreRepeatPeriod:F

.field public mTestImageView:Landroid/widget/ImageView;

.field public switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mIgnoreRepeatObserver:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$1;

    return-void
.end method


# virtual methods
.method public final getLayoutId()I
    .locals 0

    const p0, 0x7f0d0453

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138f

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "touch_blocking_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d044c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mCircleCue:Landroid/view/View;

    const v0, 0x7f0a0fc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mTestImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mCircleCue:Landroid/view/View;

    const v0, 0x7f0a0fcf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mIgnoreImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mTestImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/16 v1, 0x138f

    const-string v2, "A11Y0001"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mIgnoreRepeatObserver:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "touch_blocking_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mIgnoreRepeatObserver:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "IgnoreRepeatPreferenceFragment"

    const-string/jumbo v1, "updateSwitchBarToggleSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatUtils;->isIgnoreRepeatEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public final onValueChange(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "touch_blocking_period"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatUtils;->getIgnoreRepeatValue(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "4.0"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setupPicker(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mValueChangeListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;

    const p1, 0x7f1400f9

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPickerDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPickerDescription:Landroid/widget/TextView;

    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPickerDescription:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPickerDescription:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLongClickable(Z)V

    const p1, 0x7f14008d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setButtonsColor(Landroid/content/Context;Landroid/widget/Button;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setSwitchBarPadding(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatUtils;->isIgnoreRepeatEnabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    return-void
.end method
