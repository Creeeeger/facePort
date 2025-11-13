.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;,
        Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field private static final ENABLE_TENCENT_SECURITY_WIFI:Z

.field static IS_ENABLED_PROVIDER_MODEL:Ljava/lang/Boolean; = null

.field static final MENU_ID_DISCONNECT:I = 0x3

.field static final MENU_ID_FORGET:I = 0x4

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "wifi_data_usage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SUPPORT_WPA3_SAE:Z

.field private static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field private static mWifiSettingsForeground:Z


# instance fields
.field private isFragmentPaused:Z

.field private mAlreadyCalledAutoHotspotApi:Z

.field private mAlreadyCalledMcfAutoHotspotApi:Z

.field private mAppBarView:Landroid/view/View;

.field private mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mAutoHotspotWifiState:I

.field private mClickedConnect:Z

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedListAdapterListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

.field mConnectingNetworkId:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mDialogMode:I

.field private mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mDialogWifiEntryKey:Ljava/lang/String;

.field private mEnableNextOnConnection:Z

.field private mExteranlProgressBar:Landroid/widget/ProgressBar;

.field private mFinishIfConnected:Z

.field private mFinishIfWifiDisabled:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHideActionBarMenus:Z

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIgnoreUpdateOnDisabling:Z

.field private mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerDialog:Z

.field private mInSetupWizardActivity:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsDexMode:Z

.field private mIsLaunching:Z

.field private mIsRestricted:Z

.field private mIsScanning:Z

.field private mIsSupportedContactUs:Z

.field private mIsWifiEntryListStale:Z

.field private mLastQRAssociate:J

.field private mLastQRConnectId:I

.field private mListAdapterListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

.field private mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

.field private mListView:Landroid/view/View;

.field private final mLog:Lcom/samsung/wifitrackerlib/LogUtils;

.field private mLoggingScreenId:Ljava/lang/String;

.field private mMainHandler:Landroid/os/Handler;

.field private mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

.field private mMcfAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

.field private mOpenSsid:Ljava/lang/String;

.field private mPreviousWifiState:I

.field private mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mQrConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollCounter:I

.field private mScrollTimer:J

.field private mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWifiQrScanMenu:Landroid/view/MenuItem;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$3Ovbsdxf7l-Fp27JB20DTf4KxZU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$showErrorDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mlk5CdT0AZb85M0SCiAxlqBF84(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$4(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CcYaBtDKw8N4uPIZf6y3_txB4fo(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$2(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LjyG46mZ66c9IrAAIzint3KgtB8(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$showAutoWifiTipPopup$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$MRHbojYxzbUxiF2JW88M5ZHJF_U(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$3(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V4YZELp8nAvwDLrxXp6K97ygTrw(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$getWifiEntries$5(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aPXJw_xs7opRRBCX_gehbUwquKU(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkConnectViaQr()V

    return-void
.end method

.method public static synthetic $r8$lambda$mTdhR_tgj5301ngIhkN5H_wGw1A(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sKH3HqZapGQLURKdQE8hEKkmszs(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->lambda$getScannedOpenNetwork$7(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/wifitrackerlib/LogUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoggingScreenId(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualConnectingNetwork(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryPopupController(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/android/settings/wifi/WifiRetryPopupController;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClickedConnect(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIgnoreUpdateOnDisabling(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLaunching(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsLaunching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmManualConnectingNetwork(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScrollTimer(Lcom/android/settings/wifi/WifiSettings;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maddAutoHotspotPreference(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addAutoHotspotPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddMcfAutoHotspotPreference(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addMcfAutoHotspotPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoHotspotPreferenceCategory(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->autoHotspotPreferenceCategory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforget(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misRetryPopupNeeded(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isRetryPopupNeeded(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchConnectFragment(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->launchConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchFragment(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEmptyView(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAutoWifiTipPopup(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showAutoWifiTipPopup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConnectFragmentForRetry(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorDialog(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smDBG()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 179
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->IS_ENABLED_PROVIDER_MODEL:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 211
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->SUPPORT_WPA3_SAE:Z

    .line 255
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TencentSecurityWiFi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->ENABLE_TENCENT_SECURITY_WIFI:Z

    .line 361
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 1418
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "no_config_wifi"

    .line 408
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiEntryListStale:Z

    .line 267
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    const/4 v1, -0x1

    .line 327
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    const-wide/16 v2, -0x1

    .line 328
    iput-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRAssociate:J

    const-wide/16 v2, 0x0

    .line 339
    iput-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const/4 v2, 0x0

    .line 340
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    .line 344
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    .line 365
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    .line 372
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    .line 374
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1822
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedListAdapterListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    .line 1831
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAdapterListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    .line 2126
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    .line 2553
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 410
    new-instance v0, Lcom/samsung/wifitrackerlib/LogUtils;

    invoke-direct {v0}, Lcom/samsung/wifitrackerlib/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    return-void
.end method

.method private static final DBG()Z
    .locals 2

    .line 170
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "WifiSettings"

    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method private addAutoHotspotPreference()V
    .locals 9

    const-string v0, "WifiSettings.AutoHotspot"

    const-string v1, "addAutoHotspotPreference() - Triggered"

    .line 2508
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 2512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAutoHotspotPreference() - wifiState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mAutoHotspotWifiState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    if-eqz v1, :cond_7

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    .line 2513
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    if-eq v1, v2, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2523
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "addAutoHotspotPreference() - BLE scan result is null"

    .line 2525
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    return-void

    .line 2529
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAutoHotspotPreference() - BLE scan Started, bleScanResult.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2532
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAutoHotspotPreference() - mConnectedSSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 2538
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 2539
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v7, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v6

    .line 2540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAutoHotspotPreference() - Received BleAp values, mWifiMac: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mSSID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", connectedState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    if-eqz v2, :cond_3

    .line 2541
    iget-object v6, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    move-object v3, v5

    :cond_5
    if-eqz v3, :cond_6

    .line 2547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAutoHotspotPreference() - removing temp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from bleScanResult"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2550
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateAutoHotspotList(Ljava/util/List;)V

    return-void

    :cond_7
    :goto_1
    const-string v1, "addAutoHotspotPreference() - wifiState is WIFI_STATE_DISABLED/WIFI_STATE_DISABLING"

    .line 2518
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    return-void
.end method

.method private addMcfAutoHotspotPreference()V
    .locals 10

    .line 2623
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "WifiSettings.MCFAutoHotspot"

    const-string v1, "addMcfAutoHotspotPreference() - Triggered"

    .line 2626
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 2630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMcfAutoHotspotPreference() - wifiState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v3, "WifiSettings.AutoHotspot"

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_8

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    .line 2639
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getMcfScanDetail()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "addMcfAutoHotspotPreference() - Mcf scan result is null"

    .line 2641
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    return-void

    .line 2645
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMcfAutoHotspotPreference() - Mcf scan Started, mcfScanResult.size() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMcfAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2647
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMcfAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMcfAutoHotspotPreference() - mConnectedSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v2, v4

    .line 2653
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 2654
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v8, v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/wifi/SemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v7

    .line 2655
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addMcfAutoHotspotPreference() - Received BleAp values, mWifiMac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mSSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", connectedState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    if-eqz v2, :cond_4

    .line 2656
    iget-object v7, v6, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_5
    move-object v4, v6

    :cond_6
    if-eqz v4, :cond_7

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMcfAutoHotspotPreference() - removing temp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from mcfScanResult"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2665
    :cond_7
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateMcfAutoHotspotList(Ljava/util/List;)V

    return-void

    :cond_8
    :goto_1
    const-string v0, "addMcfAutoHotspotPreference() - wifiState is WIFI_STATE_DISABLED/WIFI_STATE_DISABLING"

    .line 2634
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    :cond_9
    :goto_2
    return-void
.end method

.method private addPossibleConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 2395
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 2396
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    .line 2397
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    const-string v1, "WifiSettings"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 2399
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->getScannedOpenNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 2400
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v3, 0x6

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 2401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scannedOpenNetwork : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2403
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 2406
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2407
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2408
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2409
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 2410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add owe network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2414
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add qr network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private allowedDirectMenu(I)Z
    .locals 2

    .line 1020
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.wifi.direct"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string p0, "WifiSettings"

    const-string/jumbo p1, "not allowed Wi-Fi direct. disable Wi-Fi direct menu"

    .line 1022
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private autoHotspotPreferenceCategory()V
    .locals 2

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoHotspotPreferenceCategory() - Triggered, getSamsungAccountCount() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getSamsungAccountCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.AutoHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2497
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    goto :goto_1

    .line 2495
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addAutoHotspotPreference()V

    :goto_1
    return-void
.end method

.method private checkConnectViaQr()V
    .locals 10

    .line 2336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRAssociate:J

    sub-long/2addr v0, v2

    .line 2337
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_2

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2341
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    const-string v3, "WifiSettings"

    if-nez v2, :cond_1

    const-string/jumbo v1, "scanresult is null"

    .line 2343
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 2345
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    :cond_1
    if-eqz v0, :cond_9

    .line 2349
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isNetworkConnected(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2350
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 2351
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const-wide/16 v7, 0xc80

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2353
    :cond_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2354
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2355
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 2356
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2357
    sget-boolean v8, Lcom/android/settings/wifi/WifiSettings;->SUPPORT_WPA3_SAE:Z

    const-string v9, "SAE"

    if-eqz v8, :cond_5

    if-eqz v4, :cond_4

    .line 2358
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2359
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x4

    .line 2360
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_4

    .line 2365
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2366
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "PSK"

    .line 2367
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_unknown_secured_ap:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2369
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2375
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRAssociate:J

    .line 2376
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 2377
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 2379
    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    if-ne v4, v2, :cond_7

    .line 2381
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 2382
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 2384
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try connect to network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(IZ)V

    .line 2386
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    .line 2389
    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    return-void
.end method

.method private checkWifiConnectivity()Z
    .locals 1

    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 652
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 653
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private configureCurrentNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1775
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->distroyConnected()V

    const/4 p0, 0x0

    return p0

    .line 1778
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->configureConnected(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p0, 0x1

    return p0
.end method

.method private configureEasySetupNetwork(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 1783
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyEasySetup()V

    return-void

    .line 1787
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->configureEasySetup(Ljava/util/List;)V

    .line 1788
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "easy setup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 4

    .line 743
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 745
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private forceScrollToTopOfList()V
    .locals 4

    .line 1620
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    const-string v1, "WifiSettings"

    if-lez v0, :cond_1

    .line 1621
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isFragmentPaused:Z

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1622
    iput-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const/4 v0, 0x0

    .line 1623
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    const-string p0, "Finish - force scroll up"

    .line 1624
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Keep mScrollerTimer since fragment is paused"

    .line 1626
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    if-eqz v0, :cond_3

    .line 1629
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "force scroll up"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->forceScrollToTop()V

    .line 1631
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    :cond_3
    :goto_0
    return-void
.end method

.method private forget(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 1335
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x0

    .line 1336
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    return-void
.end method

.method private getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;
    .locals 0

    .line 1815
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;
    .locals 0

    .line 1819
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getNetworkIdFromEntry(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 0

    .line 2012
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2014
    :cond_0
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return p0
.end method

.method private getSamsungAccountCount()I
    .locals 1

    .line 2502
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 2503
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 2504
    array-length p0, p0

    return p0
.end method

.method private getScannedOpenNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Landroid/net/wifi/ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 2439
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2441
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 2443
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2445
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Open network "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in scan list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    .line 2311
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    return v0

    .line 2315
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v2, 0x2

    if-nez p0, :cond_7

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2316
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    .line 2319
    :cond_1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v0, 0x3

    if-nez p0, :cond_6

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2320
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 2326
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    return p0

    .line 2329
    :cond_3
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    .line 2332
    :cond_4
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->getWepKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method private getWifiConfigFromIntent(Landroid/content/Intent;)Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .line 2232
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v1, "AUTH_TYPE"

    const/4 v2, -0x1

    .line 2233
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SSID"

    .line 2234
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PASSWORD"

    .line 2235
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HIDDEN"

    const/4 v5, 0x0

    .line 2236
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 2237
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 2239
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2241
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2243
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    .line 2244
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2245
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v2, p1, :cond_0

    if-ne v7, v1, :cond_0

    return-object v6

    :cond_0
    if-eqz v1, :cond_a

    const/4 v2, 0x1

    const/16 v4, 0x22

    if-eq v1, v2, :cond_7

    const-string v5, "[0-9A-Fa-f]{64}"

    const/4 v7, 0x2

    if-eq v1, v7, :cond_5

    const/4 v7, 0x4

    if-eq v1, v7, :cond_3

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    return-object v6

    :cond_1
    const/4 p0, 0x7

    .line 2280
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v3, :cond_b

    .line 2282
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2283
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 2285
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2287
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 2292
    :cond_3
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->SUPPORT_WPA3_SAE:Z

    if-nez v1, :cond_4

    .line 2293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_unknown_secured_ap:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v6

    .line 2296
    :cond_4
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v3, :cond_b

    .line 2298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2268
    :cond_5
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v3, :cond_b

    .line 2270
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2271
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2273
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2275
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2257
    :cond_7
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v3, :cond_b

    .line 2259
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_8

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_9

    :cond_8
    const-string p0, "[0-9A-Fa-f]*"

    .line 2260
    invoke-virtual {v3, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2261
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, p0, v5

    goto :goto_0

    .line 2263
    :cond_9
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    goto :goto_0

    .line 2254
    :cond_a
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 2305
    :cond_b
    :goto_0
    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWifiConfigFromIntent return config : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 2018
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2020
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2021
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiEntries()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 1748
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda1;-><init>()V

    .line 1749
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1751
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wifi_config_key"

    .line 1266
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private handleDppQrCode(Ljava/lang/String;)V
    .locals 2

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Dpp QR data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_wifi_qr_scan_failed_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->common_ok:I

    const/4 v0, 0x0

    .line 2195
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2196
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 2197
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private hasWepKeys(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 2451
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p0

    .line 2452
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2453
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private insertLogging(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2092
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2097
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2105
    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 1522
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1527
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1529
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1532
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isEasySetupSupported()Z
    .locals 3

    .line 1792
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safe_wifi"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isImproperSecurityTypeFor6ENetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 2114
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetHighestSecurity()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2123
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIs6GHzOnly()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isModeSupportQr()Z
    .locals 1

    .line 2164
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isMultiWindowMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isModeSupportQr(Z)Z

    move-result p0

    return p0
.end method

.method private isModeSupportQr(Z)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "WifiSettings"

    if-eqz p1, :cond_0

    const-string/jumbo p0, "multiwindow not support QR scanner"

    .line 2169
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2171
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsDexMode:Z

    if-eqz p0, :cond_1

    const-string p0, "Dex mode not support QR"

    .line 2172
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isMultiWindowMode()Z
    .locals 1

    .line 2482
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->getTaskWindowingMode(Landroid/os/IBinder;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2486
    :cond_0
    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    return p0
.end method

.method private isNetworkConnected(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 2420
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2422
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2423
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result p0

    .line 2424
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 2468
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "PSK"

    .line 2469
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    .line 2470
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    .line 2471
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WAPI-PSK"

    .line 2472
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WAPI-CERT"

    .line 2473
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "SUITE-B-192"

    .line 2474
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 2461
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 2464
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->hasWepKeys(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isOweNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 2478
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "OWE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRetryPopupNeeded(Landroid/content/Intent;)Z
    .locals 3

    const-string/jumbo v0, "reason_code"

    const/16 v1, 0x2710

    .line 1722
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK_CONNECT_FAILED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "not manual connect or supported security "

    .line 1726
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1729
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1730
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->needRetryForActionConnectFailed(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1731
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryWithCurrentConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private isSafeModeOrRfMode()Z
    .locals 3

    .line 2109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safe_wifi"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    .line 2110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_new_rf_test_mode"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 1

    .line 259
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getScannedOpenNetwork$7(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 2440
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2441
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->isOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getWifiEntries$5(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 1750
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onWifiEntriesChanged$2(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$3(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 1218
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$4(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private synthetic lambda$showAutoWifiTipPopup$1()V
    .locals 7

    .line 971
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 975
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    .line 976
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    .line 977
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_wifi_bubble_tips_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->launch_wifi_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 988
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/high16 v3, 0x420c0000    # 35.0f

    .line 990
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/high16 v4, 0x41900000    # 18.0f

    .line 992
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v4, v6

    .line 994
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    aget v5, v2, v6

    .line 995
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    goto :goto_0

    :cond_1
    aget v5, v2, v6

    add-int/2addr v5, v3

    .line 996
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget v1, v2, v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-virtual {v3, v5, v1}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 997
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 998
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 997
    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method

.method private static synthetic lambda$showErrorDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private launchConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 3

    .line 1996
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsLaunching:Z

    if-eqz v0, :cond_0

    return-void

    .line 1999
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2000
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_connect_wifientry_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DialogForRetry"

    .line 2001
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2002
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->getDisableReason()I

    move-result p2

    const-string v1, "disableReason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2003
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object p2

    const-string v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    const-class p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private launchFragment(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    .line 2030
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_0
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 2037
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2038
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2039
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2040
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 2041
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 2046
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_0
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 2053
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2054
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2055
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 2056
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 2057
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchOpenRoamingFragment(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "launchOpenRoamingFragment"

    .line 1985
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    .line 1988
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.net.wifi.wifiguider.OPENROAMING_EULA"

    .line 1989
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 1990
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "oauth_provider"

    .line 1991
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1992
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onReceiveQrIntent(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_5

    const-string v0, "AUTH_TYPE"

    .line 2205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DPP"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "security"

    .line 2206
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2207
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "WifiSettings"

    const-string/jumbo v4, "wifi is off, enable wifi"

    .line 2208
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    if-nez v1, :cond_1

    .line 2210
    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    .line 2212
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isNeedToConfirmApDisable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2213
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2216
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2217
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfigFromIntent(Landroid/content/Intent;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addPossibleConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 2218
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2219
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleDppQrCode(Ljava/lang/String;)V

    goto :goto_0

    .line 2222
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    .line 2223
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getWifiConfigurations()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    .line 2225
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2226
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkConnectViaQr()V

    :cond_5
    return-void
.end method

.method private popOrFinishThisActivity()V
    .locals 2

    .line 2062
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2063
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    goto :goto_0

    .line 2065
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method private popOrFinishThisActivity(ILandroid/content/Intent;)V
    .locals 1

    .line 2071
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2072
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    goto :goto_0

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.wifi.salogging.intent.action.WIFI_TIPS_SA_LOGGING"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.updateautohotspot"

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.updatemcfhotspot"

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.NETWORK_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiApSmartCallback()V
    .locals 2

    const-string v0, "WifiSettings.AutoHotspot"

    const-string v1, "Registering WifiApSmartCallback"

    .line 2570
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_1

    .line 2572
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    if-eqz v1, :cond_1

    .line 2573
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method private removeAutoHotspotList()V
    .locals 2

    .line 2562
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WifiSettings.AutoHotspot"

    const-string/jumbo v1, "removeAutoHotspotList() , Setting wifiApBleClientRole(false)"

    .line 2563
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2564
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    .line 2565
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    :cond_1
    return-void
.end method

.method private removeMcfAutoHotspotList()V
    .locals 0

    .line 2670
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    return-void
.end method

.method private restrictUi()V
    .locals 1

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_user_restricted:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    .line 734
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRestrictionView()V

    return-void
.end method

.method private setEmptyView(I)V
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateEmptyView(Z)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1803
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 1804
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    .line 1806
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1804
    invoke-static {v1, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method private setupActionBarMenus(Landroid/view/Menu;)V
    .locals 3

    .line 1003
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1005
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 1006
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isCameraSupportQrScan(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    .line 1010
    sget v1, Lcom/android/settings/R$string;->sec_wifi_qr_scan_button_tts:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 1011
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1012
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    sget v0, Lcom/android/settings/R$drawable;->sec_wifi_qr_code_scanner_24dp:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1013
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1014
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility()V

    :cond_1
    return-void
.end method

.method private showAutoWifiTipPopup()V
    .locals 2

    .line 969
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 970
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    const-string v0, "WifiSettings"

    if-nez p1, :cond_0

    const-string p0, "AP is null, ignored retry popup"

    .line 1708
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1711
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "AP is OpenRoamingNetwork, ignored retry popup"

    .line 1712
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "showConnectFragmentForRetry"

    .line 1715
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x1

    .line 1717
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->launchConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    const/4 p1, 0x0

    .line 1718
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 1

    .line 2080
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2081
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 2082
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;-><init>()V

    const v0, 0x104000a

    .line 2083
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2084
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startContactUsActivity()V
    .locals 3

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "start contact us activity"

    .line 1045
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v1, "1400"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v0, :cond_0

    .line 1049
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "voc://view/contactUs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "packageName"

    const-string v2, "com.android.settings.wifi"

    .line 1050
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    const-string v2, "6u17f9w7m9"

    .line 1051
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "faqUrl"

    const-string/jumbo v2, "voc://view/categories"

    .line 1054
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private startMcfClientMHSDiscovery(Z)V
    .locals 2

    .line 2674
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2677
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMcfClientAdvertise() - isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAlreadyCalledMcfAutoHotspotApi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.MCFAutoHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 2679
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-nez v0, :cond_1

    .line 2680
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "Setting startMcfClientAdvertise(true)"

    .line 2681
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2682
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    .line 2683
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 2685
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-eqz p1, :cond_2

    .line 2686
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    .line 2687
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private startMcfClientMHSDiscoveryWithoutCheckingWifi(Z)V
    .locals 2

    .line 2692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2695
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMcfClientAdvertiseWithoutCheckingWifi() - isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAlreadyCalledMcfAutoHotspotApi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.MCFAutoHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 2697
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-nez v0, :cond_1

    const-string p1, "Setting startMcfClientAdvertiseWithoutCheckingWifi(true)"

    .line 2698
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2699
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    .line 2700
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 2702
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-eqz p1, :cond_2

    .line 2703
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    .line 2704
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private startSecQRScanner()V
    .locals 3

    const/4 v0, 0x1

    .line 2179
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->getSecScannerIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 2180
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x0

    .line 2181
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    const/4 v2, 0x5

    .line 2183
    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startWifiP2pSettings()V
    .locals 3

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "start p2p settings"

    .line 1033
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_menu_p2p:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private unregisterWifiApSmartCallback()V
    .locals 2

    const-string v0, "WifiSettings.AutoHotspot"

    const-string v1, "Unregistering WifiApSmartCallback"

    .line 2609
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_1

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    if-eqz p0, :cond_1

    .line 2612
    invoke-virtual {v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    :cond_1
    return-void
.end method

.method private updateQrScanMenuVisibility()V
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 2144
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility(I)V

    return-void
.end method

.method private updateQrScanMenuVisibility(I)V
    .locals 3

    .line 2148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2149
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isModeSupportQr()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2150
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2151
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 2156
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    if-nez p1, :cond_5

    .line 2158
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "WifiSettings"

    const-string/jumbo v0, "not allowed QR scan. disable QR scan menu"

    .line 2153
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_1
    return-void
.end method

.method private updateWifiEntryPreferences(Z)V
    .locals 11

    const-wide/16 v0, 0x6a4

    .line 1539
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "WifiSettings"

    if-eqz v2, :cond_1

    :try_start_1
    const-string/jumbo p1, "updateWifiEntryPreferences - UI restricted"

    .line 1540
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1609
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_0

    .line 1611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1613
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 1545
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    .line 1609
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_2

    .line 1611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1613
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    .line 1549
    :cond_3
    :try_start_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    const-string/jumbo p1, "updateWifiEntryPreferences ignoring..."

    .line 1550
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1609
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_4

    .line 1611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1613
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    .line 1555
    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_e

    if-eqz v2, :cond_e

    const/4 v6, 0x4

    if-ne v2, v6, :cond_6

    goto/16 :goto_2

    .line 1563
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 1565
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v2

    .line 1566
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    .line 1568
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 1569
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_7

    const-string v8, "No available networks"

    .line 1572
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    .line 1575
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->configureCurrentNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v8

    .line 1576
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateWifiEntryPreferences size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " connected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " scan:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isEasySetupSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1580
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getEasySetupNetworks()Ljava/util/List;

    move-result-object v3

    .line 1581
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->configureEasySetupNetwork(Ljava/util/List;)V

    :cond_8
    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_a

    .line 1584
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wifitrackerlib/WifiEntry;

    .line 1586
    invoke-virtual {v8}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 1587
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1590
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v2, v5, v7, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateWithAnimation(Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;Z)V

    .line 1592
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->autoHotspotPreferenceCategory()V

    .line 1596
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addMcfAutoHotspotPreference()V

    .line 1599
    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 1600
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    goto :goto_1

    .line 1602
    :cond_b
    iput-wide v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 1603
    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    :goto_1
    if-eqz p1, :cond_c

    .line 1606
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1609
    :cond_c
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_d

    .line 1611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1613
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void

    .line 1559
    :cond_e
    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWifiEntryPreferences - Wi-Fi state is disabling/disabled "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1609
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_f

    .line 1611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1613
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void

    :catchall_0
    move-exception p1

    .line 1609
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez v2, :cond_10

    .line 1611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1613
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1616
    :cond_10
    throw p1
.end method

.method private updateWifiEntryWithCurrentConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getNetworkIdFromEntry(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 1739
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1741
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    return-void
.end method

.method private wifiApBleClientRole(Z)V
    .locals 2

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifiApBleClientRole() - isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAlreadyCalledAutoHotspotApi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.AutoHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 2581
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-nez v0, :cond_1

    .line 2582
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "Setting wifiApBleClientRole(true)"

    .line 2583
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2584
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    .line 2585
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 2587
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-eqz p1, :cond_2

    .line 2588
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    .line 2589
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private wifiApBleClientRoleWithoutCheckingWifi(Z)V
    .locals 2

    .line 2595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifiApBleClientRoleWithoutCheckingWifi() - isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAlreadyCalledAutoHotspotApi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.AutoHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 2597
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 2598
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    const-string v0, "Setting wifiApBleClientRoleWithoutCheckingWifi(true)"

    .line 2599
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 2601
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2602
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    .line 2603
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected connect(IZ)V
    .locals 3

    .line 1389
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1390
    new-instance p2, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    const/4 v1, 0x0

    .line 1391
    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(ILjava/lang/String;Z)V

    .line 1392
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1393
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 1395
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZ)V

    .line 1397
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    .line 1398
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    if-nez p2, :cond_1

    .line 1370
    iget-boolean p2, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz p2, :cond_2

    .line 1371
    :cond_1
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCheck(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1372
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->wifi_no_usim_warning:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showErrorDialog(Ljava/lang/String;)V

    return-void

    .line 1376
    :cond_2
    new-instance p2, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1377
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1378
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 1380
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZ)V

    .line 1383
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_3

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    .line 1384
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void
.end method

.method connect(Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1347
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    const/16 v3, 0x87

    .line 1346
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1350
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Z)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    .line 1352
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1353
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget p2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    .line 1354
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 1358
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V

    goto :goto_0

    .line 1360
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZ)V

    :goto_0
    return-void
.end method

.method connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    .line 1342
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 1275
    sget p0, Lcom/android/settings/R$string;->help_url_wifi:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1279
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1261
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 555
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 557
    new-instance v0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 559
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 575
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    if-eqz p1, :cond_0

    const-string v0, "dialog_mode"

    .line 592
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string/jumbo v0, "wifi_ap_key"

    .line 593
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 598
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_enable_next_on_connect"

    .line 599
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 602
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 603
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    const-string v2, "WifiSettings"

    if-eqz v0, :cond_1

    const-string p1, "finished Wi-Fi picker dialog because another Wi-Fi settings activity is activated"

    .line 604
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "finished Wi-Fi picker dialog because Wi-Fi is disabled"

    .line 608
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    .line 611
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "finished Wi-Fi picker dialog because device was connected with AP"

    .line 612
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_3
    const-string v0, "Wi-Fi picker dialog is showing"

    .line 616
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    .line 618
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    .line 621
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 622
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;-><init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    .line 623
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    .line 624
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->needToHideContextMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 625
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->setHideContextMenus()V

    .line 627
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->setPickerHelperMode()V

    .line 630
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 631
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    :cond_7
    const-string/jumbo v0, "wifi_start_connect_ssid"

    .line 635
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 636
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 642
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->clearAutoHotspotLists()V

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 846
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 849
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_1

    .line 853
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz p0, :cond_1

    .line 854
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    if-ne p2, v0, :cond_3

    const-string/jumbo p1, "network_config_key"

    .line 860
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    .line 863
    new-instance p2, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 864
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 866
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget p2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    .line 871
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/WifiSettings;->onReceiveQrIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    return-void

    .line 878
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 550
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1695
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1696
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility()V

    return-void
.end method

.method public onConfiguredNetworksChanged(ZI)V
    .locals 1

    .line 1673
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onConfiguredNetworksChanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1680
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEnabler;->isSwitchBarChecked()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "WifiEnabler is not checked"

    .line 1681
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1685
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    iget p2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    .line 1686
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->needRetryForConfiguredNetworksChanged(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1687
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryWithCurrentConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1688
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_2
    return-void

    .line 1678
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wi-Fi state is disabling/disabled "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectedChanged(Z)V
    .locals 4

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1639
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1640
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->LGU:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne p1, v1, :cond_0

    .line 1641
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1642
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result p1

    if-nez p1, :cond_0

    .line 1643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->wifi_warning_connected_open_ap:I

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1647
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1649
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->isUserPickedAp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1650
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1651
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    .line 1655
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    if-eqz p1, :cond_2

    .line 1656
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    .line 1660
    :cond_2
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 1661
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 1663
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    goto :goto_0

    .line 1665
    :cond_4
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1668
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mMcfAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public onConnectedWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 1887
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->userPickedAp(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1888
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity(ILandroid/content/Intent;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1891
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1892
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 430
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "manage_network"

    .line 450
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsDexMode:Z

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 456
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    .line 458
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 459
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 462
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 463
    new-instance v6, Lcom/android/settings/wifi/WifiSettings$2;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;Ljava/time/ZoneId;)V

    .line 470
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mMainHandler:Landroid/os/Handler;

    .line 471
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerHandler:Landroid/os/Handler;

    .line 472
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez p1, :cond_1

    .line 473
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v1

    .line 475
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x32c8

    const/4 v13, 0x1

    move-object v11, p0

    move-object v12, p0

    invoke-interface/range {v1 .. v13}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;Z)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 485
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 488
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 489
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    .line 491
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const-string/jumbo v2, "support_easysetup"

    .line 492
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 493
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->setIsSettingSupportEasySetup(Z)V

    .line 496
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz p1, :cond_4

    const-string p1, "WIFI_102"

    .line 497
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_0

    .line 498
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-eqz p1, :cond_5

    const-string p1, "WIFI_230"

    .line 499
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz p1, :cond_6

    const-string p1, "WIFI_103"

    .line 501
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string p1, "WIFI_100"

    .line 503
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    .line 506
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v4

    .line 507
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWifiEntries()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    .line 508
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setWifiTracker(Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    .line 509
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setWifiManager(Landroid/net/wifi/WifiManager;)V

    .line 511
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    const-string v2, "WifiSettings"

    if-nez p1, :cond_7

    .line 512
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-wide/32 v3, 0xdcc6cc8

    invoke-static {p1, v3, v4}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "support ContactUs : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_7
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    .line 518
    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    .line 521
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onReceiveQrIntent(Landroid/content/Intent;)V

    .line 523
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_8

    const-string/jumbo v3, "wifi_start_connect_ssid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 524
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 525
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOpenSsid is "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", remove EXTRA_START_CONNECT_SSID intent extras"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 531
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    if-nez p1, :cond_a

    .line 534
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    move v1, v0

    :cond_a
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    .line 535
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 883
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    .line 884
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 1098
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 905
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 909
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setupActionBarMenus(Landroid/view/Menu;)V

    const-string v0, "WifiSettings"

    const-string v1, "create options menu"

    .line 911
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    sget v0, Lcom/android/settings/R$string;->wifi_menu_p2p:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 913
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x6

    .line 914
    sget v3, Lcom/android/settings/R$string;->wifi_intelligent_wifi_header:I

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 915
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x5

    .line 916
    sget v3, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 917
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 918
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    .line 919
    sget v4, Lcom/android/settings/R$string;->contact_us_title:I

    invoke-interface {p1, v1, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 920
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 921
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 926
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->allowedDirectMenu(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 929
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 932
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v5, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedQoSProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 687
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    const-string v0, "0153"

    .line 686
    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 690
    :cond_2
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 662
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 664
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/view/View;

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    .line 673
    :cond_2
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 1107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 1108
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1114
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 1115
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1116
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    .line 1297
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    .line 1235
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    .line 1242
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 938
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 944
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v0, "1300"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startSecQRScanner()V

    return v3

    .line 959
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiP2pSettings()V

    return v3

    .line 956
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startContactUsActivity()V

    return v3

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v1, "0101"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 948
    :cond_2
    const-class p1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_intelligent_wifi_header:I

    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    return v3

    .line 952
    :cond_3
    const-class p1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    return v3

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 797
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 803
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WifiSettings"

    const-string v1, "Receiver not registered"

    .line 805
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 807
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isFragmentPaused:Z

    .line 812
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterWifiApSmartCallback()V

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    .line 814
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startMcfClientMHSDiscovery(Z)V

    .line 815
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    .line 816
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->clearAutoHotspotLists()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1062
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x6

    .line 1064
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/SeslMenuItem;

    if-eqz p1, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->hasNewIntelligentItem(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_dashboard_badge_new:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1066
    :goto_0
    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 754
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 755
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 757
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility()V

    .line 760
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_1

    .line 767
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 770
    :cond_1
    sget v1, Lcom/android/settings/R$string;->wifi_settings_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDataSetChanged()V

    .line 772
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->registerReceiver()V

    const/4 v0, 0x0

    .line 774
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isFragmentPaused:Z

    .line 775
    iget-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 776
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 777
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    .line 782
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->registerWifiApSmartCallback()V

    const/4 v1, 0x1

    .line 783
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    .line 784
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startMcfClientMHSDiscovery(Z)V

    .line 785
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    .line 788
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v2, :cond_3

    .line 789
    invoke-static {}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->setInManagerNetwork(Z)V

    .line 792
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 895
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    .line 898
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 899
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    const-string/jumbo v0, "wifi_ap_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    .line 1330
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    .line 1329
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onScanStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1758
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 1760
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 1761
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1764
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    .line 1766
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkConnectViaQr()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 696
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 699
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 700
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    .line 708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->start(Landroid/content/Context;)V

    .line 712
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    :cond_2
    const/4 v0, 0x4

    .line 717
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    .line 718
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged()V

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 721
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListAdapterListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->setListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;)V

    .line 723
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 724
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedListAdapterListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->setListener(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;)V

    :cond_4
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 822
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiEntryListStale:Z

    .line 826
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 827
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 831
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->setListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;)V

    .line 833
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 834
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->setListener(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;)V

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_3

    .line 838
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->stop()V

    .line 841
    :cond_3
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    .line 1302
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getMode()I

    move-result v0

    .line 1303
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1304
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_0

    .line 1308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1309
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1311
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_4

    .line 1314
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 1316
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    .line 1319
    :cond_3
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1320
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1321
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 416
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 420
    instance-of p2, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p2, :cond_0

    .line 421
    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 422
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_0
    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    return-void
.end method

.method public onWifiEntriesChanged(Z)V
    .locals 3

    .line 1197
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1201
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences(Z)V

    .line 1204
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1207
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1208
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1210
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1211
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1212
    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    .line 1213
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_1

    .line 1216
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1217
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda7;-><init>()V

    .line 1218
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda8;-><init>()V

    .line 1220
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1222
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 1223
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1224
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 1226
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1903
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiEntryPreferenceClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semHasSamsungScore()Z

    move-result v1

    .line 1918
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x4

    .line 1921
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    int-to-long v4, v1

    const-string v1, "0110"

    invoke-static {v3, v1, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1923
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->userPickedAp(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    .line 1924
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity(ILandroid/content/Intent;)V

    return v3

    .line 1928
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsSupportedSecurity()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsSupportedSecurity()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_unknown_secured_ap:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v3

    .line 1935
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6ENetwork()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1936
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isImproperSecurityTypeFor6ENetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1937
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isSafeModeOrRfMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1938
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_improper_security_type_for_wifi6e_toast:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1939
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v3

    .line 1948
    :cond_4
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1949
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1950
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    return v0

    .line 1954
    :cond_5
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clear bssid info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1956
    invoke-virtual {v0, v4}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1955
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "any"

    .line 1957
    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1958
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1959
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1960
    :cond_6
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1961
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    const-string v2, "cisco"

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->isUserAllowedOAuthAgreement(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1962
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1963
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1965
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->launchOpenRoamingFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    goto :goto_0

    .line 1971
    :cond_9
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1973
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v0, "0152"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1975
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1976
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    .line 1977
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1978
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 1980
    :cond_b
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return v3
.end method

.method public onWifiStateChanged()V
    .locals 6

    .line 1132
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    .line 1137
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    const-string v2, "WifiSettings"

    if-eqz v1, :cond_1

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    if-eq v0, v1, :cond_9

    .line 1143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 1147
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateEmptyView(Z)V

    .line 1148
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences(Z)V

    .line 1149
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    const-string/jumbo v1, "onWifiStateChanged() Case: WIFI_STATE_ENABLED"

    .line 1151
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    .line 1153
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRoleWithoutCheckingWifi(Z)V

    .line 1155
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->startMcfClientMHSDiscoveryWithoutCheckingWifi(Z)V

    goto :goto_0

    .line 1159
    :cond_4
    sget v1, Lcom/android/settings/R$string;->wifi_starting:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    .line 1160
    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    goto :goto_0

    .line 1175
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v2, :cond_6

    .line 1176
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    .line 1179
    :cond_6
    sget v2, Lcom/android/settings/R$string;->wifi_empty_list_wifi_off:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    .line 1180
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 1181
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1182
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    .line 1183
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeAutoHotspotList()V

    .line 1184
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeMcfAutoHotspotList()V

    goto :goto_0

    .line 1164
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v2, :cond_8

    .line 1165
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    .line 1168
    :cond_8
    sget v2, Lcom/android/settings/R$string;->wifi_stopping:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    .line 1169
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    .line 1170
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeAutoHotspotList()V

    .line 1171
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeMcfAutoHotspotList()V

    .line 1188
    :cond_9
    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    :cond_a
    :goto_1
    return-void
.end method

.method public refreshScanList()V
    .locals 0

    .line 2713
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->semForceScan()V

    return-void
.end method

.method public setExternalProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 2088
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mExteranlProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setProgressBarVisible(Z)V

    .line 1252
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mExteranlProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1253
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method
