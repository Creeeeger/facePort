.class public Lcom/samsung/android/settings/connection/WirelessSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/samsung/android/settings/connection/WirelessSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/connection/WirelessSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance p2, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;

    check-cast p3, Lcom/samsung/android/settings/connection/WirelessSettings;

    const-string v0, "ethernet_settings"

    invoke-direct {p2, p0, v0, p3}, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/connection/WirelessSettings;)V

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 152
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/settings/connection/WirelessSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 179
    sget p0, Lcom/android/settings/R$string;->help_url_network_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WirelessSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 169
    sget p0, Lcom/android/settings/R$xml;->sec_wireless_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/WirelessSettings;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "toggle_nearby_scanning"

    const-string v1, "nearby_scanning_setting_category"

    if-nez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/connection/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/WirelessSettings;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-direct {p1, v2, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_2

    .line 94
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/connection/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 6

    const-string v0, "vpn_settings"

    .line 107
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isVpnAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 113
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WirelessSettings"

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "wifi"

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 130
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 133
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/connection/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz p0, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    :cond_5
    return-void
.end method
