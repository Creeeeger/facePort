.class public final Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# instance fields
.field public final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public mPassword:Ljava/lang/String;

.field public mSecurityType:I

.field public final mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object p0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p1, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mLastPasswordListener:Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;

    invoke-virtual {p0, p2, p1}, Landroid/net/wifi/WifiManager;->queryLastConfiguredTetheredApPassphraseSinceBoot(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_password"

    return-object p0
.end method

.method public final isTextValid(Ljava/lang/String;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mSecurityType:I

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiUtils;->isHotspotPasswordValid(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x6c9

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateDisplay$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->generatePassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mSecurityType:I

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    move-object v1, v0

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object p0, v1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-object v1, v0

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    move-object v1, v0

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-boolean v2, v1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method public final updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V
    .locals 1

    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    const v0, 0x7f143588

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method
