.class public Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

.field public mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VibrationSystemIntensitySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x150

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17004f

    return p0
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    const-class p2, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityTouchVibrationController;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityTouchVibrationController;

    iput-object p2, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mTouchController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityTouchVibrationController;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo p2, "system_vibration"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iput-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    const p0, 0x7f1427e2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->stopVibration()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->mVibIntensityHelper:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
