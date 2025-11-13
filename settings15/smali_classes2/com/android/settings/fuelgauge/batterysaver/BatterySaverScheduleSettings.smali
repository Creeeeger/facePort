.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mContext:Landroid/content/Context;

.field public mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

.field public mSaverPercentage:I

.field public mSaverScheduleKey:Ljava/lang/String;

.field public mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

.field final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar$2()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 0

    check-cast p3, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    const v2, 0x7f1405d2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "key_battery_saver_no_schedule"

    invoke-direct {v1, v3, v2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    const v2, 0x7f1405d3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v2, "key_battery_saver_percentage"

    invoke-direct {v1, v2, p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getBatterySaverScheduleKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b9

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17005a

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const v2, 0x7f0d0548

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setOnSeekBarChangeListener(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const-string v3, "battery_saver_seek_bar"

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar$2()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getBatterySaverScheduleKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSaverScheduleKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSaverPercentage:I

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "key_battery_saver_no_schedule"

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "key_battery_saver_percentage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "extra_confirm_only"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "extra_power_save_mode_trigger"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "extra_power_save_mode_trigger_level"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not a valid key for BatterySaverScheduleRadioButtonsController"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v6, v1

    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v6, v1

    :cond_3
    const-string p1, "automatic_power_save_mode"

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "low_power_trigger_level"

    invoke-static {v2, p1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v6, :cond_4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "suppress_auto_battery_saver_suggestion"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar$2()V

    :cond_5
    move v1, v4

    :goto_1
    return v1
.end method
