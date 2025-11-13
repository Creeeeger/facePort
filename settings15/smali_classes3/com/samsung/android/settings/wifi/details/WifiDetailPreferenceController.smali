.class public final Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;


# instance fields
.field public final mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

.field public mConnectInfoInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public final mConnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

.field public mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mEapIdentityView:Landroid/widget/EditText;

.field public mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field public final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field public final mHandler:Landroid/os/Handler;

.field public mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public final mIconInjector:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

.field public final mInManageNetwork:Z

.field public mIpAddressPref:Landroidx/preference/Preference;

.field public mIsKeyguardLoading:Z

.field public mLatitude:D

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mLongitude:D

.field public mMacAddressPref:Landroidx/preference/Preference;

.field public mNetwork:Landroid/net/Network;

.field public final mNetworkCallback:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public mPasspointPref:Landroidx/preference/Preference;

.field public mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mPasswordShowButton:Landroid/widget/ImageView;

.field public mPasswordView:Landroid/widget/EditText;

.field public mRouterLocation:Landroidx/preference/Preference;

.field public mRssiSignalLevel:I

.field public mSecurityPref:Landroidx/preference/Preference;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static -$$Nest$msetIdPasswordPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isMaintenanceMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semCanShowPassword()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_7

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v4, 0x7

    if-ne v0, v4, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectInfoInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/wifi/SemWifiManager;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;Z)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    new-instance p3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    new-instance p3, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p8, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p9, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-boolean p10, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mInManageNetwork:Z

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_detail_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a05c5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    const-string v0, "header_inset"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v0, "connect_info"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectInfoInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string/jumbo v0, "security"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Landroidx/preference/Preference;

    const-string v0, "eap_identity"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f14354e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0596

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0e41

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    const/16 v4, 0x90

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string/jumbo v0, "wifi_password"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f14361e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordShowButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "passpoint"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "router_location"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRouterLocation:Landroidx/preference/Preference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string/jumbo v0, "router_location"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "geo:0,0?q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "WifiDetailsPrefCtrl"

    const-string p1, "Open map application"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f14346b

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onAuthenticationError()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIsKeyguardLoading:Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->updateNetworkInfo$2()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshPage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIsKeyguardLoading:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final onUpdated()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->updateNetworkInfo$2()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshPage()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->displayBottomNavigation()V

    :cond_2
    return-void
.end method

.method public final setLongClickListenerOnPasswordButton(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showPassword$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordShowButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordShowButton:Landroid/widget/ImageView;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x20091

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasswordView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final updateNetworkInfo$2()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    :goto_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method
