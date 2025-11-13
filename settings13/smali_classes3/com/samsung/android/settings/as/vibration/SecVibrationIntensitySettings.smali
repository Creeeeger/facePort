.class public Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecVibrationIntensitySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

.field private mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private setSeekBarPreference()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ring_vibration"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "notification_vibration"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "system_vibration"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_2

    .line 83
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 85
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "force_touch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_3

    .line 88
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "media_vibration"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_4

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 127
    const-class p0, Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecVibrationIntensitySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa2

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 117
    sget p0, Lcom/android/settings/R$xml;->as_vibration_intensity_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 59
    new-instance p1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    .line 60
    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setRingtoneController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setNotificationController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setTouchController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setHardPressController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setMediaController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->getVibSeekBarTouchListener()Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->setSeekBarPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SecVibrationIntensitySettings"

    const-string v1, "onPause"

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setStopFlag(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->stopVibration()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setStopFlag(Z)V

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
