.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;,
        Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;,
        Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;
    }
.end annotation


# static fields
.field static final KEY_INSTANT_HOTSPOT:Ljava/lang/String; = "wifi_hotspot_instant"

.field static final KEY_WIFI_HOTSPOT_SECURITY:Ljava/lang/String; = "wifi_hotspot_security"

.field static final KEY_WIFI_HOTSPOT_SPEED:Ljava/lang/String; = "wifi_hotspot_speed"

.field static final KEY_WIFI_TETHER_AUTO_OFF:Ljava/lang/String; = "wifi_tether_auto_turn_off"

.field static final KEY_WIFI_TETHER_MAXIMIZE_COMPATIBILITY:Ljava/lang/String; = "wifi_tether_maximize_compatibility"

.field static final KEY_WIFI_TETHER_NETWORK_NAME:Ljava/lang/String; = "wifi_tether_network_name"

.field static final KEY_WIFI_TETHER_NETWORK_PASSWORD:Ljava/lang/String; = "wifi_tether_network_password"

.field static final KEY_WIFI_TETHER_SECURITY:Ljava/lang/String; = "wifi_tether_security"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

.field public static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field mInstantHotspot:Landroidx/preference/Preference;

.field mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field mMaxCompatibilityPrefController:Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

.field mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field public mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

.field mUnavailable:Z

.field mWifiHotspotSecurity:Landroidx/preference/Preference;

.field mWifiHotspotSpeed:Landroidx/preference/Preference;

.field public final mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

.field mWifiTetherAutoOffPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

.field mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    return-void
.end method

.method public static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string v2, "wifi_tether_auto_turn_off"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isSpeedFeatureAvailable()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mShouldHidePreference:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "mShouldHidePreference:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, v1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mShouldHidePreference:Z

    const-string v2, "WifiTetherMaximizeCompatibilityPref"

    invoke-static {p0, p1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, v1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mShouldHidePreference:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->isMaximizeCompatibilityEnabled()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public buildNewConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iget-object v2, v2, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v2, v2, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v2}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isSpeedFeatureAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget v0, v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ""

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiUtils;->isHotspotPasswordValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->generatePassword()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Landroidx/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    :cond_3
    iget-object v2, v2, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isSpeedFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMaxCompatibilityPrefController:Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    iget-boolean v2, v0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result v0

    const-string v3, "WifiTetherMaximizeCompatibilityPref"

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    filled-new-array {v5, v4}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBands([I)Landroid/net/wifi/SoftApConfiguration$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "setBridgedModeOpportunisticShutdownEnabled:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setBand:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherAutoOffPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;->isEnabled()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiTetherSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f6

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702a2

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const v1, 0x7f1430cb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMaxCompatibilityPrefController:Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherAutoOffPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->canShowWifiHotspot(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "WifiTetherSettings"

    const-string v0, "can not launch Wi-Fi hotspot settings because the config is not set to show."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "no_wifi_tethering"

    invoke-static {v2, v0}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "WifiEntResUtils"

    const-string v2, "Wi-Fi Tethering isn\'t available due to user restriction."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, p1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v2

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    const-string v4, "store"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "factory"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "defaultCreationExtras"

    invoke-static {v3, v4, v0, v2, v3}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v0

    const-class v2, Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isSpeedFeatureAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->setupSpeedFeature(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object v0, v0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->setupInstantHotspot(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getRestarting()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInstantHotspotChanged(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mInstantHotspot:Landroidx/preference/Preference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mInstantHotspot:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mInstantHotspot:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestartingChanged(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "no_wifi_tethering"

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f142ef5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->refresh()V

    return-void

    :cond_4
    const-string v0, "WifiEntResUtils"

    const-string v1, "Wi-Fi Tethering isn\'t available due to user restriction."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f141a51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public final onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    iput v1, v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mSecurityType:I

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method public setupInstantHotspot(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "wifi_hotspot_instant"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mInstantHotspot:Landroidx/preference/Preference;

    if-nez p1, :cond_1

    const-string p0, "WifiTetherSettings"

    const-string p1, "Failed to find Instant Hotspot preference:wifi_hotspot_instant"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotSummary:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mInstantHotspot:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public setupSpeedFeature(Z)V
    .locals 2

    const-string v0, "wifi_hotspot_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSecurity:Landroidx/preference/Preference;

    const-string v0, "wifi_hotspot_speed"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSpeed:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSecurity:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSpeed:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v0, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSecurityType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object v0, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_2
    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateDisplayWithNewConfig()V
    .locals 1

    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay$1()V

    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay$1()V

    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay$1()V

    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->updateDisplay$1()V

    return-void
.end method
