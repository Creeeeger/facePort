.class public final Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;
.super Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mContext:Landroid/content/Context;

.field public mDhcpNameSharingPref:Landroidx/preference/SwitchPreferenceCompat;

.field public mDisableReason:I

.field public mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mDns1View:Landroid/widget/EditText;

.field public mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mDns2View:Landroid/widget/EditText;

.field public mEapAnonymousView:Landroid/widget/EditText;

.field public mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field public mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field public mEapIdentityErrorText:Landroid/widget/TextView;

.field public mExternalValidationResult:Z

.field public mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mGatewayView:Landroid/widget/EditText;

.field public final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mIpAddressView:Landroid/widget/EditText;

.field public mIpSettingsPref:Landroidx/preference/DropDownPreference;

.field public mMeteredPref:Landroidx/preference/DropDownPreference;

.field public mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mNetworkPrefixLengthView:Landroid/widget/EditText;

.field public mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

.field public mPhase2Pref:Landroidx/preference/DropDownPreference;

.field public mPrivacyPref:Landroidx/preference/DropDownPreference;

.field public mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyExclusionListView:Landroid/widget/EditText;

.field public mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyHostNameView:Landroid/widget/EditText;

.field public mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyPacView:Landroid/widget/EditText;

.field public mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyPortView:Landroid/widget/EditText;

.field public mProxySettingsPref:Landroidx/preference/DropDownPreference;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;

.field public final mSAScreenId:Ljava/lang/String;

.field public mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field public final mSaveListener:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mReceiver:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveListener:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mActivity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p2, :cond_0

    const-string p1, "WifiModifyPrefCtrl"

    const-string p2, "finish - WifiEntry is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    return-void

    :cond_0
    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p8, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p6}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    :cond_1
    invoke-static {p3}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapMethodForCarrierSsid()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final afterShowSecurityFields()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a07ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "1021"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "eap_method"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    const v1, 0x7f14354f

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapItems()V

    const-string v0, "eap_ca_cert"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "eap_domain"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a1041

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f14354d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0596

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    const/high16 v4, 0x80000

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "eap_min_tls_ver"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isTlsV13Supported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapMinTlsVer(Z)V

    const-string v0, "eap_ocsp"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    const v4, 0x7f143552

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapOcspItems()V

    const-string v0, "eap_user_cert"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    const-string v0, "eap_ca_cert_error_text"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo v0, "wifi_eap_ca_error_text"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "eap_identity"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f14354e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a1190

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;

    invoke-direct {v6, p0, v5, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_0

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string v0, "eap_sim_select"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateEapSimPref()V

    const-string/jumbo v0, "wifi_password"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    const v1, 0x7f14361e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a07ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "text_input_end_icon"

    const-string v5, "id"

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string v0, "eap_phase2"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const-string v0, "eap_anonymous"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v0, "ip_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    const-string/jumbo v0, "wifi_ip_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v0, "wifi_network_prefix_length"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v0, "wifi_dns1"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v0, "wifi_dns2"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1View:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2View:Landroid/widget/EditText;

    const-string v0, "proxy_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    const-string v0, "proxy_pac"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_hostname"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_port"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_exclusionlist"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionListView:Landroid/widget/EditText;

    const-string v0, "metered"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    const-string v0, "dhcp_name_sharing"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDhcpNameSharingPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const v0, 0x7f143721

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setupButton()V

    return-void
.end method

.method public final enableSubmitIfAppropriate()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->isSubmittable$1()Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiModifyPrefCtrl"

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSubmittable$1()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v3, v2, :cond_0

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isValidWep(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isValidPsk(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isValidSae(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const-string v3, "isSubmittable passwordValid : "

    const-string v4, "WifiModifyPrefCtrl"

    invoke-static {v3, v4, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const-string v5, ""

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/4 v8, 0x3

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_4

    if-ne v3, v6, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v5

    :goto_1
    const-string v9, "isSubmittable caCertSelection : "

    invoke-static {v9, v3, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v9}, Landroidx/preference/Preference;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    const v3, 0x7f143562

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const v9, 0x7f143525

    invoke-virtual {v3, v9}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_a
    const-string v3, "isSubmittable userCertSelection : "

    invoke-static {v3, v5, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    :cond_b
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-eq v3, v8, :cond_c

    if-eq v3, v7, :cond_c

    if-ne v3, v6, :cond_f

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "PEAP"

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_d
    move-object v3, v5

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "TTLS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "TLS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "PWD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v0, v1

    :cond_f
    const-string v3, "isSubmittable "

    const-string v5, "/"

    invoke-static {v3, v5, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    invoke-static {v3, v5, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    if-eqz p0, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public final isUnchangedNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->isSubmittable$1()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->save$1()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "WifiModifyPrefCtrl"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mReceiver:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    check-cast p1, Landroidx/preference/DropDownPreference;

    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    const-string v2, "WifiModifyPrefCtrl"

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    if-ltz p2, :cond_c

    array-length v4, v1

    if-lt p2, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPreferenceChange "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "eap_method"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->refreshEapItems(I)V

    aget-object p1, v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

    if-eqz p0, :cond_1

    const/4 p1, -0x1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mIsExpanded:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    :cond_1
    return v4

    :cond_2
    const-string v2, "eap_ocsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    return v4

    :cond_3
    const-string v2, "eap_min_tls_ver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    return v4

    :cond_4
    const-string v2, "eap_ca_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v0, -0x63

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDisableReason:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    aget-object v0, v1, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v1, "/system/etc/security/cacerts"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_6
    :goto_0
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDomainVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setOcspVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setMinTlsVersionVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    return v4

    :cond_8
    const-string v2, "eap_user_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    aget-object v0, v1, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    return v4

    :cond_a
    const-string v1, "eap_sim_select"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_b
    return v3

    :cond_c
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onPreferenceChange: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " entries null or length error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final onResume()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    const-string v2, "WifiModifyPrefCtrl"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "get config "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v4, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mReceiver:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    const-string v0, "finish - mWifiConfig is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showSecurityFields(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSecurity()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-object v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo v3, "sem_wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v5, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    iget v0, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDisableReason:I

    const/16 v3, -0x63

    if-eq v0, v3, :cond_7

    iput v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDisableReason:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const v2, 0x7f143755

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    return-void
.end method

.method public final onUpdated()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "WifiModifyPrefCtrl"

    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "get config "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v1, v2, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showSecurityFields(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSecurity()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setupButton()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final save$1()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v2, "1046"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const-string v3, "WifiModifyPrefCtrl"

    if-nez v2, :cond_0

    const-string v2, "abnormally config of AP is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    :cond_0
    iget v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const-string v8, "TTLS"

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/16 v11, 0x22

    const-string v12, "\""

    const/4 v14, 0x5

    const-string v15, "PEAP"

    const/4 v7, 0x6

    const-string v13, ""

    packed-switch v4, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v12, v1}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v6, 0x0

    goto/16 :goto_f

    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_2
    if-ne v4, v7, :cond_2

    invoke-virtual {v2, v14}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_1

    :cond_2
    if-ne v4, v10, :cond_3

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v4}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v15

    :goto_2
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v11

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v10, "AKA\'"

    const-string v7, "AKA"

    const-string v14, "SIM"

    if-eqz v12, :cond_5

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_5
    const-string v12, "TLS"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_7
    const-string v12, "PWD"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x5

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x6

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_b
    :goto_3
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6}, Landroidx/preference/Preference;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_c
    move-object v6, v13

    :goto_4
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_5

    :cond_d
    iget-boolean v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_5

    :cond_e
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, "/system/etc/security/cacerts"

    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_11
    :goto_5
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_13
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-static {v6, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v1

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_14

    move v6, v5

    goto :goto_6

    :cond_14
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v6

    :goto_6
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    goto :goto_8

    :cond_15
    :goto_7
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    :goto_8
    const/4 v6, 0x0

    goto :goto_9

    :cond_16
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    :goto_9
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_17
    move-object v1, v13

    :goto_a
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    :cond_18
    move-object v1, v13

    :cond_19
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :goto_b
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_1b
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_d

    :cond_1f
    :goto_c
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x5

    if-eq v11, v1, :cond_20

    const/4 v1, 0x6

    if-eq v11, v1, :cond_20

    const/4 v1, 0x7

    if-ne v11, v1, :cond_21

    :cond_20
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_21
    :goto_d
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_23

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_e

    :cond_22
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    :cond_23
    :goto_e
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    iget-object v4, v4, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iput v1, v2, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    goto/16 :goto_f

    :pswitch_3
    const/4 v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_f

    :cond_24
    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_f

    :pswitch_4
    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    if-eq v1, v7, :cond_25

    const/16 v7, 0x1a

    if-eq v1, v7, :cond_25

    const/16 v7, 0x3a

    if-ne v1, v7, :cond_26

    :cond_25
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v4, v1, v5

    goto :goto_f

    :cond_26
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v11, v12, v4}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    goto :goto_f

    :pswitch_5
    const/4 v6, 0x0

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_27
    :goto_f
    iget v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_28

    const/4 v4, 0x7

    if-ne v1, v4, :cond_2e

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_29
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_2d

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/wifi/WifiUtils;->getPhase2Method(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_2a
    const-string/jumbo v4, "setAdvancedItems eapPhase2 "

    invoke-static {v1, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2b

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2b

    const/4 v4, 0x7

    if-ne v1, v4, :cond_2c

    :cond_2b
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_10

    :cond_2c
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_2d
    :goto_10
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAdvancedItems eapAnonymousId "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    new-instance v1, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    if-eqz v4, :cond_2f

    iget-object v4, v4, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    iget-object v4, v4, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2f

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :cond_2f
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_33

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    if-eqz v4, :cond_30

    :try_start_0
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Landroid/net/LinkAddress;

    invoke-direct {v8, v4, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v8}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v7}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    :cond_30
    :goto_11
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_31

    invoke-static {v4}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {v5}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    invoke-virtual {v1, v7}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    :cond_33
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    if-eqz v5, :cond_35

    iget-object v5, v5, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    iget-object v5, v5, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_34

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_12

    :cond_34
    const/4 v7, 0x2

    if-ne v5, v7, :cond_35

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_12

    :cond_35
    move-object v5, v4

    :goto_12
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v5, v7, :cond_36

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    if-eqz v7, :cond_36

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionListView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_37

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v6, v8}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v15

    goto :goto_13

    :cond_36
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v5, v7, :cond_37

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_37

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_37

    invoke-static {v7}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v15

    goto :goto_13

    :cond_37
    move-object v15, v6

    :goto_13
    if-nez v15, :cond_38

    goto :goto_14

    :cond_38
    move-object v4, v5

    :goto_14
    new-instance v5, Landroid/net/IpConfiguration;

    invoke-direct {v5}, Landroid/net/IpConfiguration;-><init>()V

    invoke-virtual {v5, v3}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    invoke-virtual {v5, v4}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {v5, v1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {v5, v15}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_39

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_15

    :cond_39
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v1, v2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    :goto_15
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_3a

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_16

    :cond_3a
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput v1, v2, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :goto_16
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDhcpNameSharingPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiConfiguration;->setSendDhcpHostnameEnabled(Z)V

    :cond_3b
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveListener:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final setupButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0cea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final setupPhase2Method(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v0, :cond_0

    const-string p0, "WifiModifyPrefCtrl"

    const-string p1, "enterpriseConfig of mWificonfig is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    const/4 p1, 0x7

    if-ne v0, p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public final update(Z)V
    .locals 2

    const-string/jumbo v0, "update button state triggered by Validator "

    const-string v1, "WifiModifyPrefCtrl"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method
