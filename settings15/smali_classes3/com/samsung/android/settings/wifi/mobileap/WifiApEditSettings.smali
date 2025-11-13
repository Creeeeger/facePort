.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

.field public mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

.field public mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

.field public mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

.field public mCancelSaveBottomView:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDeveloperModeCountDown:I

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mHandler:Landroid/os/Handler;

.field public mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

.field public mHotspotLabPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mIsBandSeekBarUxSupported:Z

.field public mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

.field public mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

.field public final mOnScrollListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

.field public mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

.field public mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

.field public mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

.field public mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

.field public mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

.field public mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

.field public mToast:Landroid/widget/Toast;

.field public mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

.field public mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

.field public mWifiApHotspotLabsController:Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;

.field public mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

.field public resetSoftAp:Z


# direct methods
.method public static -$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->isBandTypeModified()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplaySummaryText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    const p0, 0x7f140d33

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->buildNewSoftApConfiguration()V

    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mDeveloperModeCountDown:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mOnScrollListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

    return-void
.end method


# virtual methods
.method public final buildNewSoftApConfiguration()V
    .locals 13

    const-string v0, "WifiApEditSettings"

    const-string v1, "buildNewSoftApConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v3, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    const/4 v8, 0x5

    const/4 v9, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v3, v9, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_1
    if-ne v6, v8, :cond_2

    invoke-virtual {v3, v9, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v3, v10, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v10}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v10

    const-string/jumbo v11, "wifi_ap_security_type"

    invoke-static {v6, v11, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v10

    const/4 v11, 0x4

    if-eqz v10, :cond_4

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$7;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v5, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/16 v5, 0x172f

    invoke-virtual {v2, v11, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v10

    const/16 v12, 0x95

    if-eqz v10, :cond_5

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$7;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v5, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$7;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v5, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v2, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v5}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->getDropDownValue()I

    move-result v5

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result v5

    :goto_1
    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$7;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->isHiddenNetwork()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->isHiddenNetwork()Z

    move-result v5

    invoke-virtual {v2, v8, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->isValueModified()Z

    move-result v2

    if-eqz v2, :cond_a

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->getDropDownValue()I

    move-result v2

    if-ne v2, v6, :cond_9

    invoke-virtual {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v3, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_a
    :goto_3
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "OLD CONFIG====>: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "NEW CONFIG====>:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->isValueModified()Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v3

    if-eq v1, v3, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isSupportWifi6SwitchStateModified()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->isValueModified()Z

    move-result v1

    if-eqz v1, :cond_f

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->isPowerSavingModeModified()Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    :cond_10
    const-string v1, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "VZW dialog for save button, reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f143435

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f14341e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Landroid/net/wifi/SoftApConfiguration;)V

    const p0, 0x7f1409b7

    invoke-virtual {v1, p0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f1408bf

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    :cond_11
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->saveNewConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    :goto_4
    return-void
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 3

    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "intent_key_activity_title"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, ":settings:show_fragment_title_resid"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const-string p0, "getFragmentTitleResId() - mIntentTitleResId: "

    const-string v2, "WifiApEditSettings"

    invoke-static {v0, p0, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    const p0, 0x7f14339c

    invoke-static {p0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p0

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApEditSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170215

    return p0
.end method

.method public final getSecurityType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string p0, "WifiApEditSettings"

    const-string v1, "mSecurityDropDownController is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public final getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v2, "WifiApEditSettings"

    const-string v3, "onActivityCreated() - onConfigurationChanged is being called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v5, "intent_key_activity_title"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v5, "onActivityCreated() - mIntentTitleResId: "

    invoke-static {v3, v5, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f14339c

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    :goto_1
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const v7, 0x7f0a0299

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0d0a0f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v7, 0x7f0a02cf

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mCancelButton:Landroid/widget/Button;

    const v7, 0x7f0a0cea

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mSaveButton:Landroid/widget/Button;

    :cond_2
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mSaveButton:Landroid/widget/Button;

    const-string v7, "WifiApConfigureCancelSaveBottomView"

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    const-string v4, "WifiApConfigureCancelSaveBottomView() - cstr,mSaveButton is null"

    invoke-static {v7, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mCancelButton:Landroid/widget/Button;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    const-string v4, "WifiApConfigureCancelSaveBottomView() - cstr,mCancelButton is null"

    invoke-static {v7, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mCancelSaveBottomView:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "configure_advanced_section_1"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "configure_advanced_section_2"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "hotspot_lab_section"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHotspotLabPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "configure_advanced_expandable_preference"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->mOnPreferenceItemCLickListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Init SoftAP Config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "network_name_preference"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "password_preference"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isBandSeekBarUxSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iput-object p0, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iput-object p0, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "intent_key_focus_item"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    const-string v3, "getArguments() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "focusValue = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "intent_value_focus_network_name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "intent_value_focus_password"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iput-boolean v0, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mIsRequestFocusPendingFlag:Z

    invoke-virtual {v3}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iput-boolean v0, v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mIsRequestFocusPendingFlag:Z

    invoke-virtual {v3}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_8
    :goto_5
    if-eqz p1, :cond_c

    const-string/jumbo v3, "savedInstanceState is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bundle_key_show_advance_option"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHotspotLabPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "bundle_key_ssid_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "onRestoreInstanceState: "

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    const-string v2, "WifiApConfigureSSIDPreference"

    invoke-static {v1, v0, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "bundle_key_password_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    const-string v2, "WifiApConfigurePassWordPreference"

    invoke-static {v1, v0, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_c
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "WifiApEditSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "needresult"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    const-string p1, "needresult:"

    invoke-static {p1, v0, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApHotspotLabsController:Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotLabsController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "resetSoftAp:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "onKey :: keyCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", event = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->describeContents()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WifiApEditSettings"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "WifiApEditSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mOnScrollListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WifiApEditSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_hotspot_labs_is_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mOnScrollListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mOnScrollListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mDeveloperModeCountDown:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WifiApEditSettings"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "bundle_key_show_advance_option"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    const-string v1, "bundle_key_ssid_value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    const-string v1, "bundle_key_password_value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    const-string v0, "WifiApEditSettings"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "WifiApSettingsAllowedToChange:"

    invoke-static {v2, v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_1

    const-string v1, "Exiting Screen WifiApSettings not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Exiting Airplane mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    const-string/jumbo v1, "registering broadcast receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    const-string v0, "WifiApEditSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final saveNewConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->saveValue()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->saveValue()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->saveValue()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->saveValue()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->saveDataLimitChange()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->saveSupportWifi6SwitchState()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->saveValue()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->savePowerSavingModeSwitchState()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->saveWifiSharingSwitchState()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setSoftApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    const-string p1, "WifiApEditSettings"

    const-string/jumbo v0, "sendConfigChangedBroadcastToSmartTethering() -  Sending Broadcast"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setCurrentApConfiguration(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Finishing Activity For HotspotReset"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "is_hotspot_rest_happened"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public final updateSaveButtonEnabling()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->isValid()Z

    move-result v0

    const-string v1, "isValidSsid: "

    const-string v2, "WifiApEditSettings"

    invoke-static {v1, v2, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isAnyOpenSecurityTypeSelected()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "isOpenWifiApAllowed:"

    invoke-static {v4, v2, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-lt v4, v5, :cond_2

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x3f

    if-le v4, v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mErrPassWord:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_2
    const-string v4, "isValidPassPhrase: "

    invoke-static {v4, v2, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    if-eqz v0, :cond_6

    move v1, v3

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mCancelSaveBottomView:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabling Save Button - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiApConfigureCancelSaveBottomView"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->mSaveButton:Landroid/widget/Button;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_7
    const-string/jumbo p0, "setEnabledSaveButton() - ,mSaveButton is null"

    invoke-static {v2, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
