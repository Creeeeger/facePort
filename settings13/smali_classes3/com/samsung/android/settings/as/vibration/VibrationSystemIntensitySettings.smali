.class public Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VibrationSystemIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSystemSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

.field private mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

.field private mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private setSeekBarPreference()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "system_vibration"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mSystemSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mSystemSeekBar:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    sget v0, Lcom/android/settings/R$string;->sec_system_vibration_intensity:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VibrationSystemIntensitySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x150

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->as_vibration_system_intensity_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    .line 46
    const-class p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setTouchController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->getVibSeekBarTouchListener()Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->setSeekBarPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setStopFlag(Z)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->stopVibration()V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->setStopFlag(Z)V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
