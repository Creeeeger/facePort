.class public Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public final mTapDurationObserver:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;

.field public mTapDurationPeriod:F

.field public switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mTapDurationObserver:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;

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

    const/16 p0, 0x138e

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Settings"

    goto :goto_0

    :cond_1
    const-string p2, "SetupWizard"

    :goto_0
    const-string v0, "From"

    invoke-static {v0, p2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const/16 v0, 0x138e

    const-string v1, "A11Y5017"

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "tap_duration_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/AccessibilityNotificationUtil;->updateTapDurationNotification(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/16 v1, 0x138e

    const-string v2, "A11Y0001"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mTapDurationObserver:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tap_duration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mTapDurationObserver:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "TapDurationPreferenceFragment"

    const-string/jumbo v1, "updateSwitchBarToggleSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationUtils;->isTapDurationEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public final onValueChange(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tap_duration_threshold"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f142e4b

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

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setButtonsColor(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationUtils;->getTapDurationValue(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "4.0"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setupPicker(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mValueChangeListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setSwitchBarPadding(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationUtils;->isTapDurationEnabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f142e58

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f142e56

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;I)V

    const v1, 0x7f142e57

    invoke-virtual {p1, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;I)V

    const v1, 0x7f1401f5

    invoke-virtual {p1, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x1

    iput-boolean p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;)V

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
