.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectLocationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 86
    sget p0, Lcom/android/settings/R$string;->location_settings_title:I

    return p0
.end method

.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 53
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "profile"

    const/4 v1, 0x2

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    new-instance v2, Lcom/android/settings/location/LocationWorkProfileSettings;

    invoke-direct {v2}, Lcom/android/settings/location/LocationWorkProfileSettings;-><init>()V

    .line 56
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    new-instance v0, Lcom/android/settings/location/LocationPersonalSettings;

    invoke-direct {v0}, Lcom/android/settings/location/LocationPersonalSettings;-><init>()V

    .line 61
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v1, [Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object v2, p0, v3

    return-object p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 81
    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 70
    sget p0, Lcom/android/settings/R$xml;->location_settings_header:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_location"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 41
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/android/settings/location/LocationSwitchBarController;

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settings/location/LocationSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    return-void
.end method
