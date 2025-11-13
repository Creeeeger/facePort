.class public final Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final DBG:Z

.field public static final sMiscPolicyLock:Ljava/lang/Object;

.field public static volatile sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;


# instance fields
.field public mAutoGenFirstTime:Z

.field public mCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

.field public mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field public mConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDns1View:Landroid/widget/EditText;

.field public mDns2View:Landroid/widget/TextView;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public mGatewayView:Landroid/widget/EditText;

.field public mHttpProxy:Landroid/net/ProxyInfo;

.field public final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public mIpAddressView:Landroid/widget/EditText;

.field public mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field public mIpSettingDropdown:Landroidx/preference/DropDownPreference;

.field public final mIpSettingPrefs:Ljava/util/List;

.field public final mIpSettingsDropDownListeners:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

.field public mIpSettingsInset:Landroidx/preference/Preference;

.field public mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

.field public final mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;

.field public mNetworkPrefixLengthView:Landroid/widget/EditText;

.field public mProxyExclusionListView:Landroid/widget/TextView;

.field public mProxyHostNameView:Landroid/widget/TextView;

.field public mProxyPacView:Landroid/widget/TextView;

.field public mProxyPortView:Landroid/widget/EditText;

.field public mProxySettingDropdown:Landroidx/preference/DropDownPreference;

.field public final mProxySettingPrefs:Ljava/util/List;

.field public mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field public final mProxySettingsDropDownListeners:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

.field public mProxySettingsInset:Landroidx/preference/Preference;

.field public final mSAScreenId:Ljava/lang/String;

.field public mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsDropDownListeners:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsDropDownListeners:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo p1, "wifi"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method public static checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static convertToIpv4Address(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x2

    move v2, v1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/2addr v1, v3

    sub-int/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    :try_start_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->enableSaveIfAppropriate()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "ip_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    const-string v0, "ip_inset"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsInset:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsDropDownListeners:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string/jumbo v0, "wifi_ip_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a1041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f1435aa

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0596

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f14356f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "wifi_network_prefix_length"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1435dc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "wifi_dns1"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f14351f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "wifi_dns2"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f143521

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    const-string v0, "proxy_inset"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsInset:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsDropDownListeners:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const-string v0, "proxy_warning_limited_support"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f06070f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->mTitleColor:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_pac"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f141ddd

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_hostname"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f141dd8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_port"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f141dda

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_exclusionlist"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f141dd6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final enableSaveIfAppropriate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;->this$0:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidationUpdaters:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;->update(Z)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    return-void
.end method

.method public final generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 2

    const-string v0, "WifiNetworkConfigPrefCtrl"

    const-string v1, "generateBlankFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    const v1, 0x7f1435dd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_1

    const/16 v1, 0x20

    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aput-byte v1, p1, v0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    const v0, 0x7f143520

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "network_config"

    return-object p0
.end method

.method public final initProxySettingOverride()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    :cond_2
    :goto_0
    return-void
.end method

.method public final ipAndProxyFieldsAreValid()Z
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v2, :cond_12

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v2, :cond_3

    :goto_1
    move v6, v1

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f1435af

    if-eqz v5, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_11

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v2, v5}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_9

    :cond_5
    :try_start_0
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    if-eqz v5, :cond_6

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_6
    new-instance v5, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v5}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v5, :cond_8

    const/16 v7, 0x20

    if-le v5, v7, :cond_7

    goto :goto_2

    :cond_7
    :try_start_2
    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v2, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v7}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    const v6, 0x7f1435b0

    goto/16 :goto_9

    :catch_0
    move v5, v3

    goto :goto_4

    :catch_1
    :goto_3
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    goto/16 :goto_9

    :catch_2
    :goto_4
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f1435dd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_9

    :try_start_4
    invoke-static {v2, v5}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v5, v2

    sub-int/2addr v5, v4

    aput-byte v4, v2, v5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_9
    :try_start_5
    invoke-static {v6}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    const v6, 0x7f1435ae

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v0, v2}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    :catch_3
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v6, 0x7f1435ad

    if-eqz v2, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-nez v2, :cond_e

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-nez v2, :cond_f

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    goto/16 :goto_1

    :goto_8
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    throw v1

    :catch_4
    :cond_11
    :goto_9
    const-string/jumbo v0, "validateIpConfigFields result : "

    const-string v2, "WifiNetworkConfigPrefCtrl"

    invoke-static {v6, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    sget-object v7, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-nez v7, :cond_13

    move v2, v12

    goto :goto_a

    :cond_13
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_14

    move v2, v11

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_15

    move v2, v10

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v7, :cond_16

    move v2, v4

    goto :goto_a

    :cond_16
    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5

    if-lez v2, :cond_17

    const v7, 0xffff

    if-le v2, v7, :cond_18

    :catch_5
    :cond_17
    move v2, v9

    goto :goto_a

    :cond_18
    move v2, v1

    :goto_a
    if-eqz v2, :cond_1d

    if-eq v2, v4, :cond_1d

    if-eq v2, v12, :cond_1c

    if-eq v2, v10, :cond_1b

    if-eq v2, v9, :cond_1a

    if-eq v2, v11, :cond_19

    :try_start_9
    const-string v2, "SemWifiUtils"

    const-string v7, "Unknown proxy settings error"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :cond_19
    move v3, v11

    goto :goto_b

    :cond_1a
    move v3, v9

    goto :goto_b

    :cond_1b
    move v3, v10

    goto :goto_b

    :cond_1c
    move v3, v12

    goto :goto_b

    :cond_1d
    move v3, v1

    goto :goto_b

    :catch_6
    move v6, v1

    :catch_7
    const v3, 0x7f141dd4

    :goto_b
    if-nez v3, :cond_1e

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v6, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_c

    :cond_1e
    return v1

    :cond_1f
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v1

    :cond_20
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_21

    return v1

    :cond_21
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_22
    :goto_c
    return v4
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final setIpConfigFields()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v5, 0x0

    const-string/jumbo v6, "setIpConfigFields dns1 "

    const-string v7, "WifiNetworkConfigPrefCtrl"

    if-ne v3, v4, :cond_f

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "setIpConfigFields ip "

    invoke-static {v9, v8, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToIpv4Address(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToIpv4Address(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "setIpConfigFields gw "

    invoke-static {v9, v8, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v4, v8}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToIpv4Address(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    iput-object v8, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v4, :cond_7

    invoke-static {v6, v3, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move-object v3, v5

    goto :goto_4

    :cond_9
    invoke-static {v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iput-object v3, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v3, :cond_b

    invoke-static {v6, v1, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v5, v1

    :cond_d
    :goto_5
    iput-object v5, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setIpConfigFields by linkProperties : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_f
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_10
    move-object v1, v5

    :goto_6
    iput-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_11
    move-object v1, v5

    :goto_7
    iput-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_12
    move-object v1, v5

    :goto_8
    iput-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v4, :cond_13

    invoke-static {v6, v3, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    move-object v3, v5

    goto :goto_9

    :cond_15
    invoke-static {v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_9
    iput-object v3, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v3, :cond_17

    invoke-static {v6, v1, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v5, v1

    :cond_19
    :goto_a
    iput-object v5, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setIpConfigFields by staticConfig : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void
.end method

.method public final setProxyConfigFields()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v2, :cond_1

    sget-object v3, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v2, :cond_0

    const-string v2, "misc_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_1
    sget-object v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "WifiNetworkConfigPrefCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while retriving enterprise proxy information - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v1

    :goto_4
    invoke-static {v0, v2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    :cond_5
    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_6

    const-string v2, ""

    goto :goto_6

    :cond_6
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public final updateBottomMode(I)V
    .locals 2

    const-string/jumbo v0, "updateBottomMode : "

    const-string v1, "WifiNetworkConfigPrefCtrl"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    iget v1, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0cea

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a02cf

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final updateIpPreference(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateIpPreference mIpSettingDropdown : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkConfigPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateSummary$2(Landroidx/preference/DropDownPreference;I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updatePreference()V
    .locals 7

    const-string v0, "WifiNetworkConfigPrefCtrl"

    const-string/jumbo v1, "update ip setting and proxy setting preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreferenceByConfig()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    const v1, 0x7f1435ab

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    const-string v2, "inputType=ipAddress"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    const v3, 0x7f143570

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    const v3, 0x7f1435dd

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    const v4, 0x7f143520

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    const v4, 0x7f143522

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    const v1, 0x7f141ddc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    const v1, 0x7f141dd7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    const v1, 0x7f141dd9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionListView:Landroid/widget/TextView;

    const v1, 0x7f141dd5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method public final updatePreferenceByConfig()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v3}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v4}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v4, v3}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setIpConfigFields()V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateIpPreference(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsInset:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->initProxySettingOverride()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v3}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v4}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v3}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setProxyConfigFields()V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateProxyPreference(I)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsInset:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    return-void
.end method

.method public final updateProxyPreference(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateProxyPreference mProxySettingDropdown : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkConfigPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateSummary$2(Landroidx/preference/DropDownPreference;I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateSummary$2(Landroidx/preference/DropDownPreference;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f060659

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
