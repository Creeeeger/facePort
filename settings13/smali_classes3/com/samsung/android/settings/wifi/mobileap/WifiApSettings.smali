.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static TAG:Ljava/lang/String;

.field private static final WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBandPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

.field private mContext:Landroid/content/Context;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageAllowed:Z

.field private mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

.field private mFamilySharingPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

.field private mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mIsHotspotResetRequired:Z

.field private mIsTablet:Z

.field private mLastConfigureButtonClickTime:J

.field private mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mNetworkDisplayPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mOldHotspotClientMacList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

.field private mUnUsedColor:I

.field private mWifiApAutoHotspotController:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

.field private mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

.field private mWifiApOtpSwitchController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

.field private mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

.field private mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

.field private mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

.field private switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshHandler(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlaunchConnectedDeviceSettingsActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->launchConnectedDeviceSettingsActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 105
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 122
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    .line 144
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 155
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_LIGHT_COLOR:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mUnUsedColor:I

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    .line 184
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    return-void
.end method

.method private addInstantHotspotTipDesc()V
    .locals 2

    .line 566
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v1, "top_level_wifi_settings"

    .line 567
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 568
    sget v1, Lcom/android/settings/R$string;->wifi_ap_instant_hotspot_tip_desc:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 569
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecTipLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    return-void
.end method

.method private addInstantHotspotTipLink(Ljava/lang/String;)V
    .locals 3

    .line 553
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 554
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mdx"

    .line 555
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "flowId"

    const/16 v2, 0x2346

    .line 556
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 557
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string p1, "top_level_wifi_settings"

    .line 559
    iput-object p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 560
    sget p1, Lcom/android/settings/R$string;->link_to_windows_title:I

    iput p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 562
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecTipLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    return-void
.end method

.method private getLinkToWindowLandingActivityName()Ljava/lang/String;
    .locals 3

    const-string v0, "com.samsung.android.mdx"

    .line 592
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 593
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "LinkToWindowsRelativeLinkActivity"

    .line 594
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "getActivityName: Landing activity is null or empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityName: retrieved landing page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 602
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityName: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private initPreferences()V
    .locals 6

    .line 241
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "hotspot_description_layout_preference"

    .line 242
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpTextDescription()V

    .line 245
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    .line 246
    sget v2, Lcom/android/settings/R$string;->wifi_ssid:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setDividerLine(ZZ)V

    .line 248
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    .line 249
    sget v2, Lcom/android/settings/R$string;->wifi_password:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setDividerLine(ZZ)V

    .line 251
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBandPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    .line 252
    sget v2, Lcom/android/settings/R$string;->wifi_ap_configure_broadcast_band:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setDividerLine(ZZ)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "configure_detail_preference_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNetworkDisplayPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 255
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNetworkDisplayPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNetworkDisplayPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBandPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 258
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_ap_configure:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBandPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setAboveDividerVisibility(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApSettingUserModificationAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNetworkDisplayPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "connected_clients_preference_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "mobile_data_usage_preference_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "mobile_data_shared_preference"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    .line 299
    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setDividerLine(ZZ)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "stacked_progress_bar_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setInstantHotspotTipView()V

    return-void
.end method

.method private isInstantHotspotTipLinkEnabled()Z
    .locals 2

    .line 573
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ltw_instant_hotspot_tip_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private launchConnectedDeviceSettingsActivity()V
    .locals 2

    .line 855
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 856
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    .line 857
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private prepareBandSummaryText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 2

    if-eqz p2, :cond_0

    .line 625
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 628
    new-instance p0, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 630
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f38e38e

    invoke-direct {p2, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v1, 0x12

    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 632
    :cond_0
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method private refreshNetworkDisplayPreferenceCategory()V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 641
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "softApConfiguration is null in refreshNetworkDisplayPreferenceCategory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    .line 643
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshNetworkDisplayPreferenceCategory()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    .line 646
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBandPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplaySummaryText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->prepareBandSummaryText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsAnyOpenVariant(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    sget v2, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 650
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->CONFIG_ERROR_PASSWORD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getDefaultPassphraseSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v0, v1

    .line 656
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-eqz v0, :cond_5

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->CONFIG_ERROR_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 669
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEditButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private registerHandler()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setHelpTextDescription()V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_enable_help_text:I

    invoke-static {p0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApMaxClientFromFramework(Landroid/content/Context;)I

    move-result v1

    .line 231
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/R$plurals;->wifi_ap_instruction_changeable_maxclient_plurals_no_wifisharing_tablet:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/settings/R$plurals;->wifi_ap_instruction_changeable_maxclient_plurals_no_wifisharing:I

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 234
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/android/settings/R$plurals;->wifi_ap_instruction_changeable_maxclient_plurals_tablet:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/android/settings/R$plurals;->wifi_ap_instruction_changeable_maxclient_plurals_beyond:I

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 236
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private setInstantHotspotTipView()V
    .locals 3

    .line 534
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getLinkToWindowLandingActivityName()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->supportLinkToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isInstantHotspotTipLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    if-nez v0, :cond_1

    .line 541
    new-instance v0, Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/widget/SecTipLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecTipLinkView;->resetTipData()V

    .line 543
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addInstantHotspotTipDesc()V

    .line 544
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addInstantHotspotTipLink(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecTipLinkView;->create(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private supportLinkToWindow()Z
    .locals 4

    const-string v0, "com.samsung.android.mdx"

    const/4 v1, 0x0

    .line 581
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 583
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTargetAppInstalled: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private unRegisterHandler()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 216
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string p1, "getFragmentTitleResId()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 218
    sget p0, Lcom/android/settings/R$string;->mobileap_jpn:I

    return p0

    .line 220
    :cond_0
    sget p0, Lcom/android/settings/R$string;->mobileap:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 366
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 361
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_ap_settings:I

    return p0
.end method

.method public launchWifiApEditSettingsActivity(I)V
    .locals 4

    .line 608
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching WifiApEditSettings activity with title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mLastConfigureButtonClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 611
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string p1, "Avoiding Launching WifiApEditSettings activity within 500ms"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 614
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mLastConfigureButtonClickTime:J

    .line 615
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiApEditSettingsActivity"

    .line 616
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 617
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "activity_title"

    .line 618
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_title_resid"

    .line 619
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 325
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 326
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 328
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 329
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/app/Activity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 330
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 332
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 333
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "NEWCO"

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->sec_shortcut_mobileap:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 338
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 519
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() hit - requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "is_hotspot_rest_happened"

    .line 521
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    .line 522
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() hit - is reset required after resuming activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApAutoHotspotController:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x262

    if-ne p1, v0, :cond_2

    .line 526
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "Cannot create Family sharing group from here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onActivityResult(IILandroid/content/Intent;)V

    .line 530
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 192
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->setHost(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApAutoHotspotController:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFamilySharingPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    .line 197
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApOtpSwitchController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    .line 198
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    .line 206
    sget v0, Lcom/android/settings/R$string;->mobileap:I

    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->initPreferences()V

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 371
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog() - dialogId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 377
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 500
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 490
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 495
    :cond_0
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "TETH_010"

    const-string v1, "8101"

    .line 354
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 470
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->unRegisterHandler()V

    .line 474
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 437
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isDarkModeSet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_DARK_COLOR:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mUnUsedColor:I

    goto :goto_0

    .line 442
    :cond_0
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_LIGHT_COLOR:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mUnUsedColor:I

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->registerHandler()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates(Z)V

    .line 448
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApOtpSwitchController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 382
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->addSwitchChangeListener()V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 388
    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 391
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    .line 394
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    const-string v0, "user"

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_config_tethering"

    .line 400
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 410
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->flight_mode_enabled_toast:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_2

    .line 417
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 421
    :cond_7
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_8

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 428
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart: isWifiTetheringEnabled false EDM, this activity is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_9
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 457
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->removeSwitchChangeListener()V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    if-eqz v0, :cond_0

    .line 461
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    .line 463
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 465
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public refreshConnectedPreferenceCategory()V
    .locals 19

    move-object/from16 v0, p0

    .line 683
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\n"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_f

    .line 684
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 685
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 687
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    .line 688
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v6

    .line 689
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v7

    .line 690
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v8

    .line 694
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApStaListDetail(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 696
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_0

    :cond_0
    move v9, v5

    .line 702
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocale(D)[Ljava/lang/String;

    .line 703
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    const/4 v12, 0x0

    if-lez v11, :cond_2

    const-string v11, "/"

    .line 705
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v17

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    mul-double v13, v15, v17

    double-to-int v8, v13

    const/16 v11, 0x5a

    if-le v8, v11, :cond_1

    .line 709
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    sget v13, Lcom/android/settings/R$drawable;->sec_ic_wifi_ap_warning:I

    invoke-virtual {v11, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 711
    :cond_1
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v8, v12}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 714
    :cond_2
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v8, v12}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    .line 716
    :goto_1
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 717
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-direct {v10, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x21

    invoke-virtual {v8, v10, v5, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 718
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v5, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 719
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    const v11, 0x3f4ccccd    # 0.8f

    invoke-direct {v10, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v8, v10, v7, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 720
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableTitle(Landroid/text/SpannableString;)V

    if-nez v9, :cond_3

    .line 725
    sget v7, Lcom/android/settings/R$string;->wifi_ap_no_devices_connected:I

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const-string v7, " "

    if-ne v9, v4, :cond_4

    .line 728
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/settings/R$string;->wifi_ap_connected_device:I

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 730
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/settings/R$string;->wifi_ap_connected_devices:I

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 733
    :goto_2
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApStaListDetail(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 734
    new-instance v8, Ljava/lang/StringBuffer;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_mobile_data_shared_today:I

    invoke-virtual {v0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataSharedDetailsPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 739
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 740
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v7, v3, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsToday(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v3

    .line 741
    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsToday(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 742
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hotspot List : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 744
    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hotspotClientList.size(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_6

    .line 747
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 748
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 749
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    goto :goto_3

    .line 751
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_8

    .line 754
    :cond_6
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 755
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 756
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 757
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v11, v10}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    goto :goto_4

    :cond_7
    move v9, v5

    :goto_5
    if-ge v9, v8, :cond_d

    .line 761
    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    aget v10, v10, v9

    .line 762
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 763
    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v11

    .line 764
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 765
    sget v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->OTHERS_COLOR:I

    .line 767
    :cond_8
    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    sget v15, Lcom/android/settings/R$layout;->sec_wifi_ap_progress_bar_list_preference:I

    invoke-direct {v11, v13, v14, v10, v15}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApClientDetails;II)V

    add-int/lit8 v10, v9, 0x64

    .line 768
    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setOrder(I)V

    .line 769
    invoke-virtual {v11, v5, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setDividerLine(ZZ)V

    .line 770
    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgressBarVisibility(Z)V

    .line 773
    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    .line 774
    invoke-virtual {v11, v4}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 775
    invoke-virtual {v11, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setEnabled(Z)V

    .line 776
    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->setDefaultSummary()V

    .line 777
    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;

    invoke-direct {v10, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 785
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 786
    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgress()J

    move-result-wide v13

    long-to-float v10, v13

    .line 787
    new-instance v13, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v11}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgressColor()I

    move-result v11

    invoke-direct {v13, v14, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    move v8, v5

    .line 790
    :goto_6
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 791
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v9

    .line 792
    instance-of v10, v9, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    if-eqz v10, :cond_c

    .line 793
    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    .line 794
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 795
    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->isEqualsWithMac(Lcom/samsung/android/wifi/SemWifiApClientDetails;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 796
    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    goto :goto_7

    .line 799
    :cond_b
    invoke-virtual {v9, v5, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setDividerLine(ZZ)V

    .line 800
    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 802
    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgressBarVisibility(Z)V

    .line 803
    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    .line 804
    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 805
    invoke-virtual {v9, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setEnabled(Z)V

    .line 806
    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->setDefaultSummary()V

    .line 807
    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v9}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgress()J

    move-result-wide v13

    long-to-float v13, v13

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgressColor()I

    move-result v9

    invoke-direct {v10, v11, v13, v9}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 812
    :cond_d
    :goto_8
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldHotspotClientMacList:Ljava/util/List;

    .line 813
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmpl-double v3, v3, v7

    if-lez v3, :cond_e

    .line 814
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v1, v3

    .line 815
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    sget v4, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_LIGHT_COLOR:I

    const-string v5, "unused_data_name"

    invoke-direct {v3, v5, v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_e
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->setProgressBarEntries(Ljava/util/ArrayList;)V

    .line 818
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->setProgressBarEntries(Ljava/util/ArrayList;)V

    goto/16 :goto_b

    .line 820
    :cond_f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 821
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 822
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 823
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 824
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 826
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApStaListDetail(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 828
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_9

    :cond_10
    move v6, v5

    .line 830
    :goto_9
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mConnectedDevices.size():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_11

    .line 832
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 833
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 834
    sget v2, Lcom/android/settings/R$string;->wifi_ap_no_devices:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 835
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_b

    :cond_11
    move v7, v5

    :goto_a
    if-ge v7, v6, :cond_15

    .line 838
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 839
    aget-object v9, v8, v9

    .line 841
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "(null)"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 842
    :cond_12
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settings/R$string;->wifi_ap_connected_device:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_13
    move-object v12, v9

    .line 844
    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    aget-object v13, v8, v5

    aget-object v14, v8, v4

    aget-object v8, v8, v3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 845
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 849
    :cond_14
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_15
    :goto_b
    return-void
.end method

.method public refreshPreferenceStates(Z)V
    .locals 1

    .line 510
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TAG:Ljava/lang/String;

    const-string v0, "refreshPreferenceStates()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpTextDescription()V

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshNetworkDisplayPreferenceCategory()V

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshConnectedPreferenceCategory()V

    .line 514
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->refresh()V

    return-void
.end method
