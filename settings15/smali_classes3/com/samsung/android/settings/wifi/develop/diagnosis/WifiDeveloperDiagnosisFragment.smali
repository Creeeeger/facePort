.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mNetworkDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

.field public mWifiDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static addFragment(Landroidx/fragment/app/BackStackRecord;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "Wi-Fi Diagnosis"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;-><init>()V

    :goto_0
    const/4 v0, 0x1

    const v1, 0x7f0a0fb7

    invoke-virtual {p0, v1, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackRecord;->attach(Landroidx/fragment/app/Fragment;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17022c

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "diagnosis_tab_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/DiagnosisTabPreference;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

    :cond_0
    return-void
.end method
