.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f141510

    return p0
.end method

.method public final getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationFragment$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;)[Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700cc

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_location"

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v1, Lcom/android/settings/location/LocationSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settings/location/LocationSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    return-void
.end method
