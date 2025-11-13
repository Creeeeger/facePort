.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/samsung/android/settings/wifi/WifiEntriesFilter$OnFilterChangedListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field static IS_ENABLED_PROVIDER_MODEL:Ljava/lang/Boolean; = null

.field static final MENU_ID_DISCONNECT:I = 0x3

.field static final MENU_ID_FORGET:I = 0x4

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "wifi_data_usage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static mScanIntervalMillis:J

.field public static mWifiSettingsForeground:Z


# instance fields
.field public connectionAttempted:Z

.field public isFragmentPaused:Z

.field public mAlreadyCalledAutoHotspotApi:Z

.field public mAlreadyCalledMcfAutoHotspotApi:Z

.field public mAppBarView:Landroid/view/View;

.field public mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

.field public mAutoHotspotWifiState:I

.field public mConnectListener:Lcom/android/settings/wifi/WifiSettings$2;

.field public final mConnectedListAdapterListener:Lcom/android/settings/wifi/WifiSettings$6;

.field public mConnectingNetworkId:I

.field public mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field public mDialogMode:I

.field public mDialogWifiEntryKey:Ljava/lang/String;

.field public mEnableNextOnConnection:Z

.field public mExteranlProgressBar:Landroid/widget/ProgressBar;

.field public mFinishIfConnected:Z

.field public mFinishIfWifiDisabled:Z

.field public mHasShownBubbleTip:Z

.field public mHideActionBarMenus:Z

.field public final mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

.field public mIgnoreUpdateOnDisabling:Z

.field public mInOffloadDialog:Z

.field public mInPickerDialog:Z

.field public mInSetupWizardActivity:Z

.field public mInSetupWizardActivityVzw:Z

.field public mIntent:Landroid/content/Intent;

.field public mIsDexMode:Z

.field public mIsEasySetupDisplayed:Z

.field public mIsFirstLoaded:Z

.field public mIsLaunching:Z

.field public mIsProgressCircleVisible:Z

.field public mIsRestricted:Z

.field public mIsScanning:Z

.field public mIsSupportedContactUs:Z

.field public mLastQRAssociate:J

.field public mLastQRConnectId:I

.field public final mListAdapterListener:Lcom/android/settings/wifi/WifiSettings$6;

.field public mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

.field public mListView:Landroid/view/View;

.field public mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

.field public mLoadingListener:Lcom/samsung/android/settings/wifi/WifiLoadingControllerListener;

.field public final mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

.field public mLoggingScreenId:Ljava/lang/String;

.field public mMainHandler:Landroid/os/Handler;

.field public mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

.field public mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

.field public mOpenSsid:Ljava/lang/String;

.field public mPreviousWifiState:I

.field public mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mQrConfigs:Ljava/util/List;

.field public final mReceiver:Lcom/android/settings/wifi/WifiSettings$1;

.field public mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

.field public mSaveListener:Lcom/android/settings/wifi/WifiSettings$2;

.field public mScrollCounter:I

.field public mScrollTimer:J

.field public mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mSemWifiApSmartCallback:Lcom/android/settings/wifi/WifiSettings$9;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mTimerLoggingSelectNetwork:J

.field public mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

.field public mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field public final mWifiEnablerListener:Lcom/android/settings/wifi/WifiSettings$6;

.field public mWifiEntriesFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public mWifiQrScanMenu:Landroid/view/MenuItem;

.field public mWorkerHandler:Landroid/os/Handler;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->IS_ENABLED_PROVIDER_MODEL:Ljava/lang/Boolean;

    const-wide/16 v0, 0x32c8

    sput-wide v0, Lcom/android/settings/wifi/WifiSettings;->mScanIntervalMillis:J

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRAssociate:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->connectionAttempted:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    iput-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mTimerLoggingSelectNetwork:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Lcom/android/settings/wifi/WifiSettings$1;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedListAdapterListener:Lcom/android/settings/wifi/WifiSettings$6;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAdapterListener:Lcom/android/settings/wifi/WifiSettings$6;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiSettings$6;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Lcom/android/settings/wifi/WifiSettings$9;

    new-instance v0, Lcom/samsung/android/wifitrackerlib/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/wifitrackerlib/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    return-void
.end method

.method public static final DBG()Z
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WifiSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final addAutoHotspotPreference()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addAutoHotspotPreference() - Triggered,mInSetupWizardActivity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    const-string v2, "WifiSettings.AutoHotspot"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v1, "addAutoHotspotPreference() - wifiState: "

    const-string v3, ", mAutoHotspotWifiState: "

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    invoke-static {v1, v3, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "addAutoHotspotPreference() - BLE scan result is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addAutoHotspotPreference() - BLE scan Started, bleScanResult.size() : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "addAutoHotspotPreference() - mConnectedSSID: "

    invoke-static {v4, v1, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v7, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addAutoHotspotPreference() - Received BleAp values, mWifiMac: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    if-eqz v1, :cond_3

    iget-object v6, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    move-object v3, v5

    :cond_5
    if-eqz v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "addAutoHotspotPreference() - removing temp: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    const-string v5, " from bleScanResult"

    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "WifiSettings.VI.AutoHotspot"

    const-string v2, "updateAutoHotspotList() - Triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    const-string v0, "updateAutoHotspotList() - bleApList is null or size is 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateAutoHotspotList() - bleApList count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateItems() - Start, bleAccessPoint count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoHotspotListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_9
    :goto_2
    const-string v0, "addAutoHotspotPreference() - wifiState is WIFI_STATE_DISABLED/WIFI_STATE_DISABLING"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    return-void
.end method

.method public final addInstantHotspotPreferenceCategory(Ljava/util/ArrayList;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instantList size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.InstantHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v4, "addInstantHotspotPreference() - wifiState: "

    invoke-static {v0, v4, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "WifiSettings.VI.InstantHotspot"

    const-string v1, "updateInstantHotspotList() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "updateInstantHotspotList() - bleApList is null or size is 0"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyInstantHotspot()V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateInstantHotspotList() - bleApList count: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateItems() - Start, bleAccessPoint count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstantHotspotListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "addInstantHotspotPreference() - wifiState is WIFI_STATE_DISABLED/WIFI_STATE_DISABLING"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyInstantHotspot()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyInstantHotspot()V

    :goto_2
    return-void
.end method

.method public final addMcfAutoHotspotPreference()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "addMcfAutoHotspotPreference() - Triggered"

    const-string v1, "WifiSettings.MCFAutoHotspot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v2, "addMcfAutoHotspotPreference() - wifiState: "

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "WifiSettings.AutoHotspot"

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getMcfScanDetail()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "addMcfAutoHotspotPreference() - Mcf scan result is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "addMcfAutoHotspotPreference() - Mcf scan Started, mcfScanResult.size() : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/wifi/SemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addMcfAutoHotspotPreference() - Received BleAp values, mWifiMac: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mSSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", connectedState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    if-eqz v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addMcfAutoHotspotPreference() - removing temp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    const-string v5, " from mcfScanResult"

    invoke-static {v1, v2, v5, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "WifiSettings.VI.MCFAutoHotspot"

    const-string v2, "updateMcfAutoHotspotList() - Triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "updateMcfAutoHotspotList() - bleApList is null or size is 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateMcfAutoHotspotList() - bleApList count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateItems() - Start, bleAccessPoint count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "McfAutoHotspotListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string v0, "addMcfAutoHotspotPreference() - wifiState is WIFI_STATE_DISABLED/WIFI_STATE_DISABLING"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    :cond_9
    :goto_3
    return-void
.end method

.method public final autoHotspotPreferenceCategory()V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "autoHotspotPreferenceCategory() - Triggered, getSamsungAccountCount() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    const-string v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isPrimaryUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mInSetupWizardActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    const-string v3, "WifiSettings.AutoHotspot"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->addAutoHotspotPreference()V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    :goto_2
    return-void
.end method

.method public changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final checkConnectViaQr()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRAssociate:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    const-string v3, "WifiSettings"

    if-nez v2, :cond_1

    const-string v1, "scanresult is null"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Lcom/android/settings/wifi/WifiSettings$2;

    invoke-virtual {v1, v0, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    :cond_1
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v2

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_6

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    const-wide/16 v5, 0xc80

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRAssociate:J

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    if-ne v5, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    :cond_4
    const-string v5, "Try connect to network "

    const-string v6, ", "

    invoke-static {v2, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x87

    invoke-virtual {v3, v5, v6, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sem_wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v6, ""

    invoke-static {v2, v1, v4, v6, v5}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerConnectApi(IZILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Lcom/android/settings/wifi/WifiSettings$2;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_5

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final checkWifiConnectivity()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "connectivity"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/net/ConnectivityManager;

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final configureCurrentNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateAvailableListRoundedCorners(Z)V

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateAvailableListRoundedCorners(Z)V

    return p1
.end method

.method public final configureEasySetupNetwork(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEasySetupDisplayed:Z

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleEasySetupList(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "easy setup "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final connect(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSimCheck(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1435f3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showErrorDialog$1(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "req_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public final forceScrollToTopOfList()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "WifiSettings"

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isFragmentPaused:Z

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    const-string p0, "Finish - force scroll up"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Keep mScrollerTimer since fragment is paused"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "force scroll up"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final forget$1(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    return-void
.end method

.method public final getAppContext()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v4, "wifiEnabled"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;->mLLMContext:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v6, "WifiSettings"

    if-eqz v4, :cond_2

    const-string v4, "[]"

    invoke-static {v6, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v4, "type"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;->build()Lcom/samsung/android/settings/bixby/AppContext;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public final getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWifiEntries()Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sec_wifi_developer_use_filter"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntriesFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiEntriesFilter$getFilteredWifiEntries$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiEntriesFilter$getFilteredWifiEntries$1;-><init>(Lcom/samsung/android/settings/wifi/WifiEntriesFilter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.android.wifitrackerlib.WifiEntry>{ kotlin.collections.TypeAliasesKt.ArrayList<com.android.wifitrackerlib.WifiEntry> }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "wifi_config_key"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Lcom/android/settings/wifi/WifiSettings$2;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public final launchConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsLaunching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_connect_wifientry_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DialogForRetry"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    iget p2, p2, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    const-string v1, "disableReason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "bssid"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p2, 0x67

    iput p2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final launchFragment(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "launch "

    const-string v1, "WifiSettings"

    invoke-static {v0, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p2, 0x67

    iput p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final launchOpenRoamingFragment()V
    .locals 3

    const-string v0, "WifiSettings"

    const-string v1, "launchOpenRoamingFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.net.wifi.wifiguider.OPENROAMING_EULA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "oauth_provider"

    const-string v2, "cisco"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f143695

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Lcom/android/settings/wifi/WifiSettings$2;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Lcom/android/settings/wifi/WifiSettings$2;

    if-eqz p1, :cond_0

    const-string v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string v0, "wifi_ap_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "wifi_enable_next_on_connect"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    const-string v2, "WifiSettings"

    if-eqz v0, :cond_1

    const-string p1, "finished Wi-Fi picker dialog because another Wi-Fi settings activity is activated"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "finished Wi-Fi picker dialog because Wi-Fi is disabled"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "finished Wi-Fi picker dialog because device was connected with AP"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_3
    const-string v0, "Wi-Fi picker dialog is showing"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    :cond_4
    const-string v0, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;-><init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mHideContextMenus:Z

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mPickerHelperMode:Z

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    :cond_7
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->clearAutoHotspotLists()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    if-ne p2, v0, :cond_3

    const-string p1, "network_config_key"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/wifi/WifiSettings$2;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

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

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/wifi/WifiSettings;->onReceiveQrIntent(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility()V

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mHasShownBubbleTip:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHasShownBubbleTip:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showAutoWifiTipPopup()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setLayoutParams()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "manage_network"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsDexMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WifiSettings{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sem_wifi_settings_framework_scan_interval"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x32c8

    sput-wide v3, Lcom/android/settings/wifi/WifiSettings;->mScanIntervalMillis:J

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const-wide/16 v3, 0x1b58

    sput-wide v3, Lcom/android/settings/wifi/WifiSettings;->mScanIntervalMillis:J

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x4e20

    sput-wide v3, Lcom/android/settings/wifi/WifiSettings;->mScanIntervalMillis:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mScanIntervalMillis : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/android/settings/wifi/WifiSettings;->mScanIntervalMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WifiSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-wide v9, Lcom/android/settings/wifi/WifiSettings;->mScanIntervalMillis:J

    move-object v4, v0

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;J)V

    iget-object v0, v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "sem_wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    const-string v4, "support_easysetup"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-boolean v1, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mIsSettingSupportEasySetup:Z

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    const-string v0, "WIFI_102"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-eqz v0, :cond_7

    const-string v0, "WIFI_230"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz v0, :cond_8

    const-string v0, "WIFI_103"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v0, "WIFI_100"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntriesFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->listener:Lcom/samsung/android/settings/wifi/WifiEntriesFilter$OnFilterChangedListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v5, v5, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getWifiEntries()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntriesFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0xdcc6cc8

    invoke-static {v0, v4, v5}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "support ContactUs : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    invoke-static {v0, v4, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-direct {v0, v4}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    if-eqz p1, :cond_a

    const-string v0, "CONNECTIONATTEMPTED"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->connectionAttempted:Z

    goto :goto_2

    :cond_a
    move p1, v1

    :goto_2
    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/wifi/WifiSettings;->onReceiveQrIntent(Landroid/content/Intent;Z)V

    :cond_b
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_c

    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "mOpenSsid is "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const-string v5, ", remove EXTRA_START_CONNECT_SSID intent extras"

    invoke-static {p1, v4, v5, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    if-nez p1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    move v2, v1

    :cond_e
    :goto_3
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivityVzw:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHasShownBubbleTip:Z

    return-void
.end method

.method public final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-object p1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.sec.android.app.camera"

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xf

    const v2, 0x7f1428af

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    const v3, 0x7f080aee

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility()V

    :catch_0
    :cond_2
    const-string v0, "WifiSettings"

    const-string v2, "create options menu"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xe

    const v3, 0x7f1435bf

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x6

    const v4, 0x7f1435a6

    invoke-interface {p1, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x5

    const v4, 0x7f1435bb

    invoke-interface {p1, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    const v5, 0x7f140a79

    invoke-interface {p1, v1, v3, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "no_wifi_direct"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v3, "WifiDevicePolicyManager"

    const-string v4, "isAllowedWifiDirectEnabled false - DISALLOW_WIFI_DIRECT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :goto_1
    const-string v3, "not allowed Wi-Fi direct. disable Wi-Fi direct menu"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    if-ne v3, v0, :cond_6

    goto :goto_3

    :cond_6
    if-ne v3, v4, :cond_7

    :goto_2
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    :goto_3
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    iget-boolean v5, v0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivityVzw:Z

    iget-boolean v6, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1

    iget-boolean v6, v0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v8

    :goto_1
    iput-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContainer:Landroid/view/ViewGroup;

    iput-boolean v6, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    iput-boolean v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    iput-boolean v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivityVzw:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0d0a98

    invoke-virtual {v1, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0d0a99

    invoke-virtual {v1, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_3
    const v4, 0x7f0d0a95

    invoke-virtual {v1, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    iput-object v1, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mView:Landroid/view/View;

    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    const/16 v4, 0xf

    const v5, 0x7f060738

    const v6, 0x7f06079f

    const v9, 0x7f0a0cc9

    const v10, 0x7f0a0cc8

    if-eqz v2, :cond_4

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_5
    :goto_3
    const v2, 0x7f0a0c0f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mQrScannerLayout:Landroid/view/View;

    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    const/16 v4, 0x8

    const/4 v9, 0x3

    if-eqz v2, :cond_8

    const v2, 0x7f0a0c10

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    const/4 v11, 0x0

    invoke-direct {v10, v3, v11}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v2

    if-ne v2, v9, :cond_6

    move v2, v8

    goto :goto_4

    :cond_6
    move v2, v7

    :goto_4
    iget-boolean v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-eqz v10, :cond_8

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mQrScannerLayout:Landroid/view/View;

    if-eqz v10, :cond_8

    if-eqz v2, :cond_7

    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_5
    const v2, 0x7f0a0c6e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshListLayout:Landroid/view/View;

    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivityVzw:Z

    if-eqz v2, :cond_b

    const v2, 0x7f0a0c6f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    const/4 v11, 0x1

    invoke-direct {v10, v3, v11}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v2

    if-ne v2, v9, :cond_9

    move v2, v8

    goto :goto_6

    :cond_9
    move v2, v7

    :goto_6
    iget-boolean v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivityVzw:Z

    if-eqz v10, :cond_b

    if-eqz v2, :cond_a

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshListLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_a
    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshListLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_7
    const v2, 0x7f0a11b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/widget/NestedScrollView;->seslSetFillHorizontalPaddingEnabled(I)V

    const v2, 0x7f0a0c6d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f060746

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2, v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v5, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    new-instance v10, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    invoke-direct {v10, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v10, v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;

    invoke-direct {v5, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    iput-object v5, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;

    const v2, 0x7f0a041d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a0417

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v5, 0x7f0a03f8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    const v5, 0x7f0a03f7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v10, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    if-nez v5, :cond_c

    new-instance v5, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iget-object v11, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v12, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v14

    iget-boolean v15, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    iget-boolean v13, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    move-object/from16 v17, v10

    move-object v10, v5

    move v4, v13

    move-object/from16 v13, v16

    move/from16 v16, v15

    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/settings/wifi/WifiListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Z)V

    iput-boolean v4, v5, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mInPickerDialog:Z

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    :cond_c
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-boolean v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-eqz v4, :cond_d

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    :cond_d
    const v4, 0x7f0a0808

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    const v4, 0x7f0a0807

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    const-string v5, "sem_wifi"

    const-string v6, "AutoHotspotListAdapter() - initiated"

    if-nez v4, :cond_e

    new-instance v4, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v11, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v12, "InstantHotspotListAdapter"

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v4, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mContext:Landroid/content/Context;

    iput-object v11, v4, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v4, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiManager;

    const-class v11, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    :cond_e
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    const v4, 0x7f0a015a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    const v4, 0x7f0a0159

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v10, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    if-nez v4, :cond_f

    new-instance v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v11, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v12, "AutoHotspotListAdapter"

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    iput-object v11, v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v10, v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    :cond_f
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f1433ff

    goto :goto_8

    :cond_10
    const v4, 0x7f1433fe

    :goto_8
    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0a094b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    const v4, 0x7f0a094a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v10, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    if-nez v4, :cond_11

    new-instance v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v11, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v12, "McfAutoHotspotListAdapter"

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    iput-object v11, v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v5, v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    :cond_11
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    const v4, 0x7f0a0167

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0a109d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    if-nez v4, :cond_14

    new-instance v4, Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v11, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v12, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v13, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v14

    iget-boolean v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    iget-object v15, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    move-object v10, v4

    move/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/settings/wifi/WifiListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Z)V

    iput-boolean v8, v4, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsAdmin:Z

    iget-boolean v5, v4, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    if-eqz v5, :cond_12

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.android.net.wifi.wifiguider"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.samsung.android.net.wifi.wifiguider.activity.GuideApActivity"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v5, v4, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    :cond_12
    iget-object v5, v4, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    if-nez v5, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {v5}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    iput-boolean v5, v4, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsAdmin:Z

    :goto_9
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    :cond_14
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    const v4, 0x7f0a0586

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    const v4, 0x7f0a0587

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    if-nez v4, :cond_15

    new-instance v4, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    iget-object v11, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v12, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v13, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v14

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v15, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    move-object v10, v4

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    :cond_15
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    const v4, 0x7f0a05a9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    const v4, 0x7f0a023f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mBottomArea:Landroid/view/View;

    const v4, 0x7f0a063b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateAvailableListRoundedCorners(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setLayoutParams()V

    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    const-string v4, "WifiSettings.VI"

    if-eqz v2, :cond_16

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06062e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v2, "setSetupWizardMode() - Triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_16
    const/16 v5, 0x8

    :goto_a
    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz v2, :cond_17

    const-string v2, "setPickerDialogMode() - Triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setScrollIndicators(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_17
    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v2, :cond_20

    iget-boolean v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v2, :cond_20

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sem_what_hintcard_have_to_be_shown"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "dbString: "

    invoke-static {v5, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v6, "1"

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_b

    :cond_18
    new-instance v9, Ljava/util/ArrayList;

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "1001"

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    :goto_b
    move-object v9, v5

    :cond_1a
    :goto_c
    iget-object v2, v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    if-nez v9, :cond_1b

    goto :goto_f

    :cond_1b
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->PRIORITY_HINTCARD:[Ljava/lang/String;

    array-length v10, v3

    :goto_d
    if-ge v7, v10, :cond_1f

    aget-object v11, v3, v7

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1c
    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-static {v2}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v13

    if-eq v13, v8, :cond_1d

    goto :goto_e

    :cond_1d
    move-object v5, v11

    goto :goto_f

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1f
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hintType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hintList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput-object v1, v0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/view/View;

    return-object v1
.end method

.method public final onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    int-to-long v4, v2

    const-string v2, "0154"

    invoke-static {v4, v5, v0, v2, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEasySetupDisplayed:Z

    if-eqz v1, :cond_2

    const-string v1, "Displayed"

    goto :goto_1

    :cond_2
    const-string v1, "Not displayed"

    :goto_1
    const-string v2, "easy_setup_result"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v2, "0105"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v1, :cond_3

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_2
    iget-object v0, v0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    :cond_3
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public final onDialogShowing()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public final onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    iget-object p1, p1, Lcom/android/settings/wifi/WifiDialog2;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->forget$1(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const-string v3, "WifiSettings"

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v0, "1300"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/wifi/WifiUtils;->getSecScannerIntent()Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No activity found : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :pswitch_1
    const-class p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1435bf

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(ILjava/lang/String;)V

    return v2

    :pswitch_2
    const-string p1, "start contact us activity"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v0, "1400"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f143695

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6u17f9w7m9"

    const-string v1, "com.android.settings.wifi"

    invoke-static {v1, p1, v0}, Lcom/android/settings/Utils;->getContactUsIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "faqUrl"

    const-string v1, "voc://view/categories"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return v2

    :cond_2
    const-class p1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1435a6

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(ILjava/lang/String;)V

    return v2

    :cond_3
    const-class p1, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1435bb

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchFragment(ILjava/lang/String;)V

    return v2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Lcom/android/settings/wifi/WifiSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WifiSettings"

    const-string v1, "Receiver not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isFragmentPaused:Z

    const-string v0, "WifiSettings.AutoHotspot"

    const-string v1, "Unregistering WifiApSmartCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Lcom/android/settings/wifi/WifiSettings$9;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startMcfClientMHSDiscovery(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->clearAutoHotspotLists()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->hasNewFavoriteNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->isNewItemForWips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->isAbTestCurrentlyAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getABTestParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "redDot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1422bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onReceiveQrIntent(Landroid/content/Intent;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_29

    const-string v3, "AUTH_TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "DPP"

    if-nez v0, :cond_0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "security"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "WifiSettings"

    if-eqz p2, :cond_4

    const-string v8, ""

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Calling package is empty"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v1, v8, v0}, Lcom/android/settings/wifi/WifiSettings;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v9, "android.permission.NETWORK_MANAGED_PROVISIONING"

    invoke-virtual {v1, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v0, v9

    const-string v9, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-virtual {v1, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v0, v9

    const-string v9, "android.permission.NETWORK_STACK"

    invoke-virtual {v1, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v0, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    if-nez v0, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_2

    invoke-static {v9, v10, v8}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    :cond_2
    move v0, v5

    goto :goto_2

    :catch_1
    const-string v0, "Not found package "

    invoke-static {v0, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move v0, v6

    goto :goto_2

    :goto_1
    const-string v9, "Could not talk to activity manager."

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " permitted ? "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v5, :cond_5

    const-string v0, "wifi is off, enable wifi"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isNeedToConfirmApDisable()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "[0-9A-Fa-f]*"

    const-string v14, "[0-9A-Fa-f]{64}"

    const/4 v15, 0x4

    const/4 v8, 0x2

    if-eqz v0, :cond_1d

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v9, "SSID"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "PASSWORD"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "HIDDEN"

    invoke-virtual {v2, v11, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v11, "\""

    invoke-static {v11, v9, v11}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_6

    move v13, v15

    goto :goto_7

    :cond_6
    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v12, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v12, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_6

    :cond_7
    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v12, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    const/4 v13, 0x3

    if-nez v12, :cond_c

    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_7

    :cond_8
    iget v12, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v12, :cond_9

    iget-object v13, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v15, v13

    if-ge v12, v15, :cond_9

    aget-object v12, v13, v12

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_a

    move v12, v5

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    move v13, v12

    goto :goto_7

    :cond_b
    :goto_6
    move v13, v8

    :cond_c
    :goto_7
    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-boolean v6, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v6, v2, :cond_d

    if-ne v13, v3, :cond_d

    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_d
    if-eqz v3, :cond_14

    const/16 v6, 0x22

    if-eq v3, v5, :cond_11

    if-eq v3, v8, :cond_f

    const/4 v9, 0x4

    if-eq v3, v9, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v4, :cond_15

    invoke-static {v6, v11, v4}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b

    :cond_f
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v4, :cond_15

    invoke-virtual {v4, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b

    :cond_10
    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b

    :cond_11
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0xa

    if-eq v3, v8, :cond_13

    const/16 v8, 0x1a

    if-eq v3, v8, :cond_13

    const/16 v8, 0x3a

    if-ne v3, v8, :cond_12

    goto :goto_9

    :cond_12
    const/4 v8, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    invoke-virtual {v4, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v3, v8

    goto :goto_b

    :goto_a
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v6, v11, v4}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    goto :goto_b

    :cond_14
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_15
    :goto_b
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiConfigFromIntent return config : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    if-eqz v0, :cond_1c

    iget-object v2, v1, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/settings/wifi/WifiSettings;->mLastQRConnectId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    if-eqz v2, :cond_16

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1b

    :cond_16
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-nez v2, :cond_17

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_d
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v6, v3, :cond_19

    aget-object v2, v2, v6

    if-eqz v2, :cond_18

    goto/16 :goto_10

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_19
    :goto_e
    iget-object v2, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v2

    goto :goto_f

    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open network "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v4, " not found in scan list"

    invoke-static {v2, v3, v4, v7}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_f
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v2, :cond_1a

    if-eqz v8, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scannedOpenNetwork : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v2, v3, v7}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "OWE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10

    :cond_1a
    const/4 v2, 0x6

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Add owe network "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Add qr network "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iput-boolean v5, v1, Lcom/android/settings/wifi/WifiSettings;->connectionAttempted:Z

    goto/16 :goto_16

    :cond_1d
    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle Dpp QR data : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1428b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1409d0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_16

    :cond_1e
    iget-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_15

    :cond_1f
    iget-object v3, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "nopass"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_14

    :cond_20
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    const-string v6, "WEP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    if-eqz v6, :cond_23

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_22

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_22

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_21

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    goto :goto_12

    :cond_22
    :goto_11
    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    goto :goto_13

    :goto_12
    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    goto :goto_13

    :cond_23
    const-string v5, "WPA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-virtual {v0, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_13

    :cond_24
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_13

    :cond_25
    const-string v5, "SAE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_26
    :goto_13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_27
    const-string v0, "WifiNetworkConfig"

    const-string v3, "Unsupported security"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_28
    :goto_14
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    iput-object v2, v1, Lcom/android/settings/wifi/WifiSettings;->mQrConfigs:Ljava/util/List;

    :goto_16
    iget-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->checkConnectViaQr()V

    :cond_29
    return-void
.end method

.method public final onResume()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateQrScanMenuVisibility()V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi$3()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTimerLoggingSelectNetwork:J

    const v1, 0x7f143695

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDataSetChanged()V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.updateautohotspot"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.updatemcfhotspot"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.wifi.salogging.intent.action.WIFI_TIPS_SA_LOGGING"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Lcom/android/settings/wifi/WifiSettings$1;

    const-string v5, "android.permission.NETWORK_SETTINGS"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isFragmentPaused:Z

    iget-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    :cond_2
    const-string v1, "WifiSettings.AutoHotspot"

    const-string v2, "Registering WifiApSmartCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiApSmartCallback:Lcom/android/settings/wifi/WifiSettings$9;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V

    :cond_4
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startMcfClientMHSDiscovery(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v2, v2, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CONNECTIONATTEMPTED"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->connectionAttempted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    const-string v0, "dialog_mode"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "wifi_ap_key"

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onStart()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v2, Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/widget/MainSwitchBarController;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v5, v0}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v2, v4, v5, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiSettings$6;

    iput-object v0, v2, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "WifiEnabler"

    const-string v5, "start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v2, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Lcom/android/settings/wifi/WifiEnabler$1;

    iget-object v5, v2, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, v2, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi$3()V

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    invoke-static {v0, v3, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    const-string v2, "sec_wifi_developer_max_summary_line"

    const/4 v3, 0x0

    const-string v4, "sem_wifi_developer_option_visible"

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mListAdapterListener:Lcom/android/settings/wifi/WifiSettings$6;

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    iput-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsMaxSummaryLineOn:Z

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedListAdapterListener:Lcom/android/settings/wifi/WifiSettings$6;

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_6

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsMaxSummaryLineOn:Z

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "sem_wifi"

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHasShownBubbleTip:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->shouldShowAutoWifiBubbleTip()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v1, :cond_9

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showAutoWifiTipPopup()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getABTestParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bubbleTip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->shouldShowAutoWifiBubbleTip()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showAutoWifiTipPopup()V

    :cond_9
    :goto_3
    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsTipsIconCreated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v2, "1501"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsTipsIconClicked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v2, "1500"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    if-eqz v0, :cond_4

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->stop()V

    :cond_5
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public final onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    iget v0, p1, Lcom/android/settings/wifi/WifiDialog2;->mode:I

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object p1, p1, Lcom/android/settings/wifi/WifiDialog2;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f143569

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Lcom/android/settings/wifi/WifiSettings$2;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_0
    return-void
.end method

.method public final onWifiEntriesChanged()V
    .locals 0

    return-void
.end method

.method public final onWifiEntriesChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const-string v0, "wifi_start_openroaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->launchOpenRoamingFragment()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWifiEntryPreferenceClick : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Saved"

    goto :goto_0

    :cond_1
    const-string v0, "Not saved"

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "qos_type"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v3, "0110"

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/android/settings/wifi/WifiSettings;->mTimerLoggingSelectNetwork:J

    sub-long/2addr v2, v5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0111"

    invoke-static {v2, v3, v0, v6, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    iget-boolean v3, v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    iput-object p1, v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_2
    return-void

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    iget-object v8, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget v9, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    if-ne v9, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v0

    sput v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    :cond_7
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    if-ne v0, v3, :cond_c

    goto :goto_5

    :cond_8
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget-boolean v0, v8, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isH2EOnlyNetwork:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget v9, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    if-ne v9, v2, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWpa3SaeH2eSupported()Z

    move-result v0

    sput v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    :cond_a
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    if-ne v0, v3, :cond_c

    goto :goto_5

    :cond_b
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f143722

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6ENetwork()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetHighestSecurity()I

    move-result v0

    if-eq v0, v6, :cond_f

    if-eq v0, v7, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v2, 0x7

    if-eq v0, v2, :cond_f

    if-ne v0, v5, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIs6GHzOnly()Z

    move-result v0

    goto :goto_7

    :cond_f
    :goto_6
    move v0, v4

    :goto_7
    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "safe_wifi"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_new_rf_test_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    move v0, v4

    goto :goto_9

    :cond_11
    :goto_8
    move v0, v3

    :goto_9
    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f1435a0

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear bssid info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "any"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_a

    :cond_14
    iget-boolean v1, v8, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->isUserAllowedOAuthAgreement()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isValidOpenRoamingToken(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_a

    :cond_15
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f143609

    invoke-static {p1, v0, p1, v3}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->launchOpenRoamingFragment()V

    goto :goto_a

    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_a

    :cond_18
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLoggingScreenId:Ljava/lang/String;

    const-string v1, "0152"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_a

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    sget-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    const-string v2, "WifiSettings"

    if-eqz v1, :cond_1

    const-string v1, "onWifiStateChanged called with wifi state: "

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    const-string v1, "removeAutoHotspotList() , Setting wifiApBleClientRole(false)"

    const-string v3, "WifiSettings.AutoHotspot"

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    const/4 v5, 0x1

    if-eq v0, v5, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateEmptyView(Z)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences(Z)V

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    const-string v4, "onWifiStateChanged() Case: WIFI_STATE_ENABLED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifiApBleClientRoleWithoutCheckingWifi() - isEnabled: true mAlreadyCalledAutoHotspotApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-nez v1, :cond_5

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    const-string v1, "Setting wifiApBleClientRoleWithoutCheckingWifi(true)"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startMcfClientAdvertiseWithoutCheckingWifi() - isEnabled: true mAlreadyCalledMcfAutoHotspotApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    const-string v3, "WifiSettings.MCFAutoHotspot"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-nez v1, :cond_10

    const-string v1, "Setting startMcfClientAdvertiseWithoutCheckingWifi(true)"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    goto/16 :goto_3

    :cond_7
    const v2, 0x7f1436c5

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoadingListener:Lcom/samsung/android/settings/wifi/WifiLoadingControllerListener;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFirstLoaded:Z

    if-nez v2, :cond_10

    check-cast v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->runLoading()V

    goto/16 :goto_3

    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_9
    const v2, 0x7f14355b

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLoadingListener:Lcom/samsung/android/settings/wifi/WifiLoadingControllerListener;

    if-eqz v2, :cond_b

    check-cast v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v6, v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    if-eqz v6, :cond_b

    iget-object v7, v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v7, v4}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    iput-boolean v4, v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    :cond_a
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFirstLoaded:Z

    :cond_b
    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v2, :cond_c

    goto :goto_1

    :cond_c
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyInstantHotspot()V

    goto :goto_3

    :cond_d
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_e
    const v2, 0x7f1436d2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiState:I

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->wifiApBleClientRole(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyInstantHotspot()V

    :cond_10
    :goto_3
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    :cond_11
    :goto_4
    return-void
.end method

.method public final popOrFinishThisActivity()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method public final restrictUi$3()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f14355a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "WifiSettings.VI"

    const-string v1, "setRestrictionView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setEnableRefreshLayout(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleAvailableList(Z)V

    return-void
.end method

.method public final setEmptyView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateEmptyView(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {v1, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method public final setProgressBarVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mExteranlProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    return-void
.end method

.method public final showAutoWifiTipPopup()V
    .locals 3

    const-string v0, "WifiSettings"

    const-string v1, "showAutoWifiTipPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    const-string v0, "WifiSettings"

    if-nez p1, :cond_0

    const-string p0, "AP is null, ignored retry popup"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v1, :cond_1

    const-string p0, "AP is OpenRoamingNetwork, ignored retry popup"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "showConnectFragmentForRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->launchConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public final showErrorDialog$1(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const v0, 0x104000a

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final startMcfClientMHSDiscovery(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "startMcfClientAdvertise() - isEnabled: "

    const-string v1, " mAlreadyCalledMcfAutoHotspotApi : "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    const-string v2, "WifiSettings.MCFAutoHotspot"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "Setting startMcfClientAdvertise(true)"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->startMcfClientMHSDiscovery(Z)I

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledMcfAutoHotspotApi:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateQrScanMenuVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityClient;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v1

    :goto_0
    const-string v3, "WifiSettings"

    if-eqz v1, :cond_1

    const-string v0, "multiwindow not support QR scanner"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsDexMode:Z

    if-eqz v1, :cond_2

    const-string v0, "Dex mode not support QR"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_3
    if-eq v0, v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiQrScanMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateWifiEntryPreferences(Z)V
    .locals 13

    const-string v0, "updateWifiEntryPreferences - Wi-Fi state is disabling/disabled "

    const-string v1, "updateWifiEntryPreferences size:"

    const-wide/16 v2, 0x6a4

    :try_start_0
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v4, :cond_1

    const-string p1, "WifiSettings"

    const-string v0, "updateWifiEntryPreferences - UI restricted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const-string p1, "WifiSettings"

    const-string v0, "updateWifiEntryPreferences ignoring..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_13

    if-eqz v4, :cond_13

    const/4 v7, 0x4

    if-ne v4, v7, :cond_6

    goto/16 :goto_4

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getWifiEntries()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v7, v7, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v8, :cond_7

    const-string v10, "WifiSettings"

    const-string v11, "No available networks"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->configureCurrentNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    instance-of v11, v11, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    if-eqz v11, :cond_8

    invoke-interface {v11, v7}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;->onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_8
    const-string v11, "WifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " connected:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " scan:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v10, "safe_wifi"

    invoke-static {v1, v10, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardActivity:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v10, v1, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLockEasySetup:Ljava/lang/Object;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiPickerTracker;->mEasySetupEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const-wide/16 v11, 0x5

    invoke-interface {v1, v11, v12}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->configureEasySetupNetwork(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :cond_9
    :goto_0
    move v1, v5

    :goto_1
    if-ge v1, v8, :cond_c

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/wifitrackerlib/WifiEntry;

    instance-of v11, v10, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v11, :cond_a

    check-cast v10, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v10}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mListController:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {v1, v7, v9, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateWithAnimation(Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLoadingListener:Lcom/samsung/android/settings/wifi/WifiLoadingControllerListener;

    if-eqz v1, :cond_f

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v4, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFirstLoaded:Z

    if-nez v4, :cond_f

    if-nez p1, :cond_d

    if-lez v8, :cond_f

    :cond_d
    check-cast v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    if-eqz v4, :cond_e

    iget-boolean v7, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    if-eqz v7, :cond_e

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    iput-boolean v5, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    :cond_e
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFirstLoaded:Z

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addInstantHotspotPreferenceCategory(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->autoHotspotPreferenceCategory()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->addMcfAutoHotspotPreference()V

    iget-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    goto :goto_3

    :cond_10
    iput-wide v6, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollCounter:I

    :goto_3
    if-eqz p1, :cond_11

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_11
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void

    :cond_13
    :goto_4
    :try_start_8
    const-string p1, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void

    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsProgressCircleVisible:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    throw p1
.end method

.method public final updateWifiEntryWithCurrentConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_2
    return-void
.end method

.method public final wifiApBleClientRole(Z)V
    .locals 3

    const-string v0, "wifiApBleClientRole() - isEnabled: "

    const-string v1, " mAlreadyCalledAutoHotspotApi : "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    const-string v2, "WifiSettings.AutoHotspot"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "Setting wifiApBleClientRole(true)"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAlreadyCalledAutoHotspotApi:Z

    :cond_2
    :goto_0
    return-void
.end method
