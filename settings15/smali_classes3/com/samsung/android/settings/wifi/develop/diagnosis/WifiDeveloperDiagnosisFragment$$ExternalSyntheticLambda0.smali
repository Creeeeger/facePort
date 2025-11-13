.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;

    return-void
.end method


# virtual methods
.method public final onTabSelected(I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v1

    const-string v2, "Wi-Fi Diagnosis"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mWifiDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    const-string v3, "Network Diagnosis"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mNetworkDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mWifiDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->detach(Landroidx/fragment/app/Fragment;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mNetworkDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->detach(Landroidx/fragment/app/Fragment;)V

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mNetworkDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-static {v1, p0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->addFragment(Landroidx/fragment/app/BackStackRecord;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mWifiDiagnosisFragment:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-static {v1, p0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->addFragment(Landroidx/fragment/app/BackStackRecord;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method
