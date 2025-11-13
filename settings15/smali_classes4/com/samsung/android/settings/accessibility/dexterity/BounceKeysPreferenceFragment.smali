.class public Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/PickerTestTextFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final mBounceKeysHandler:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;

.field public final mBounceKeysObserver:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$2;

.field public mBounceKeysOnKeyListener:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;

.field public mBounceKeysPeriodMilli:J

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlocking:Z

.field public mOldKeyCode:I

.field public switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerTestTextFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysHandler:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysObserver:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$2;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1394

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysUtils;->setBounceKeysEnable(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysOnKeyListener:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerTestTextFragment;->setEditTextOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysObserver:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$2;

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

    const-string v1, "accessibility_bounce_keys"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysObserver:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$2;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public final onValueChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bounce_keys_period"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysUtils;->setBounceKeysEnable(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setSwitchBarPadding(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance p2, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const p2, 0x7f140828

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslSwitchBar;->setSessionDescription(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bounce_keys_period"

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "5.0"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->setupPicker(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mValueChangeListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;

    const p1, 0x7f14082b

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

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEditLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "disableLiveMessage=true;disableGifKeyboard=true;disableSticker=true;disablePrediction=true"

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysOnKeyListener:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysOnKeyListener:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerTestTextFragment;->setEditTextOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    return-void
.end method
