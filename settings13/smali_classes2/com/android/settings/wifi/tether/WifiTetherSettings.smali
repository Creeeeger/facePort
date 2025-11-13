.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;,
        Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;,
        Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;
    }
.end annotation


# static fields
.field static final KEY_WIFI_TETHER_AUTO_OFF:Ljava/lang/String; = "wifi_tether_auto_turn_off"

.field static final KEY_WIFI_TETHER_MAXIMIZE_COMPATIBILITY:Ljava/lang/String; = "wifi_tether_maximize_compatibility"

.field static final KEY_WIFI_TETHER_NETWORK_NAME:Ljava/lang/String; = "wifi_tether_network_name"

.field static final KEY_WIFI_TETHER_NETWORK_PASSWORD:Ljava/lang/String; = "wifi_tether_network_password"

.field static final KEY_WIFI_TETHER_SECURITY:Ljava/lang/String; = "wifi_tether_security"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

.field private static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mMaxCompatibilityPrefController:Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

.field private mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field private mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

.field private mUnavailable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRestartWifiApAfterConfigChange(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartTether(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->startTether()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDisplayWithNewConfig(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    .line 246
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->wifi_tether_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_tethering"

    .line 90
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    return-void
.end method

.method private buildNewConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 3

    .line 222
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result v1

    .line 224
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    if-eqz v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 227
    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->getPasswordValidated(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMaxCompatibilityPrefController:Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->setupMaximizeCompatibility(Landroid/net/wifi/SoftApConfiguration$Builder;)V

    .line 231
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string/jumbo v2, "wifi_tether_auto_turn_off"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private startTether()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 236
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    return-void
.end method

.method private updateDisplayWithNewConfig()V
    .locals 1

    .line 240
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay()V

    .line 241
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 242
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay()V

    .line 243
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->updateDisplay()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 187
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiTetherSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 182
    sget p0, Lcom/android/settings/R$xml;->wifi_tether_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 138
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->use_wifi_hotsopt_main_switch_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 141
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    .line 122
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 123
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 124
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 125
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMaxCompatibilityPrefController:Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;->isHotspotAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;->isHotspotAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 160
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    sget-object v1, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->setSecurityType(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-string v0, "TetheringSettings"

    const-string v1, "Wifi AP config changed while enabled, stop and restart"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method
