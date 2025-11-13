.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotSwitchEnabler.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;,
        Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static TAG:Ljava/lang/String; = "WifiApAutoHotspotSwitchEnabler"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

.field private mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ABSENT"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.internet.changed"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    .line 77
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mActivity:Landroid/app/Activity;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private preSetCheckConditions()V
    .locals 6

    .line 123
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Checking setCheck conditions."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 125
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 126
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v3

    .line 127
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Sim check condition failed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 132
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->mobile_hotspot_dialog_nouim_or_nosim_warning:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 141
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Network check condition failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    .line 145
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Samsung Account check condition failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x69

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->launchAddSamsungAccountActivity(Landroid/app/Activity;I)V

    return-void

    .line 151
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    .line 153
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "AutoHotspot switch FirstTime Configuration dialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "autohotspot_waiting_for_password_change"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 156
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x4

    .line 159
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_first_time_configuration:I

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiSharingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiSharingLiteSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_wifi_sharing"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    return-void
.end method


# virtual methods
.method getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 252
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 253
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, "on Start"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 257
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    .line 258
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 259
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    new-instance v1, Landroid/os/Handler;

    .line 261
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    invoke-virtual {p1, p2, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 264
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3

    .line 265
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, "onStop"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    if-eqz p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mAutoHotspotNetworkCallBack:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;

    .line 270
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 112
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->preSetCheckConditions()V

    goto :goto_0

    .line 117
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "Fragment Activity null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    return-void
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    return-void
.end method

.method public updateSwitchState()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState(Z)V

    return-void
.end method

.method public updateSwitchState(Z)V
    .locals 11

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 179
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 180
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v5

    .line 181
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v3

    .line 182
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result v7

    .line 184
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating Autohotspot Switch state - , isTetheringRestricted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isAirplaneModeOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSimDisabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isNetworkDisconnected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSamsungAccountLoggedOut : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isDefaultPassphraseSet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isNearByDeviceScanningDisabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", setNearByDeviceScanningEnabledIfRequired: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_2
    if-eqz v4, :cond_3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_3
    if-eqz v5, :cond_4

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    .line 223
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v7, :cond_6

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 226
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_6
    if-eqz v6, :cond_8

    const/4 v0, 0x6

    if-eqz p1, :cond_7

    .line 233
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->setNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 236
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    .line 241
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    .line 247
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void
.end method
