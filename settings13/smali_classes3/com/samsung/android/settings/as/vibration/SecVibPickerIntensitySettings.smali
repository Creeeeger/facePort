.class public Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecVibPickerIntensitySettings.java"


# instance fields
.field private mNotificationSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

.field private mRingtoneSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

.field private mType:I

.field private mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

.field private mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mType:I

    return-void
.end method

.method private setSeekBarPreference()V
    .locals 4

    .line 67
    iget v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mType:I

    const-string v1, "notification_vibration"

    const-string v2, "ring_vibration"

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mRingtoneSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mRingtoneSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    sget v2, Lcom/android/settings/R$string;->sec_call_vibration_intensity:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 73
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mNotificationSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_2

    .line 77
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mNotificationSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    sget v1, Lcom/android/settings/R$string;->sec_notification_vibration_intensity:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 80
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 114
    const-class p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecVibPickerIntensitySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa2

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 104
    sget p0, Lcom/android/settings/R$xml;->as_vibpicker_intensity_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    .line 56
    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setRingtoneController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setNotificationController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->getVibSeekBarTouchListener()Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mType:I

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->setSeekBarPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SecVibPickerIntensitySettings"

    const-string v1, "onPause"

    .line 86
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setStopFlag(Z)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->stopVibration()V

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setStopFlag(Z)V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
