.class public Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApClientEventHistory;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# instance fields
.field public mWifiApHotspotLabModelList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApClientEventHistory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApClientEventHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApClientEventHistory"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17021c

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApClientEventHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/hotspotlab/WifiApHotspotLabModel;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x32

    iput v4, v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryMaxLines:I

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/hotspotlab/WifiApHotspotLabModel;->getSpannableSummary()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "list_preference_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    const-string p1, "#tag_wifi_ap_lab_client_event#"

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApHotspotLabUtils;->getHotspotLabModelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApClientEventHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    return-void
.end method
