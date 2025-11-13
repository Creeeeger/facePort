.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;
.implements Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;
.implements Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static mAnchorView:I

.field public static final mBlueLightFilterScheduleSummaryString:[I


# instance fields
.field public final isNightModeAvailable:Z

.field public mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

.field public mAntiGlarePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortAntiGlarePreference;

.field public mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

.field public mContext:Landroid/content/Context;

.field public mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

.field public mDivider:Lcom/android/settingslib/widget/LayoutPreference;

.field public mEnhanceComfortDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field public final mEyeComfortScheduledReceiver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;

.field public mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

.field public mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

.field public mOrientation:I

.field public mSetAnchorByView:Z

.field public mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

.field public final mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    const v0, 0x7f14237e

    const v1, 0x7f142386

    const v2, 0x7f142387

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mBlueLightFilterScheduleSummaryString:[I

    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$6;

    const v1, 0x7f170193

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortScheduledReceiver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;

    return-void
.end method


# virtual methods
.method public final getAppContext()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v4, "eyeComfortEnabeld"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;->mLLMContext:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v6, "EyeComfortSettings"

    if-eqz v4, :cond_2

    const-string v4, "[]"

    invoke-static {v6, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;->build()Lcom/samsung/android/settings/bixby/AppContext;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f14238c

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x107e

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final isEnabled$3()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled$3()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled$3()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateEnableStatus(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_type"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter_scheduled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.bluelightfilter"

    const-string v1, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-static {v0, v1, p1}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-eqz p2, :cond_3

    const/16 v0, 0x18

    goto :goto_2

    :cond_3
    const/16 v0, 0x19

    :goto_2
    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p2, :cond_4

    const-wide/16 p1, 0x1

    goto :goto_3

    :cond_4
    const-wide/16 p1, 0x0

    :goto_3
    const/16 v0, 0x107e

    const/16 v1, 0x1cf2

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    :goto_0
    const p1, 0x7f170193

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mOrientation:I

    const-string p1, "com.android.settings.ECS_SCHEDULE_START"

    const-string v2, "com.android.settings.ECS_SCHEDULE_END"

    invoke-static {p1, v2}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortScheduledReceiver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;

    const/4 v8, 0x2

    const-string v6, "com.samsung.android.permission.SEC_EYECOMFORT_BROADCAST"

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string p1, "eye_comfort_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput v1, p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    const-string p1, "eye_comfort_adaptive_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    const-string p1, "eye_comfort_custom_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    const-string p1, "divider"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "eye_comfort_night_dim"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;->setChecked(Z)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    const-string p1, "eye_comfort_set_schedule"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f142386

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f142387

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f14237e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "0"

    aput-object v3, v2, v0

    const-string v0, "1"

    aput-object v0, v2, v1

    const-string v0, "2"

    aput-object v0, v2, v5

    iput-object v2, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    const-string p1, "eye_comfort_seekbar_color_temperature"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_opacity"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setProgress(I)V

    const-string p1, "eye_comfort_anti_glare"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortAntiGlarePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAntiGlarePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortAntiGlarePreference;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAntiGlarePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortAntiGlarePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string p1, "enhance_comfort_divider"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEnhanceComfortDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortScheduledReceiver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->setListening(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updatePreferenceStatus()V

    return-void
.end method

.method public final onStart()V
    .locals 5

    const-string v0, "EyeComfortSettings"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.bluelightfilter"

    const-string v4, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    const-string v2, "EyeComfortTimeSettingDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    iput-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    const-string v1, "EyeComfortTimeSettingDialogFragment found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    iput-object p0, v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 4

    const-string v0, "EyeComfortSettings"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final setLocationDialogAnchor(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x2

    invoke-static {v1, p1, v2, p1}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    return-void
.end method

.method public final showLocationOnDialog(I)V
    .locals 5

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    const v3, 0x7f14216a

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v3, 0x7f142169

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;II)V

    const v4, 0x7f140d30

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;II)V

    const v4, 0x7f1422fc

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V

    iput-object v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V

    iput-object v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    if-eq p1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->setLocationDialogAnchor(Landroidx/preference/Preference;)V

    :goto_1
    sput p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final updateCustomSettingPreference()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEnhanceComfortDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    iput v5, v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateTimeSummary()V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    sget-object v5, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mBlueLightFilterScheduleSummaryString:[I

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    aget v0, v5, v2

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_opacity"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setProgress(I)V

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    :goto_4
    return-void
.end method

.method public final updateDescriptionPreference()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_scheduled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled$3()Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v0, :cond_c

    if-eqz v3, :cond_c

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter_on_time"

    const-wide/16 v5, 0x474

    const/4 v3, -0x2

    invoke-static {v0, v2, v5, v6, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter_off_time"

    const-wide/16 v7, 0x1a4

    invoke-static {v0, v2, v7, v8, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->duringScheduleTime(Landroid/content/Context;I)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_7

    if-ne v4, v5, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f1424f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f142382

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1424f9

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f142384

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-ne v4, v5, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f1424f7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f142381

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1424f8

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f142383

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v3, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void

    :cond_c
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v0, 0x7f142380

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public final updateEnableStatus(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final updatePreferenceStatus()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "EyeComfortSettings"

    const-string/jumbo v1, "updateModePreference : change the scheduled value in an abnormal case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateCustomSettingPreference()V

    return-void
.end method

.method public final updateTimeSummary()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v2

    div-int/lit8 v3, v1, 0x3c

    rem-int/lit8 v4, v1, 0x3c

    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v6, v2, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v9

    const/16 v10, 0xa

    const/16 v11, 0xb

    if-eqz v9, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    invoke-virtual {v8, v9, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v8, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ~ "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v10, v11

    :cond_1
    invoke-virtual {v8, v10, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8, v3, v6}, Ljava/util/Calendar;->set(II)V

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f14216e

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    :cond_3
    return-void
.end method
