.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApEditSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$CancelButtonClickListener;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

.field private mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

.field private mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

.field private mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

.field private mCancelSaveBottomView:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

.field private mIntentTitleResId:I

.field private mIsBandSeekBarUxSupported:Z

.field private mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

.field private mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

.field private mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

.field private mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

.field private mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

.field private mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

.field private mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

.field private mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

.field private mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

.field private mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

.field private mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

.field private resetSoftAp:Z


# direct methods
.method public static synthetic $r8$lambda$52WG6W11JHy9n10E1CcARW5T364(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$updateSupportWifi6State$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$R-xaMBAGmjvtum4-hvxJp1ddypE(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$updatePassWordVisibility$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$b5buIm4F6pFCJCyTAMJSWEWuCoo(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$buildNewSoftApConfiguration$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hgZs5CcrE_dxdqB5M1Ax0Y009iM(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$updateBroadcastChannelState$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$igI5HwMJe-haah3gQBp39PNqRK8(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$updatePmfState$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$lUNsY-PU7CUUUzwWsV_selfjG44(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$updateSecurityType$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ofUeazXIufvp5cJWC9WbNv9J4dY(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$updateWifiSharingState$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$vjb9e9SRC231qvG7onXx0fzkoeg(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Landroid/net/wifi/SoftApConfiguration;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->lambda$buildNewSoftApConfiguration$0(Landroid/net/wifi/SoftApConfiguration;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildNewSoftApConfiguration(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->buildNewSoftApConfiguration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->showBandSelectionTipsDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDualApWarningDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->showDualApWarningDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 79
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 106
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIntentTitleResId:I

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    return-void
.end method

.method private buildNewSoftApConfiguration()V
    .locals 11

    .line 453
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "buildNewSoftApConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 456
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 459
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v3, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 460
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 462
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    .line 463
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v6

    const/4 v7, 0x2

    .line 464
    invoke-virtual {v2, v7, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_1

    .line 466
    invoke-virtual {v3, v7, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_1
    if-ne v6, v8, :cond_2

    .line 468
    invoke-virtual {v3, v7, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    .line 470
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 472
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v6

    if-nez v6, :cond_3

    .line 473
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v9

    const-string v10, "wifi_ap_security_type"

    invoke-static {v6, v10, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const/4 v6, 0x1

    .line 475
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v5

    .line 478
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_4

    .line 479
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/16 v5, 0x172f

    .line 482
    invoke-virtual {v2, v10, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_2

    .line 483
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 484
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    .line 488
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 489
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/16 v5, 0x95

    .line 492
    invoke-virtual {v2, v10, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_2

    .line 493
    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 495
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v5}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 496
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->getDropDownValue()I

    move-result v5

    goto :goto_1

    .line 498
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result v5

    .line 500
    :goto_1
    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$9;

    invoke-direct {v9, p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    invoke-virtual {v3, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 505
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->isHiddenNetwork()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 506
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->isHiddenNetwork()Z

    move-result v5

    .line 507
    invoke-virtual {v2, v8, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    .line 510
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->isValueModified()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 511
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 512
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->getDropDownValue()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 513
    invoke-virtual {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    .line 515
    :cond_9
    invoke-virtual {v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 516
    invoke-virtual {v3, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 519
    :cond_a
    :goto_3
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OLD CONFIG====>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEW CONFIG====>:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 523
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 527
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->isValueModified()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 528
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 532
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v3

    .line 534
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v3

    if-eq v1, v3, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    .line 535
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 536
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 538
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isSupportWifi6SwitchStateModified()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 539
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 543
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->isValueModified()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 544
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 548
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->isPowerSavingModeModified()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 549
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    .line 552
    :cond_10
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandVZW()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "VZW dialog for save button, reset"

    .line 553
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 555
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_save:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 556
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_config_summary:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->common_continue:I

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Landroid/net/wifi/SoftApConfiguration;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    sget p0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 561
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    .line 563
    :cond_11
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->saveNewConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    :goto_4
    return-void
.end method

.method private getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isOpenWifiApAllowed()Z
    .locals 3

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 374
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpenWifiApAllowed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isWifiApSettingUserModificationAllowed()Z
    .locals 3

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 384
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApSettingsAllowedToChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private synthetic lambda$buildNewSoftApConfiguration$0(Landroid/net/wifi/SoftApConfiguration;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->saveNewConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method private static synthetic lambda$buildNewSoftApConfiguration$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 558
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updateBroadcastChannelState$3()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$updatePassWordVisibility$6()V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->updateState()V

    .line 665
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->updateState()V

    .line 666
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

    return-void
.end method

.method private synthetic lambda$updatePmfState$7()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$updateSecurityType$4()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->updateState()V

    .line 652
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

    return-void
.end method

.method private synthetic lambda$updateSupportWifi6State$5()V
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->updateState()V

    return-void
.end method

.method private synthetic lambda$updateWifiSharingState$2()V
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->updateState()V

    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 261
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "savedInstanceState is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bundle_key_show_advance_option"

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->showAdvancedSettings()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method private saveNewConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->saveValue()V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->saveValue()V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->saveValue()V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->saveValue()V

    .line 572
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->saveDataLimitChange()V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->saveSupportWifi6SwitchState()V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->saveValue()V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->savePowerSavingModeSwitchState()V

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->saveWifiSharingSwitchState()V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setSoftApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 579
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->sendConfigChangedBroadcastToSmartTethering()V

    .line 580
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setCurrentApConfiguration(Landroid/content/Context;)V

    .line 581
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 582
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v0, "Finishing Activity For HotspotReset"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "is_hotspot_rest_happened"

    .line 584
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 585
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 587
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private sendConfigChangedBroadcastToSmartTethering()V
    .locals 2

    .line 600
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "sendConfigChangedBroadcastToSmartTethering() -  Sending Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 603
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showBandSelectionTipsDialog()V
    .locals 3

    .line 432
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->isBandTypeModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 434
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplaySummaryText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->buildNewSoftApConfiguration()V

    :goto_0
    return-void
.end method

.method private showDualApWarningDialog()V
    .locals 3

    .line 399
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "CASE showDUalApWarningDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 401
    sget v1, Lcom/android/settings/R$string;->wifi_ap_dualap_wifi_off_warn:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->positive_button_off:I

    .line 402
    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title:I

    .line 426
    invoke-static {p0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 427
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    .line 618
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    if-eqz v1, :cond_0

    .line 619
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    if-eqz p0, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    if-eqz p0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 4

    .line 179
    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "activity_title"

    const/4 v1, -0x1

    .line 180
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, ":settings:show_fragment_title_resid"

    .line 182
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 184
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFragmentTitleResId() - mIntentTitleResId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_1

    return v0

    .line 188
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getPassPhrase(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 189
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "NEWCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->CONFIG_ERROR_PASSWORD:Ljava/lang/String;

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "passphrase error. Launch for first time configuration change"

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget p0, Lcom/android/settings/R$string;->wifi_ap_first_time_configuration:I

    return p0

    .line 195
    :cond_3
    sget p0, Lcom/android/settings/R$string;->wifi_ap_menu_configure_hotspot:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 222
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 227
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_ap_edit_settings:I

    return p0
.end method

.method public getSecurityType()I
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result v0

    .line 694
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    if-eqz p0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v0

    goto :goto_0

    .line 697
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "mSecurityDropDownController is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method initPreferences()V
    .locals 5

    .line 199
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener-IA;)V

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$CancelButtonClickListener;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$CancelButtonClickListener;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$CancelButtonClickListener-IA;)V

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mCancelSaveBottomView:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "configure_advanced_section_1"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "configure_advanced_section_2"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "configure_advanced_expandable_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    .line 203
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->setPreferenceItemCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;)V

    .line 211
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init SoftAP Config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "network_name_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "password_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isBandSeekBarUxSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mIsBandSeekBarUxSupported:Z

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    return-void
.end method

.method public isValidPassWord()Z
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isAnyOpenSecurityTypeSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->isOpenWifiApAllowed()Z

    move-result p0

    return p0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->isValid()Z

    move-result p0

    .line 363
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidPassPhrase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isValidSsid()Z
    .locals 3

    .line 347
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->isValid()Z

    move-result p0

    .line 348
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidSsid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isWifiSharingEnabled()Z
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 684
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    if-eqz p0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 687
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "mWifiSharingController is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 239
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated() - onConfigurationChanged is being called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver-IA;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v3, "activity_title"

    .line 245
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 247
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated() - mIntentTitleResId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_1

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_menu_configure_hotspot:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 253
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->initPreferences()V

    if-eqz p1, :cond_2

    .line 255
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 312
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 135
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "needresult"

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needresult:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 149
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    .line 150
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 151
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    .line 152
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 153
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    .line 154
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 155
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    .line 156
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 157
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    .line 158
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 159
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    .line 160
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 161
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    .line 162
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 163
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    .line 164
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 165
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    .line 166
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 167
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    .line 168
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 169
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    .line 170
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 171
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    .line 172
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    .line 173
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    .line 174
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 592
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSoftAp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "onKey :: keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->describeContents()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 593
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->resetSoftAp:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 287
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "bundle_key_show_advance_option"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSSIDPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPassWordPreference:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBandSeekBarController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSecurityDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMaxConnectionDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMaxConnectionDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mBroadcastChannelDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mMacAddressTypeDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureMacAddressTypeDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mTurnOffHotspotTimerDropDownController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureTurnOffHotspotTimerDropDownController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHiddenNetworkController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mSupportWifi6Controller:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPmfController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePmfController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mPowerSavingModeController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiSharingController:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureWifiSharingController;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 317
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 318
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->isWifiApSettingUserModificationAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Exiting Screen WifiApSettings not allowed"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_3

    const-string v1, "Exiting Airplane mode enabled"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    const-string v1, "registering broadcast receiver"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 341
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 342
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mWifiApEditReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$WifiApEditReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public showAdvancedSettings()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 633
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateBroadcastChannelState()V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updatePassWordVisibility()V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updatePmfState()V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateSaveButtonEnabling()V
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->isValidSsid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->isValidPassWord()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 672
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mCancelSaveBottomView:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureCancelSaveBottomView;->setEnabledSaveButton(Ljava/lang/Boolean;)V

    return-void
.end method

.method public updateSecurityType()V
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateSupportWifi6State()V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateWifiSharingState()V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
