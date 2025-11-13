.class public final Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# static fields
.field static final DEFAULT_SSID:Ljava/lang/String; = "AndroidAP"


# instance fields
.field public final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public mSSID:Ljava/lang/String;

.field public final mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;


# direct methods
.method public static $r8$lambda$Ov-p6PqVzR0sw7W0Yc3K5R-XbMs(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lq8JQBstbK2qATO9iHG-TkQ8P9s(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    const/16 v2, 0x6b0

    const/16 v3, 0x63b

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    new-instance p1, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    iput-object p3, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    new-instance p1, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_name"

    return-object p0
.end method

.method public isQrCodeButtonAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->isQrCodeButtonAvailable()Z

    move-result p0

    return p0
.end method

.method public final isTextValid(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v3, 0x6c8

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateDisplay$1()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "AndroidAP"

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object p0, v1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    :goto_1
    const-string v1, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    if-ne v7, v6, :cond_3

    const-string v5, "SAE"

    goto :goto_3

    :cond_3
    if-eq v7, v4, :cond_5

    if-ne v7, v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v5, "nopass"

    goto :goto_3

    :cond_5
    :goto_2
    const-string v5, "WPA"

    :goto_3
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "ssid"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "security"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "preSharedKey"

    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string v1, "hiddenSsid"

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "networkId"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isHotspot"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_4
    if-nez v3, :cond_9

    const-string v0, "WifiTetherSsidPref"

    const-string v1, "Invalid security to share hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    iput-boolean v2, v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v4, v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    iput-boolean v2, v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
