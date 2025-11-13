.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbyWifiFragment.java"


# instance fields
.field private KEY_NEARBY_WIFI:Ljava/lang/String;

.field private mPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;)Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->mPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "nearbywifi"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->KEY_NEARBY_WIFI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 39
    sget p1, Lcom/android/settings/R$xml;->sec_wifi_development_nearbywifi_information:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->KEY_NEARBY_WIFI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->mPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->mPreference:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->refresh()V

    return-void
.end method
