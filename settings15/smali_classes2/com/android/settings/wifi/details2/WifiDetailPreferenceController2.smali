.class public final Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;


# static fields
.field public static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"

.field static final KEY_DATA_USAGE_HEADER:Ljava/lang/String; = "status_header"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_EAP_SIM_SUBSCRIPTION_PREF:Ljava/lang/String; = "eap_sim_subscription"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "rx_link_speed"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SSID_PREF:Ljava/lang/String; = "ssid"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "tx_link_speed"

.field static final KEY_WIFI_TYPE_PREF:Ljava/lang/String; = "type"


# instance fields
.field public mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field public mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

.field public final mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mDnsPref:Landroidx/preference/Preference;

.field public mEapSimSubscriptionPref:Landroidx/preference/Preference;

.field mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field public final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field public mFrequencyPref:Landroidx/preference/Preference;

.field public mGatewayPref:Landroidx/preference/Preference;

.field public final mHandler:Landroid/os/Handler;

.field public final mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

.field public mIpAddressPref:Landroidx/preference/Preference;

.field public mIpv6AddressPref:Landroidx/preference/Preference;

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mMacAddressPref:Landroidx/preference/Preference;

.field public final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public mNetwork:Landroid/net/Network;

.field public final mNetworkCallback:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public mRssiSignalLevel:I

.field public mRxLinkSpeedPref:Landroidx/preference/Preference;

.field public mSecurityPref:Landroidx/preference/Preference;

.field mShowX:Z

.field public final mSignalStr:[Ljava/lang/String;

.field public mSignalStrengthPref:Landroidx/preference/Preference;

.field public mSsidPref:Landroidx/preference/Preference;

.field public mSubnetPref:Landroidx/preference/Preference;

.field public mTxLinkSpeedPref:Landroidx/preference/Preference;

.field public mTypePref:Landroidx/preference/Preference;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static $r8$lambda$6wqxssGKIlYRKwRrbjxUV7oAgKg(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $r8$lambda$FbJzRgXOjWGUBr24yFcTz5OXoNQ(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v2, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string p0, "WifiDetailsPrefCtrl2"

    const-string v0, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 v5, 0x6ae

    const/16 v6, 0x63b

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/high16 v7, -0x80000000

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static synthetic $r8$lambda$vB_t2zP40JY6BG9hVjhe-AgGwrE(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    new-instance v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    iput-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p4, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030203

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p8, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p9, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    iput-object p10, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
    .locals 12

    new-instance v11, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    new-instance v9, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-direct {v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;-><init>()V

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V

    return-object v11
.end method

.method public static updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final canModifyNetwork()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public connectDisconnectNetwork()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    :goto_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "connection_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a05c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v4, v2, v1, v3}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f141010

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v1, 0x7f0805e0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1436ad

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    const v1, 0x7f080606

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f0805dc

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid WifiEntry connected state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v1, 0x7f080611

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)V

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;I)V

    iget-object v2, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v3, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq v1, v3, :cond_2

    iput-object v1, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_2
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f142b8b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v2, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object v1, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08057d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object v1, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Resource does not exist: 2131232125"

    const-string v2, "ActionButtonPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;I)V

    iget-object v2, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v3, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq v1, v3, :cond_4

    iput-object v1, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_4
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    const-string v0, "signal_strength"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const-string v0, "tx_link_speed"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "rx_link_speed"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "eap_sim_subscription"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    const-string v0, "subnet_mask"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "dns"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const-string v0, "ipv6_addresses"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    return-void
.end method

.method public fineSubscriptionInfo(ILjava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne p3, v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    if-ne p1, v1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public final getConnectDisconnectButtonTextResource()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f143503    # 1.97001E38f

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f1434be    # 1.969996E38f

    return p0

    :cond_2
    const p0, 0x7f1434b5    # 1.9699941E38f

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiDrawable(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/graphics/drawable/Drawable;
    .locals 2

    instance-of v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getDeviceType()I

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->getHotspotIconResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f0802c0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->getIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onConnectResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1434bd    # 1.9699958E38f

    invoke-static {p0, v0, p1, p0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1435f7

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f143567

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final onDisconnectResult(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f143508

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "WifiDetailsPrefCtrl2"

    const-string p1, "Disconnect Wi-Fi network failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onForgetResult(I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "WifiDetailsPrefCtrl2"

    const-string v0, "Forget Wi-Fi network failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x89

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public final onUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->refreshPreferences()V

    return-void
.end method

.method public final refreshButtons()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v8, v7, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v9, v8, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    if-eq v1, v9, :cond_3

    iput-boolean v1, v8, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    invoke-virtual {v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v8, v7, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v9, v8, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    if-eq v4, v9, :cond_4

    iput-boolean v4, v8, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    invoke-virtual {v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v8

    if-ne v8, v2, :cond_5

    goto :goto_3

    :cond_5
    move v8, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v2

    :goto_4
    iget-object v9, v7, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v10, v9, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    if-eq v8, v10, :cond_7

    iput-boolean v8, v9, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    invoke-virtual {v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v8, v7, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v9, v8, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    if-eq v5, v9, :cond_8

    iput-boolean v5, v8, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_a

    const/4 v8, 0x2

    if-ne v0, v8, :cond_9

    const v0, 0x7f0805dc

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const v0, 0x7f080611

    :goto_5
    invoke-virtual {v7, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v7, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v8, v7, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    if-eq v6, v8, :cond_b

    iput-boolean v6, v7, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_b
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v1, :cond_d

    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    move v2, v3

    :cond_d
    :goto_6
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final refreshEntityHeader()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/CaptivePortalData;->getExpiryTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x2

    invoke-virtual {v1, v5, v6}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    long-to-double v3, v3

    const/4 v1, 0x0

    invoke-static {p0, v3, v4, v1, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f14370f

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f143565

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_0
    iput-object v3, v0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method

.method public refreshEntryHeaderIcon()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getWifiDrawable(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071457

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    if-ne v3, v2, :cond_1

    if-eq v4, v2, :cond_3

    :cond_1
    const-class v3, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v0, v2, v2}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    move-object v0, v2

    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method

.method public final refreshIpLayerInfo()V
    .locals 14

    const/4 v0, 0x1

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v2, Ljava/util/StringJoiner;

    const-string v5, "\n"

    invoke-direct {v2, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    if-ltz v9, :cond_3

    if-gt v9, v1, :cond_3

    if-nez v9, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    rsub-int/lit8 v9, v9, 0x20

    const/4 v10, -0x1

    shl-int v9, v10, v9

    :goto_1
    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v13, 0x4

    :try_start_0
    new-array v13, v13, [B

    aput-byte v10, v13, v4

    aput-byte v11, v13, v0

    aput-byte v12, v13, v3

    const/4 v10, 0x3

    aput-byte v9, v13, v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v9

    check-cast v9, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v9}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :catch_0
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-object v9, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet6Address;

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-static {v3, v8}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-static {v3, v9}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-static {v3, v7}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-static {v3, v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringJoiner;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final refreshPage()V
    .locals 13

    const-string v0, "WifiDetailsPrefCtrl2"

    const-string v1, "Update UI!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntryHeaderIcon()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iput v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v5

    iget v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    if-ne v6, v1, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mShowX:Z

    if-ne v6, v5, :cond_1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    iput-boolean v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mShowX:Z

    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    invoke-virtual {v6, v1, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->getIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x1010429

    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getBandString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v1, v5, v3}, Lcom/android/wifitrackerlib/Utils;->getSpeedString(Landroid/content/Context;Landroid/net/wifi/WifiInfo;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v1, v5, v4}, Lcom/android/wifitrackerlib/Utils;->getSpeedString(Landroid/content/Context;Landroid/net/wifi/WifiInfo;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    instance-of v1, v0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_4
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v6, v5, v7}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->fineSubscriptionInfo(ILjava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v5, v2, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const v2, 0x7f1435ef

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    if-nez v2, :cond_b

    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    invoke-virtual {v2, v3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    sget-object v8, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "carrier_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string v10, "carrier_id=?"

    invoke-virtual/range {v5 .. v12}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getPrivacy()I

    move-result v5

    if-ne v5, v3, :cond_f

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    const v5, 0x7f14328d

    goto :goto_6

    :cond_e
    const v5, 0x7f14328c

    goto :goto_6

    :cond_f
    const v5, 0x7f143289

    :goto_6
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const v2, 0x7f140c9c

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getStandardString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_8

    :cond_11
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_8
    return-void
.end method

.method public showConfirmForgetDialog()V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    const p0, 0x7f141010

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1408bf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f14356c

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f141011

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final updateCaptivePortalButton()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/CaptivePortalData;->getVenueInfoUrl()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const v2, 0x7f080606

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v3, 0x7f1436ad

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;I)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    return p0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v4, 0x7f14372c

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public updateNetworkInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_0
    return-void
.end method
