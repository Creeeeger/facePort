.class public Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecBillingCycleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMobileDataListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->TAG:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$2;

    sget v1, Lcom/android/settings/R$xml;->sec_billing_cycle:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;-><init>(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 114
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x156

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 109
    sget p0, Lcom/android/settings/R$xml;->sec_billing_cycle:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 47
    const-class p1, Lcom/samsung/android/settings/datausage/SecBillingCycleController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecBillingCycleController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    .line 48
    const-class p1, Lcom/samsung/android/settings/datausage/SecDataWarningController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecDataWarningController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecDataWarningController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    .line 49
    const-class p1, Lcom/samsung/android/settings/datausage/SecDataLimitController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecDataLimitController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecDataLimitController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    .line 50
    const-class p1, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    const-class p1, Lcom/samsung/android/settings/datausage/SecTetheringDataWarningController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecTetheringDataWarningController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecTetheringDataWarningController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "network_template"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    const-string v1, "subscriptionid"

    const/4 v2, -0x1

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setUIUpdater(Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    .line 65
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setSlotNumber(I)V

    .line 67
    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mMobileDataListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 68
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 70
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "billing_cycle_mobile_category"

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "billing_cycle_tethering_category"

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mMobileDataListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->releaseUIUpdater()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 2

    .line 136
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->TAG:Ljava/lang/String;

    const-string v1, "finish when Mobile data off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updatePolicyEditor()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updatePreference()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
