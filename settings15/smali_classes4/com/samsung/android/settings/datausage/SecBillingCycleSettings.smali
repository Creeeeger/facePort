.class public Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mMobileDataListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field public final mReceiver:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    new-instance v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$2;

    const v1, 0x7f170155

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;-><init>(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mReceiver:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecBillingCycleSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x156

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170155

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/datausage/SecBillingCycleController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecBillingCycleController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    const-class p1, Lcom/samsung/android/settings/datausage/SecDataWarningController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecDataWarningController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecDataWarningController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    const-class p1, Lcom/samsung/android/settings/datausage/SecDataLimitController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecDataLimitController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecDataLimitController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    const-class p1, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/samsung/android/settings/datausage/SecTetheringDataWarningController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecTetheringDataWarningController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecTetheringDataWarningController;->setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobile(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SecBillingCycleSettings"

    const-string/jumbo v0, "there isn\'t mobile so finish activity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "network_template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    const-string/jumbo v1, "subscriptionid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v1

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    goto :goto_0

    :cond_1
    iput-object v0, v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    :goto_0
    if-ne v2, p1, :cond_2

    iget-object p1, v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result p1

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    iput p1, v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mSlotNumber:I

    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mMobileDataListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "billing_cycle_tethering_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mMobileDataListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onMobileDataEnabledChange()V
    .locals 2

    const-string v0, "SecBillingCycleSettings"

    const-string v1, "finish when Mobile data off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mReceiver:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->mReceiver:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    iput-object p0, v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
