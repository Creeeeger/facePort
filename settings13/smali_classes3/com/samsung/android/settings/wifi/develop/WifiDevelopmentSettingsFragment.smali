.class public Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiDevelopmentSettingsFragment.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchBarController:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiDevSettingsDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 51
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_development_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;->mSwitchBarController:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;->mSwitchBarController:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 45
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;->mSwitchBarController:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->isWifiDevelopmentSettingsEnabled()Z

    move-result p1

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->setWifiDevelopmentSettingsEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
