.class public Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "IntelligentWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static TAG:Ljava/lang/String; = "IntelligentWifiSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings$1;

    sget v1, Lcom/android/settings/R$xml;->wifi_intelligent_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 131
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 73
    sget-object p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->wifi_intelligent_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->hasNewIntelligentItem(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "WIFI_200"

    const-string v2, "1283"

    .line 65
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    const-class p1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->setOnDeveloperOptionEnabledListener(Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;)V

    return-void
.end method

.method public onEnableOption()V
    .locals 2

    .line 88
    const-class v0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentOptionsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentOptionsPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
